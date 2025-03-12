import numpy as np
import matplotlib.pyplot as plt

# Load band structure data
data = np.loadtxt("bands_outputs/bands.dat")

# Extract k-points and energy values
k_points = data[:, 0]
energy = data[:, 1:]

# Plot the band structure
plt.figure(figsize=(8, 6))
for i in range(energy.shape[1]):  # Loop through each band
    plt.plot(k_points, energy[:, i], 'b-')

plt.xlabel("k-points")
plt.ylabel("Energy (eV)")
plt.title("Band Structure of Graphene")
plt.grid(True)
plt.savefig("bands_plot.png")

