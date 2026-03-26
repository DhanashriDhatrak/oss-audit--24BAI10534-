#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Dhanashri Dhatrak
# Course: Open Source Software

echo "=========================================="
echo "   OPEN SOURCE MANIFESTO GENERATOR"
echo "=========================================="
echo "Answer three questions to generate your manifesto."
echo

# Requirement: Use 'read' for user input [cite: 188]
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Requirement: Use 'date' and command substitution [cite: 188, 197]
DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Requirement: Compose a paragraph and write to file [cite: 186, 199, 200]
echo "--- MY OPEN SOURCE MANIFESTO ---" > $OUTPUT
echo "Generated on: $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "As a developer, I believe that tools like $TOOL empower the world." >> $OUTPUT
echo "To me, software freedom is defined by '$FREEDOM'." >> $OUTPUT
echo "I commit to contributing to the community by building $BUILD for everyone." >> $OUTPUT

echo "------------------------------------------"
echo "Success! Your manifesto has been saved to $OUTPUT"
echo "------------------------------------------"

# Display the result [cite: 202]
cat $OUTPUT
