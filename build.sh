#!/bin/sh

CSS_OUTPUT="style.css"
HTML_OUTPUT="index.html"

printf "" > "$CSS_OUTPUT"
printf "" > "$HTML_OUTPUT"

{
  cat styles/variables.css
  cat styles/reset.css
  cat styles/fonts.css
  cat styles/components.css
  cat styles/utilities.css
} >> "$CSS_OUTPUT"

{
	cat components/layout/html-start.html
	cat components/layout/head.html
	cat components/ui/header.html
	cat components/ui/footer.html
	cat components/scripts/toggle-theme.html
	cat components/layout/html-end.html
} >> "$HTML_OUTPUT"

printf "Built %s and %s.\n" "$CSS_OUTPUT" "$HTML_OUTPUT"
