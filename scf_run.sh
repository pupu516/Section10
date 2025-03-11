#!/bin/bash

# Define variables
ecut_values=(10 15 20 25 30 35 40 60)
pseudo_dir="/root/Desktop/pseudo"
input_template="qe_file/pw.graphene.scf.in"  # Updated path
output_dir="scf_outputs"

# Create output directory if not exists
mkdir -p $output_dir

# Loop through different ecutwfc values
for ecut in "${ecut_values[@]}"; do
    # Create a new input file
    input_file="$output_dir/pw_$ecut.in"
    output_file="$output_dir/pw_$ecut.out"

    # Modify ecutwfc in the input file
    sed "s/ecutwfc = [0-9]\+/ecutwfc = $ecut/" $input_template > $input_file

    # Run SCF calculation
    pw.x < $input_file > $output_file
done

echo "SCF calculations completed. Results are in $output_dir/"

