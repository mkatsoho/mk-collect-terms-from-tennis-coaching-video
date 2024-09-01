#! /usr/bin/env bash

Folder=${1:-"./data-collected/Teaching Anna from Scratch"}
Pwd=$(dirname "$(realpath "$0")")

while IFS= read -r -d '' file
do
  (( count++ ))
  echo "$file"
  cat "$file" | "$Pwd/mk-rm-html-tags.sh" > "$file.txt"
done <   <(find "$Folder" -name '*.ttml' -print0)
echo "Batch processing $count files"