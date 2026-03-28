#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Ayush Singh

# Concept Demonstration: Aliases
# If we wanted to make running this script easier in the future, 
# we could add an alias to our ~/.bashrc file like this:
# alias manifesto='./script5.sh'

echo "================================================="
echo "       Open Source Manifesto Generator"
echo "================================================="
echo "Answer three questions to generate your manifesto."
echo ""

# Using 'read' to gather interactive user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Gathering the current date
DATE=$(date +'%d %B %Y')

# Defining the output file name dynamically based on the current user
OUTPUT="manifesto_$(whoami).txt"

echo ""
echo "Generating your manifesto..."
sleep 1

# Using '>' to overwrite/create the file, and '>>' to append to it.
# String concatenation is used to weave the variables into the paragraph.
echo "-------------------------------------------------" > "$OUTPUT"
echo "          MY OPEN SOURCE MANIFESTO" >> "$OUTPUT"
echo "          Declared on: $DATE" >> "$OUTPUT"
echo "-------------------------------------------------" >> "$OUTPUT"
echo "I believe that software should empower people. Every day, I rely on tools like $TOOL to learn, build, and grow." >> "$OUTPUT"
echo "To me, the core of the open-source philosophy boils down to a single concept: $FREEDOM." >> "$OUTPUT"
echo "By keeping knowledge open, we stand on the shoulders of giants. If I could contribute to this ecosystem, I would build $BUILD and share it freely with the world, ensuring that the next generation of developers has the same opportunities I did." >> "$OUTPUT"
echo "-------------------------------------------------" >> "$OUTPUT"

echo "[SUCCESS] Manifesto successfully saved to $OUTPUT"
echo ""
echo "Here is what it says:"
echo ""

# Displaying the final file contents
cat "$OUTPUT"
echo "================================================="
