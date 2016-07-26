#!/bin/bash

if [ -z "$1" ]; then
	echo "[*] NMAP Poodle Scan"
	echo "[*] Usage	: $0 IP Address or Domain "
	exit 0
fi

nmap -sV --version-light --script ssl-poodle -p 443 $1 >> $1.txt
