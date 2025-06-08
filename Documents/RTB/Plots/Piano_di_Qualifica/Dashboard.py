import matplotlib.pyplot as plt
import numpy as np
from matplotlib.gridspec import GridSpec

# Configurazione stilistica
plt.style.use('seaborn-v0_8-whitegrid')
colors = {
    'PV': '#4C72B0',
    'EV': '#55A868',
    'AC': '#C44E52',
    'BAC': '#000000',
    'threshold': '#FF7F0E'
}

# --- INIZIO SEZIONE MODIFICABILE ---
data = {
    "periodi": ["Periodo I", "Periodo II", "Periodo III", "Periodo IV", "Periodo V"],
    "PV": [775, 1550, 2325, 3100, 3875],       # Valore pianificato cumulativo
    "EV": [700, 1600, 2400, 3150, 3900],        # Valore guadagnato (modificami!)
    "AC": [800, 1755, 2530, 3195, 3945],        # Costo effettivo cumulativo
    "BAC": 12700,                                # Budget totale
    "CPI_threshold": 0.95,                       # Soglia allarme costi
    "SPI_threshold": 0.90                        # Soglia allarme schedulazione
}
# --- FINE SEZIONE MODIFICABILE ---

def calculate_indicators(data):
    indicators = {
        # Varianze
        "CV": [ev - ac for ev, ac in zip(data["EV"], data["AC"])],
        "SV": [ev - pv for ev, pv in zip(data["EV"], data["PV"])],
        
        # Indici di performance
        "CPI": [ev / ac if ac != 0 else 0 for ev, ac in zip(data["EV"], data["AC"])],
        "SPI": [ev / pv if pv != 0 else 0 for ev, pv in zip(data["EV"], data["PV"])]
    }
    
    # Aggiungi gli indicatori che dipendono da CPI dopo la sua creazione
    indicators["EAC"] = [data["BAC"] / cpi if cpi != 0 else np.inf for cpi in indicators["CPI"]]
    indicators["ETC"] = [eac - ac for eac, ac in zip(indicators["EAC"], data["AC"])]
    indicators["VAC"] = [data["BAC"] - eac for eac in indicators["EAC"]]
    indicators["PC"] = [ev / data["BAC"] * 100 for ev in data["EV"]]
    indicators["PS"] = [pv / data["BAC"] * 100 for pv in data["PV"]]
    
    return indicators

indicators = calculate_indicators(data)

def create_evm_dashboard(data, indicators):
    fig = plt.figure(figsize=(18, 12), facecolor='#F5F5F5')
    fig.suptitle('EARNED VALUE MANAGEMENT DASHBOARD\nPreventivo Totale: €12,700', 
                 fontsize=16, y=0.98, fontweight='bold')
    
    gs = GridSpec(3, 3, figure=fig, hspace=0.4, wspace=0.3)
    
    # --------------------------------------------
    # GRAFICO 1: Trend Cumulativo
    # --------------------------------------------
    ax1 = fig.add_subplot(gs[0, :])
    ax1.plot(data["periodi"], data["PV"], '--', color=colors['PV'], marker='o', label='PV (Pianificato)')
    ax1.plot(data["periodi"], data["EV"], '-', color=colors['EV'], marker='^', label='EV (Guadagnato)')
    ax1.plot(data["periodi"], data["AC"], '-', color=colors['AC'], marker='s', label='AC (Effettivo)')
    ax1.axhline(y=data["BAC"], color=colors['BAC'], linestyle=':', label='BAC')
    
    # Annotazioni valori finali
    for metric, color in zip(['PV', 'EV', 'AC'], [colors['PV'], colors['EV'], colors['AC']]):
        last_val = data[metric][-1]
        ax1.annotate(f'€{last_val:,}', 
                    xy=(len(data["periodi"])-1, last_val),
                    xytext=(10, 0), textcoords='offset points',
                    color=color, fontweight='bold')
    
    ax1.set_title('TREND CUMULATIVO', pad=20)
    ax1.set_ylabel('Euro (€)')
    ax1.legend(loc='upper left')
    ax1.grid(True, which='both', linestyle='--', linewidth=0.5)
    
    # --------------------------------------------
    # GRAFICO 2: Indici di Performance
    # --------------------------------------------
    ax2 = fig.add_subplot(gs[1, 0])
    bars = ax2.bar(data["periodi"], indicators["CPI"], 
                  color=np.where(np.array(indicators["CPI"]) < data["CPI_threshold"], 'r', 'g'))
    ax2.axhline(y=1, color=colors['threshold'], linestyle='--')
    ax2.axhline(y=data["CPI_threshold"], color='r', linestyle=':', alpha=0.5)
    ax2.set_title('COST PERFORMANCE INDEX (CPI)')
    ax2.set_ylabel('Valore')
    
    # --------------------------------------------
    # GRAFICO 3: Schedule Performance
    # --------------------------------------------
    ax3 = fig.add_subplot(gs[1, 1])
    bars = ax3.bar(data["periodi"], indicators["SPI"], 
                  color=np.where(np.array(indicators["SPI"]) < data["SPI_threshold"], 'r', 'g'))
    ax3.axhline(y=1, color=colors['threshold'], linestyle='--')
    ax3.axhline(y=data["SPI_threshold"], color='r', linestyle=':', alpha=0.5)
    ax3.set_title('SCHEDULE PERFORMANCE INDEX (SPI)')
    
    # --------------------------------------------
    # GRAFICO 4: Forecast Analysis
    # --------------------------------------------
    ax4 = fig.add_subplot(gs[1, 2])
    ax4.plot(data["periodi"], [data["BAC"]]*5, '--', color=colors['BAC'], label='BAC')
    ax4.plot(data["periodi"], indicators["EAC"], '-o', color='#D62728', label='EAC')
    ax4.fill_between(data["periodi"], [data["BAC"]]*5, indicators["EAC"], 
                    where=np.array(indicators["EAC"]) > data["BAC"],
                    color='red', alpha=0.1, interpolate=True)
    ax4.fill_between(data["periodi"], [data["BAC"]]*5, indicators["EAC"], 
                    where=np.array(indicators["EAC"]) <= data["BAC"],
                    color='green', alpha=0.1, interpolate=True)
    
    # Annotazione finale
    ax4.annotate(f"EAC finale: €{indicators['EAC'][-1]:,.2f}", 
                xy=(len(data["periodi"])-1, indicators["EAC"][-1]),
                xytext=(10, 10), textcoords='offset points',
                bbox=dict(boxstyle='round,pad=0.5', fc='white', alpha=0.8))
    
    ax4.set_title('FORECAST ANALYSIS (BAC vs EAC)')
    ax4.legend()
    
    # --------------------------------------------
    # GRAFICO 5: Varianze
    # --------------------------------------------
    ax5 = fig.add_subplot(gs[2, 0])
    ax5.bar(data["periodi"], indicators["CV"], 
           color=np.where(np.array(indicators["CV"]) > 0, 'g', 'r'))
    ax5.axhline(y=0, color='k', linestyle='-')
    ax5.set_title('COST VARIANCE (CV = EV - AC)')
    ax5.set_ylabel('Euro (€)')
    
    # --------------------------------------------
    # GRAFICO 6: Schedule Variance
    # --------------------------------------------
    ax6 = fig.add_subplot(gs[2, 1])
    ax6.bar(data["periodi"], indicators["SV"], 
           color=np.where(np.array(indicators["SV"]) > 0, 'g', 'r'))
    ax6.axhline(y=0, color='k', linestyle='-')
    ax6.set_title('SCHEDULE VARIANCE (SV = EV - PV)')
    
    # --------------------------------------------
    # GRAFICO 7: Percentuale Completamento
    # --------------------------------------------
    ax7 = fig.add_subplot(gs[2, 2])
    ax7.plot(data["periodi"], indicators["PC"], '-o', color=colors['EV'], label='Effettivo (%)')
    ax7.plot(data["periodi"], indicators["PS"], '--', color=colors['PV'], label='Pianificato (%)')
    ax7.set_title('PERCENTUALE COMPLETAMENTO')
    ax7.set_ylabel('Percentuale (%)')
    ax7.legend()
    
    plt.tight_layout()
    plt.savefig('EVM_Dashboard.png', dpi=300, bbox_inches='tight')
    plt.show()

create_evm_dashboard(data, indicators)