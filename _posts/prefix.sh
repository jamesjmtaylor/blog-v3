for file in *; do
    if [[ -f "$file" ]]; then
        date_prefix=$(grep -m 1 'date' "$file" | cut -d ' ' -f 2 | sed 's/-//g' | cut -c1-10)
        if [[ ! "$file" =~ ^$date_prefix ]]; then
            mv "$file" "$date_prefix-$file"
        fi
    fi
done