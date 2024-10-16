# RecItUp
A simple Bash script for recon and enumeration of subdomains. This script automates the process of finding subdomains, checking their availability, and scanning for open ports. It uses tools like `subfinder`, `assetfinder`, `httprobe`, and `nmap` to provide a streamlined recon process.

## Features
- **Find Subdomains:** Uses `subfinder` and `assetfinder` to gather subdomains.
- **Combine & Remove Duplicates:** Merges results from multiple sources and removes duplicates.
- **Check for Live Subdomains:** Uses `httprobe` to verify which subdomains are alive.
- **Scan for Open Ports:** Uses `nmap` to find open ports on live subdomains.

## Prerequisites
Before using this script, ensure you have the following tools installed:
- `subfinder`
- `assetfinder`
- `httprobe`
- `nmap`

## Installation
Clone this repository and navigate into the cloned directory:
```bash
git clone https://github.com/hdharani-sec/RecItUp.git
cd RecItUp
