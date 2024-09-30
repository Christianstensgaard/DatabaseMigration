#!/bin/bash
script_name=""
file_list=()

while getopts t:f: flag
do
    case "${flag}" in
        t) script_name=${OPTARG};;
        f) file_list+=("${OPTARG}");;
        *) echo "Usage: $0 -t script_name -f file1 -f file2 [...]"
           exit 1;;
    esac
done

if [ -z "$script_name" ]; then
    echo "Error: No script name provided."
    echo "Usage: $0 -t script_name -f file1 -f file2 [...]"
    exit 1
fi

sql_file="${script_name}.sql"

# Check if the SQL file exists, and if so, clear its contents
if [ -f "$sql_file" ]; then
    echo "Clearing the contents of $sql_file..."
    > "$sql_file"  # This command clears the file
else
    echo "-- SQL file for ${script_name} created" > "$sql_file"
    echo "File $sql_file did not exist, so it has been created."
fi

for file_name in "${file_list[@]}"; do
    if [ -f "${file_name}.sql" ]; then
        echo "Appending content from ${file_name}.sql to ${sql_file}..."
        cat "${file_name}.sql" >> "$sql_file"
        echo -e "\n" >> "$sql_file"
    else
        echo "Error: ${file_name}.sql file not found."
        exit 1
    fi
done

echo "Rollback SQL content appended to: $sql_file"
