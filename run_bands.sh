#!/bin/bash

input_file="qe_file/pw.graphene.bands.in"
output_dir="bands_outputs"

mkdir -p $output_dir

output_file="$output_dir/bands.out"

# Run Quantum Espresso band structure calculation
pw.x < $input_file > $output_file

echo "Band structure calculation completed. Results are in $output_dir/"

