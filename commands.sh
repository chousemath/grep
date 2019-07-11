#!/bin/bash

# General formula
$ grep option search_pattern file_path

# Searching a pattern from a single file
$ grep fun s1_e1.txt
$ grep Yes s1_e1.txt

# Search a pattern in multiple files
$ grep funny s1_e1.txt s1_e2.txt s1_e3.txt
$ grep why s1_e1.txt s1_e2.txt s1_e3.txt
$ grep "thank you" s1_e1.txt s1_e2.txt s1_e3.txt

# Search a pattern in any files with the .txt extension
$ grep funny *.txt*

# Redirecting output to a file
$ grep funny *.txt* > occurrences_of_funny.txt

# Case insensitive search for a pattern
$ grep -i yes *.txt* > occurrences_of_yes.txt

# Searching a pattern in sub-directories
$ grep -i always s1/*.txt* > occurrences_of_always.txt

# Display line number for search pattern
$ grep -i -n forever s1/*.txt* > occurrences_of_forever.txt

# Print lines starting with the pattern
# Get all of Ross' lines in Season 1 of Friends
$ grep -n ^Ross s1/*.txt* > occurrences_of_ross.txt
$ grep -n ^Monica s1/*.txt* > occurrences_of_monica.txt

# Print lines ending with the pattern
$ grep -n ?$ s1/*.txt* > occurrences_of_questions.txt

# Print all lines excluding the matched ones
$ grep -i -v chandler s1/*.txt* > occurrences_without_chandler.txt