#!/bin/bash

for i in {1..5}; do
    adduser "$1$i" --home "/home/$2$i"
done
