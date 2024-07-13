#!/bin/bash

# Recursive function to calculate nCr
nCr_recursive() {
    local n="$1"
    local r="$2"
    if ((r > n)); then
        echo 0
    elif ((r == 0 || r == n)); then
        echo 1
    else
        local prev1=$(nCr_recursive "$((n - 1))" "$((r - 1))")
        local prev2=$(nCr_recursive "$((n - 1))" "$r")
        echo $((prev1 + prev2))
    fi
}

# Example usage
n=5
r=2
result_recursive=$(nCr_recursive "$n" "$r")
echo "C($n, $r) = $result_recursive"
