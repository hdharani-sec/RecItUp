# RecItUp
A simple Bash script for recon and enumeration of subdomains. This script automates the process of finding subdomains, checking their availability, and scanning for open ports. It uses tools like subfinder, assetfinder, httprobe, and nmap to provide a streamlined recon process.

# Features
Find Subdomains: Uses subfinder and assetfinder to gather subdomains.
Combine & Remove Duplicates: Merges results from multiple sources and removes duplicates.
Check for Live Subdomains: Uses httprobe to verify which subdomains are alive.
Scan for Open Ports: Uses nmap to find open ports on live subdomains

# Prerequisites
Before using this script, ensure you have the following tools installed:

subfinder
assetfinder
httprobe
nmap


Here is an example of a GitHub README.md page that you can use for your Bash script tool. It includes a description of the tool, its usage, prerequisites, and installation instructions. This should help guide users through understanding what the tool does and how to use it.

Subdomain Recon Tool
A simple Bash script for recon and enumeration of subdomains. This script automates the process of finding subdomains, checking their availability, and scanning for open ports. It uses tools like subfinder, assetfinder, httprobe, and nmap to provide a streamlined recon process.

Features
Find Subdomains: Uses subfinder and assetfinder to gather subdomains.
Combine & Remove Duplicates: Merges results from multiple sources and removes duplicates.
Check for Live Subdomains: Uses httprobe to verify which subdomains are alive.
Scan for Open Ports: Uses nmap to find open ports on live subdomains.
Prerequisites
Before using this script, ensure you have the following tools installed:

subfinder
assetfinder
httprobe
nmap

# Installation
Clone this repository and navigate into the cloned directory:

git clone https://github.com/hdharani-sec/RecItUp.git
cd repo-name
Make the script executable:

chmod +x recon.sh

# Usage
./rec.sh example.com

# Output
Subfinder Results: recon/subfinder.txt
Assetfinder Results: recon/assetfinder.txt
Combined Subdomains: recon/final.txt
Live Subdomains: recon/alive.txt
Open Ports: recon/nmap.txt

