#! /bin/bash

title_slug=$(echo "$1" | awk -F'/' '{print $(NF-2)}')
title=$(echo "$title_slug" | tr '-' ' ' | awk '{for (i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) substr($i,2)}1')
filename="problems/$2. $title_slug.md"

printf "# $title\n\n" >"$filename"
printf "**Difficulty:**\n\n" >>"$filename"
printf "**Topics:**\n\n" >>"$filename"
printf "**Bookmark:**\n\n" >>"$filename"

echo "File '$filename' created successfully."
