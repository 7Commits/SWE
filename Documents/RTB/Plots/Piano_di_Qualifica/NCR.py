#Non-Calculated-Risk
import matplotlib.pyplot as plt
import numpy as np

periods = ['Periodo I', 'Periodo II', 'Periodo III', 'Periodo IV', 'Periodo V']
rischio_ottimo = [0, 0, 0, 0, 0]  # Nessun rischio non calcolato
limite_accettabile = [5, 5, 5, 5, 5]  # Limite superiore

plt.figure(figsize=(10,6), facecolor='#f5f5f5')
plt.plot(periods, rischio_ottimo, 'g-o', label='Valore ottimo (0 rischi)', linewidth=2, markersize=8)
plt.plot(periods, limite_accettabile, 'r--s', label='Limite accettabile', linewidth=2, markersize=8)

plt.fill_between(periods, rischio_ottimo, limite_accettabile, 
                color='green', alpha=0.15, label='Area Sicura')
plt.title('Non-Calculated Risk\nProiezione rischi non identificati', pad=20, fontweight='bold')
plt.ylabel('Numero di rischi', fontweight='bold')
plt.grid(True, linestyle='--', alpha=0.7)
plt.legend(loc='upper right', framealpha=1)

# Annotazioni
for i, (r, l) in enumerate(zip(rischio_ottimo, limite_accettabile)):
    plt.annotate(f'{r}', (i, r), textcoords="offset points", xytext=(0,10), ha='center')
    plt.annotate(f'{l}', (i, l), textcoords="offset points", xytext=(0,-15), ha='center')

plt.tight_layout()
plt.savefig('NCR.png', dpi=300)
plt.show()
