#!/bin/bash

input_template="qe_file/pp.in"
output_dir="pp_outputs"

mkdir -p $output_dir

# Set kband values
kband1=10   # Adjust this based on the valence band
kband2=12   # Adjust this based on the conduction band

# Modify kband values in pp.in
input_file="$output_dir/pp_kbands.in"
output_file="$output_dir/pp_kbands.out"

sed -e "s/kband(1) = [0-9]\+/kband(1) = $kband1/" \
    -e "s/kband(2) = [0-9]\+/kband(2) = $kband2/" $input_template > $input_file

# Run pp.x calculation
pp.x < $input_file > $output_file

echo "KS-Orbitals calculation completed. Results are in $output_dir/"

