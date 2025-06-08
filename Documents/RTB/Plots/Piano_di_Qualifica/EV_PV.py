#EV(Estimated Value)-PV(Planned Value)

import matplotlib.pyplot as plt
import numpy as np

periods = ['Periodo I', 'Periodo II', 'Periodo III', 'Periodo IV', 'Periodo V']
pv = [775, 1550, 2325, 3100, 3875]  # Valore pianificato
ev = [700, 1600, 2400, 3150, 3900]  # Valore guadagnato

plt.figure(figsize=(10,6), facecolor='#f5f5f5')
plt.plot(periods, pv, 'g--o', label='Planned Value (PV)', linewidth=2, markersize=8)
plt.plot(periods, ev, 'b-D', label='Earned Value (EV)', linewidth=2, markersize=8)

# Aree di performance
plt.fill_between(periods, pv, ev, where=np.array(ev)>np.array(pv), 
                color='green', alpha=0.1, label='In anticipo')
plt.fill_between(periods, pv, ev, where=np.array(ev)<=np.array(pv), 
                color='red', alpha=0.1, label='In ritardo')

plt.title('CONFRONTO EV vs PV\nPerformance di Progetto', pad=20, fontweight='bold')
plt.ylabel('Valore (€)', fontweight='bold')
plt.grid(True, linestyle='--', alpha=0.7)
plt.legend(loc='upper left', framealpha=1)

# Linea di riferimento
plt.axhline(y=12700, color='black', linestyle=':', label='BAC')

plt.tight_layout()
plt.savefig('EV_PV.png', dpi=300)
plt.show()