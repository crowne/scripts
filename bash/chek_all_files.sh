#!/bin/bash

declare -a schemas=("customer"
                    "account"
                    "meta"
                    "log")

files_found=false
schemadump_dir="/var/upload/schema_dumps"

while [[ "$files_found" == false ]]; do

    files_found=true

    for i in "${schemas[@]}"
    do
        dump_file="${schemadump_dir}/${i}.dmp.tgz"
        if [ -f $dump_file ]; then
            echo "Found : ${dump_file}"
        else
            files_found=false
            echo "Not found : ${dump_file}"
        fi
    done

    if [[ "$files_found" == false ]]; then
        echo "Some files not found, sleep 5 secs"
        sleep 5;
    fi
done

echo "All data files found in ${schemadump_dir}"
