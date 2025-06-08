#Indice Gulpease 
import matplotlib.pyplot as plt

periods = ['Periodo I', 'Periodo II', 'Periodo III', 'Periodo IV', 'Periodo V']

# Dati per ciascun documento 
analisi_requisiti = [55, 62, 68, 72, 75]
norme_progetto = [70, 73, 76, 78, 80]
piano_progetto = [60, 58, 65, 70, 70]
glossario = [75, 78, 80, 82, 85]
piano_qualifica = [65, 70, 72, 69, 68]

plt.figure(figsize=(12,7), facecolor='#f5f5f5')

# Plot per ciascun documento
plt.plot(periods, analisi_requisiti, 'b-o', label='Analisi dei Requisiti', linewidth=2, markersize=8)
plt.plot(periods, norme_progetto, 'g-^', label='Norme di Progetto', linewidth=2, markersize=8)
plt.plot(periods, piano_progetto, 'r-s', label='Piano di Progetto', linewidth=2, markersize=8)
plt.plot(periods, glossario, 'm-D', label='Glossario', linewidth=2, markersize=8)
plt.plot(periods, piano_qualifica, 'c-*', label='Piano di Qualifica', linewidth=2, markersize=10)

# Linee di riferimento
plt.axhline(80, color='blue', linestyle='--', linewidth=1.5, alpha=0.7, label='Valore ottimo (80)')
plt.axhline(40, color='red', linestyle='--', linewidth=1.5, alpha=0.7, label='Limite inferiore (40)')

# Aree di leggibilità
plt.axhspan(0, 40, color='red', alpha=0.05)
plt.axhspan(40, 60, color='orange', alpha=0.05)
plt.axhspan(60, 80, color='green', alpha=0.05)
plt.axhspan(80, 100, color='blue', alpha=0.05)

plt.title('INDICE GULPEASE\nLeggibilità Documentazione', pad=20, fontweight='bold')
plt.ylabel('Punteggio (0-100)', fontweight='bold')
plt.ylim(0, 100)
plt.grid(True, linestyle='--', alpha=0.5)

# Legenda unica in basso a destra con 2 colonne
plt.legend(loc='lower right', ncol=2, framealpha=1)

# Aggiunta valori sui punti
for i in range(len(periods)):
    plt.annotate(f'{analisi_requisiti[i]}', (i, analisi_requisiti[i]), textcoords="offset points", xytext=(0,5), ha='center', fontsize=8)
    plt.annotate(f'{norme_progetto[i]}', (i, norme_progetto[i]), textcoords="offset points", xytext=(0,5), ha='center', fontsize=8)
    plt.annotate(f'{piano_progetto[i]}', (i, piano_progetto[i]), textcoords="offset points", xytext=(0,5), ha='center', fontsize=8)
    plt.annotate(f'{glossario[i]}', (i, glossario[i]), textcoords="offset points", xytext=(0,5), ha='center', fontsize=8)
    plt.annotate(f'{piano_qualifica[i]}', (i, piano_qualifica[i]), textcoords="offset points", xytext=(0,5), ha='center', fontsize=8)

plt.tight_layout()
plt.savefig('Gulpease.png', dpi=300)
plt.show()
