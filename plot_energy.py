import numpy as np
import matplotlib.pyplot as plt

# Load data
ecut, energy = np.loadtxt("energy.dat", unpack=True)

# Plot energy vs. ecutwfc
plt.figure(figsize=(8, 5))
plt.plot(ecut, energy, marker='o', linestyle='-')
plt.xlabel("Wavefunction Cutoff Energy (ecutwfc)")
plt.ylabel("Total Energy (Ry)")
plt.title("Energy Convergence with ecutwfc")
plt.grid(True)
plt.savefig("energy_plot.png")

