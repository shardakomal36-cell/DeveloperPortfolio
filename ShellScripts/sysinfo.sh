#!/bin/bash

# Author: Komal Sharda
# Roll Number: 2601730304
# System Information Report

echo "========================================"
echo "       SYSTEM INFORMATION REPORT"
echo "========================================"

echo "Name: Komal Sharda"
echo "Roll Number: 2601730304"
echo "Date: $(date)"
echo ""

echo "---------- CPU INFORMATION ----------"
echo "CPU Model:"
lscpu | grep "Model name" | head -1

echo "CPU Cores:"
lscpu | grep "^CPU(s):" | head -1
echo ""

echo "---------- MEMORY INFORMATION ----------"
free -h
echo ""

echo "---------- TOP 3 PROCESSES BY CPU ----------"
ps aux --sort=-%cpu | head -4
echo ""

echo "========================================"
echo "Report generated successfully."
echo "========================================"
