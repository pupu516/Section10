#!/bin/bash

output_dir="scf_outputs"
energy_file="energy.dat"

# Clear previous energy file if exists
> $energy_file

# Loop through all output files and extract energy
for file in $output_dir/pw_*.out; do
    ecut=$(echo $file | grep -o '[0-9]\+')
    energy=$(grep '!' $file | awk '{print $5}')
    
    if [[ ! -z $energy ]]; then
        echo "$ecut $energy" >> $energy_file
    fi
done

echo "Energy extraction complete. Data saved in $energy_file."

