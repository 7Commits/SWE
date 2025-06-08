#SC(Schedule Variance) - CV(Cost Variance)
# CV_SV.py
import numpy as np
import matplotlib.pyplot as plt

periods = ['Periodo I', 'Periodo II', 'Periodo III', 'Periodo IV', 'Periodo V']
cv = [0, 0, 0, 0, 0]  # CV = EV - AC
sv = [-75, 150, 75, 50, -25]         # SV = EV - PV

plt.figure(figsize=(10,6), facecolor='#f5f5f5')
bar_width = 0.35
index = np.arange(len(periods))

plt.bar(index, cv, bar_width, color='#d62728', label='Cost Variance (CV)')
plt.bar(index + bar_width, sv, bar_width, color='#2ca02c', label='Schedule Variance (SV)')

plt.axhline(0, color='black', linewidth=0.8)
plt.title('ANALISI VARIANZE (CV & SV)\nValori Negativi = Sforamento', pad=20, fontweight='bold')
plt.ylabel('Varianza (€)', fontweight='bold')
plt.xticks(index + bar_width/2, periods)
plt.grid(axis='y', linestyle='--', alpha=0.7)
plt.legend(loc='upper left', framealpha=1)

# Etichette valori
for i in range(len(periods)):
    plt.text(i, cv[i], f'{cv[i]}€', ha='center', va='bottom' if cv[i]>0 else 'top')
    plt.text(i+bar_width, sv[i], f'{sv[i]}€', ha='center', va='bottom' if sv[i]>0 else 'top')

plt.tight_layout()
plt.savefig('CV_SV.png', dpi=300)
plt.show()