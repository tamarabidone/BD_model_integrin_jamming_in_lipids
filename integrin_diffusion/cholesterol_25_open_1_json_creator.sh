#!/bin/bash

# s is the relative path to json files without the number and ".json" extension
s="cholesterol_25_open_1_jsons/cholesterol_25_open_1_"
# r is the relative path to str files without the number and ".str" extension (as seen from json location)
r="../cholesterol_25_open_1_strs/cholesterol_25_open_1_"
# x is the relative path to xyz files without the number and ".xyz"/".rst" extension (as seen from json location)
x="../cholesterol_25_open_1_xyzs/cholesterol_25_open_1_"

# max i determines how many files are created
for i in {1..100};

do
echo { > "$s""$i".json
echo "    "\"input_str_filename\": \""$r"{}.str\", >> "$s""$i".json
echo "    "\"output_xyz_filename\": \""$x"{}.xyz\", >> "$s""$i".json
echo "    "\"output_rst_filename\": \""$x"{}.rst\", >> "$s""$i".json
echo "    "\"immobile_labels\": [\"CHO\"], >> "$s""$i".json
echo "    "\"filename_range\": ["$i", "$((i+1))"], >> "$s""$i".json
echo "    "\"seed\": "$((103*i))", >> "$s""$i".json
echo "    "\"xyz_write_freq\": 1000, >> "$s""$i".json
echo "    "\"rst_write_freq\": 100000, >> "$s""$i".json
echo "    "\"box_length\": 500.0, >> "$s""$i".json
echo "    "\"dt\": 0.05, >> "$s""$i".json
echo "    "\"number_of_steps\": 200000000, >> "$s""$i".json
echo "    "\"hydrodynamics\": \"nohi\", >> "$s""$i".json
echo "    "\"propagation_scheme\": \"ermak\", >> "$s""$i".json
echo "    "\"T\": 293.15, >> "$s""$i".json
echo "    "\"viscosity\": 0.01005, >> "$s""$i".json
echo "    "\"dimensions\": 2, >> "$s""$i".json
echo "    "\"external_force\": [0.0, 0.0], >> "$s""$i".json
echo "    "\"energy_unit\": \"kcal/mol\", >> "$s""$i".json
echo "    "\"progress_bar\": false >> "$s""$i".json
echo } >> "$s""$i".json

done