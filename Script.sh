#!/bin/bash

# Write a function (and write its code in the answer) that takes n words as input,
# and returns a sentence in which these words are sorted by the number of vowels.
function create_array {
     arr=()
     IFS=' ' read -r -a array_str<<<$str
     for element in "${array_str[@]}"
          do
          number=$( echo "$element"| grep -o '[aeiouAEIOU]' | wc -l )
          arr+=($number-$element)
     done
}


str="Britain is one of the most highly industrialised countries in the world"
create_array $str

echo "${arr[@]}" | tr ' ' '\n' | sort -rn | tr -d '[0-9]-' | tr '\n' ' '
