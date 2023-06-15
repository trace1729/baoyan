#!/bin/bash

# List of URLs
urls=(
  # "baidu.com",
  # "baidu.com",
  # "baidu.com",
)

# Iterate over the URLs
for url in "${urls[@]}"; do
  # Encode the URL
  encoded_url=$(echo "$url" | sed 's/\//%2F/g' | sed 's/:/%3A/g')

  # Make the API request and save the Markdown response
	curl -k --retry 3 "https://urltomarkdown.herokuapp.com/?url=$encoded_url" -o "output_${url//[:\/]/_}.md"
  echo "Converted URL: $url"
done
