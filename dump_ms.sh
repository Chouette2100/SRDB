#!/bin/bash
# This script dumps the current state of the MySQL database to a file.
# Usage: ./dump_ms.sh [output_file.sql]

# dump 3 tables aht10, scd41, bme280 from the database showroom!

for table in aht10 scd41 bme280; do
    dump_file=$table.sql
    rm -f "$dump_file"  # Remove the file if it exists
    echo "Dumping table: $table to $dump_file"
    mysqldump -u root -p -P 9909 -h 127.0.0.1 showroom "$table" > "$dump_file"
done