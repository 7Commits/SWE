#RSI(Requirements Stability Index)

import matplotlib.pyplot as plt
import numpy as np

periods = ['Periodo I', 'Periodo II', 'Periodo III', 'Periodo IV', 'Periodo V']
rsi = [0.85, 0.90, 0.92, 0.95, 0.98]  # Valori 

plt.figure(figsize=(10,6), facecolor='#f5f5f5')
plt.plot(periods, rsi, 'c-s', linewidth=2, markersize=8)

plt.axhline(y=1, color='green', linestyle='--', label='Target Ideale')
plt.fill_between(periods, rsi, 1, where=np.array(rsi)<=1, color='green', alpha=0.1)

plt.title('REQUIREMENT STABILITY INDEX (RSI)\nStabilità Requisiti', pad=20, fontweight='bold')
plt.ylabel('Indice Stabilità', fontweight='bold')
plt.ylim(0.8, 1.05)
plt.grid(True, linestyle='--', alpha=0.7)
plt.legend(loc='lower right', framealpha=1)

# Annotazioni
for i, val in enumerate(rsi):
    plt.annotate(f'{val:.2f}', (i, val), textcoords="offset points", xytext=(0,10), ha='center')

plt.tight_layout()
plt.savefig('RSI.png', dpi=300)
plt.show()
