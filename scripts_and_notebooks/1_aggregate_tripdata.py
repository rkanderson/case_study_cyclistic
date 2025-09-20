# Pseudocode:
# from directory data_raw/divvytripdata....
#   load all the CSV files, store in an array
# bind all the rows together to form a single table
# (we assume that they all have the same column names)
# Save this aggregated table to
#   data_intermediate/tripdata_2024-2025_v1.csv

import pandas as pd
import glob
import os

# Define input and output paths
input_path = "data_raw/divvytripdata"
output_path = "data_intermediate/tripdata_2024-2025_v1.csv"

# Find all CSV files in the directory
csv_files = glob.glob(os.path.join(input_path, "*.csv"))

# Load all CSVs into a list of DataFrames
df_list = [pd.read_csv(f) for f in csv_files]

# Concatenate into a single DataFrame
combined_df = pd.concat(df_list, ignore_index=True)

# Save the combined DataFrame
combined_df.to_csv(output_path, index=False)

print(f"Combined {len(csv_files)} files into {output_path}")
