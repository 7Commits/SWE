#EAC(Estimated At Completion)

import matplotlib.pyplot as plt

periods = ['Periodo I', 'Periodo II', 'Periodo III', 'Periodo IV', 'Periodo V']
eac = [13000, 12500, 12900, 12800, 12794.52]  # Dati calcolati
bac = [12700]*5
limite = [12600]*5

plt.figure(figsize=(10,6), facecolor='#f5f5f5')
plt.plot(periods, eac, 'b-o', label='EAC', linewidth=2, markersize=8)
plt.plot(periods, bac, 'g--', label='BAC (valore ottimo)', linewidth=2)
plt.plot(periods, limite, 'r:', label='Limite accettabile', linewidth=2)

# Annotazioni
for i, val in enumerate(eac):
    plt.annotate(f'€{val:,.0f}', (i, val), textcoords="offset points", xytext=(0,10), ha='center')

plt.title('ANALISI EAC (Estimated At Completion)\nBudget Totale: €12,700', pad=20, fontweight='bold')
plt.ylabel('Costo (€)', fontweight='bold')
plt.ylim(12000, 13250)
plt.grid(True, linestyle='--', alpha=0.7)
plt.legend(loc='upper right', framealpha=1)
plt.tight_layout()
plt.savefig('EAC.png', dpi=300)
plt.show()