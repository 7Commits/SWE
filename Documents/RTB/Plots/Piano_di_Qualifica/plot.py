import matplotlib.pyplot as plt

# Dati
periods = ['Periodo I', 'Periodo II', 'Periodo III', 'Periodo IV', 'Periodo V']
eac = [1300, 1250, 1290, 1280, 1280]
bac = [1270]*5
limite = [1260]*5

# Creazione grafico
plt.figure(figsize=(10,6))
plt.plot(periods, eac, 'b-o', label='EAC', linewidth=2)
plt.plot(periods, bac, 'g--', label='BAC (valore ottimo)', linewidth=2)
plt.plot(periods, limite, 'r:', label='Limite accettabile superiore', linewidth=2)

plt.title('Ggiubicazione appalto', pad=20)
plt.ylabel('Costo (€)')
plt.ylim(1200, 1300)
plt.grid(True, which='both', linestyle='--', linewidth=0.5)
plt.legend(loc='upper right')
plt.show()