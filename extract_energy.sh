#!/bin/bash

output_dir="bands_outputs"
bands_file="$output_dir/bands.dat"

# Extract band structure data from QE output
grep -A 100 "End of self-consistent calculation" $output_dir/bands.out > $bands_file

echo "Band structure data extracted to $bands_file."

