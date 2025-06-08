#AC(Actual Cost)-ETC(Estimated To Completion)

import matplotlib.pyplot as plt
import numpy as np

periods = ['Periodo I', 'Periodo II', 'Periodo III', 'Periodo IV', 'Periodo V']
ac = [800, 1755, 2530, 3195, 3945]  # Dati effettivi
etc = [11900, 11045, 10270, 9605, 8855]  # ETC = EAC - AC

plt.figure(figsize=(10,6), facecolor='#f5f5f5')
plt.plot(periods, ac, 'r-s', label='Actual Cost (AC)', linewidth=2, markersize=8)
plt.plot(periods, etc, 'b--D', label='Estimated To Complete (ETC)', linewidth=2, markersize=8)

plt.fill_between(periods, ac, etc, where=np.array(etc)>np.array(ac), 
                color='red', alpha=0.15, label='Area Rischio')
plt.title('CONFRONTO ETC vs AC\nCosti Residui vs Effettivi', pad=20, fontweight='bold')
plt.ylabel('Costo (€)', fontweight='bold')
plt.grid(True, linestyle='--', alpha=0.7)
plt.legend(loc='upper right', framealpha=1)

# Annotazioni
for i, (a, e) in enumerate(zip(ac, etc)):
    plt.annotate(f'€{a:,}', (i, a), textcoords="offset points", xytext=(0,10), ha='center')
    plt.annotate(f'€{e:,}', (i, e), textcoords="offset points", xytext=(0,-15), ha='center')

plt.tight_layout()
plt.savefig('ETC_AC.png', dpi=300)
plt.show()