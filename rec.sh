#!/bin/bash

# Check if a domain is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

# Store the domain
url=$1

# Create necessary directories if they don't exist
mkdir -p "$url/recon"

# Step 1: List subdomains using multiple tools
echo "[+] Finding subdomains [+] "

# Subfinder
subfinder -d "$url" -silent | tee "$url/recon/subfinder.txt"

# Assetfinder
assetfinder --subs-only "$url" | tee "$url/recon/assetfinder.txt"


# Combine all results, remove duplicates, and save to final.txt
echo "[+] Combining results and removing duplicates...[+] "
cat "$url/recon/"*.txt | sort -u | tee "$url/recon/final.txt"

# Checking which subdomains are alive using httprobe
echo "[+] Checking for live subdomains...[+] "
cat "$url/recon/final.txt" | httprobe > "$url/recon/alive.txt"
echo "**Results in /recon/alive.txt**"

echo "[+] Live subdomains saved to $url/recon/alive.txt"

# Check for open ports on alive subdomains
echo "[+] Checking for open ports... [+] "
nmap -iL $url/recon/alive.txt -o $url/recon/ports/nmap.txt
echo "**Results in /recon/nmap.txt**"
