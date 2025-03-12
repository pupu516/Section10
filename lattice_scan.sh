#!/bin/bash

output_dir="lattice_outputs"
input_template="qe_file/pw.graphene.scf.in"
pseudo_dir="/root/Desktop/pseudo"
b_values=$(seq 0.4 0.03 0.7)  # Generate values from 0.4 to 0.7 with step 0.03

mkdir -p $output_dir

# Loop through b-axis values
for b in $b_values; do
    input_file="$output_dir/pw_b$b.in"
    output_file="$output_dir/pw_b$b.out"

    # Modify the b-axis lattice constant in the input file
    sed "s/celldm(2) = [0-9.]\+/celldm(2) = $b/" $input_template > $input_file

    # Run SCF calculation
    pw.x < $input_file > $output_file
done

echo "Lattice SCF calculations completed. Results are in $output_dir/"

