#!/bin/bash
# upd.sh — download all external web resources for offline use

# create web-resources folder
mkdir -p web-resources/{js,css,fonts,images}

echo "Downloading jQuery..."
wget -q -O web-resources/js/jquery.min.js \
    https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js

echo "Downloading jQuery UI JS..."
wget -q -O web-resources/js/jquery-ui.min.js \
    https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js

echo "Downloading jQuery UI CSS..."
wget -q -O web-resources/css/jquery-ui.css \
    https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css

echo "Downloading Google Font (Ubuntu)..."
# Google Fonts are tricky because they can reference multiple CSS & fonts
# This downloads the main CSS; you can parse & download fonts manually if needed
wget -q -O web-resources/css/ubuntu.css \
    "https://fonts.googleapis.com/css2?family=Ubuntu:wght@500&display=swap"

echo "Downloading favicon..."
wget -q -O web-resources/images/favicon.png \
    "https://github.com/morxe0/ralsei-save-editor-/blob/731717734c29aed2934b9c112f87261bc7da806b/favicon.png"

echo "All files downloaded to ./web-resources"