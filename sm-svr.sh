#!/bin/sh

# Variables
title="Media Player"
index="index.html"

echo "<!DOCTYPE html>
<html>
<head>
<title>$title</title>
</head>
<body>" > index.html
scriptName=`basename $0`
echo "$( find * -type f )" | while read file; do
[ $file = $scriptName ] || [ $file = $index ] || echo "<p><a href=\"$file\"> $file </a></p>" >> index.html
done
echo "</body>
</html>" >> index.html
