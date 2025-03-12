import numpy as np
import matplotlib.pyplot as plt

# Load data
b_values, energy = np.loadtxt("lattice_energy.dat", unpack=True)

# Plot Energy vs. Lattice Constant
plt.figure(figsize=(8, 5))
plt.plot(b_values, energy, marker='o', linestyle='-')
plt.xlabel("Lattice Constant b (alat units)")
plt.ylabel("Total Energy (Ry)")
plt.title("Energy vs. Lattice Constant")
plt.grid(True)
plt.savefig("lattice_plot.png")

