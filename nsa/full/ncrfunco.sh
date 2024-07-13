#!/bin/bash

# Function to calculate factorial
factorial() {
    local n="$1"
    local res=1
    for ((i = 2; i <= n; i++)); do
        res=$((res * i))
    done
    echo "$res"
}

# Function to calculate nCr
nCr() {
    local n="$1"
    local r="$2"
    local num=$(factorial "$n")
    local den1=$(factorial "$r")
    local den2=$(factorial "$((n - r))")
    echo $((num / (den1 * den2)))
}

# Example usage
n=5
r=2
result=$(nCr "$n" "$r")
echo "C($n, $r) = $result"
