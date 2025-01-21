#!/bin/bash

# Koru Sec Tools Installer v1
# Project: koru-sec-tools-v1
# Author: ND9
# Description: Install and verify security tools for privacy and anonymity

# Color variables for colorful output
NC='\033[0m'        # No Color
RED='\033[0;31m'    # Red
GREEN='\033[0;32m'  # Green
YELLOW='\033[0;33m' # Yellow
BLUE='\033[0;34m'   # Blue
CYAN='\033[0;36m'   # Cyan
BOLD='\033[1m'      # Bold

# Display Text Art with Color
clear
echo -e "${BLUE}
     )               (                                                       
  ( /(               )\ )                       )        *   )        (      
  )\())   (     (   (()/(   (       (  (  (  ( /((     \` )  /(        )\     
|((_)\ (  )(   ))\   /(_)) ))\ (   ))\ )( )\ )\())\ )   ( )(_)|    ( ((_|    
|_ ((_))\(()\ /((_) (_))  /((_))\ /((_|()((_|_))(()/(  (_(_()))\   )\ _ )\   
| |/ /((_)((_|_))(  / __|(_)) ((_|_))( ((_|_) |_ )(_)) |_   _((_) ((_) ((_)  
  ' </ _ \ '_| || | \__ \/ -_) _|| || | '_| |  _| || |   | |/ _ \/ _ \ (_-<  
 _|\_\___/_|  \_,_| |___/\___\__| \_,_|_| |_|\__|\_, |   |_|\___/\___/_/__/  
                                                 |__/  
${NC}"

# Tools list and descriptions
declare -A tools
tools=(
  ["1"]="Tor: Anonymizing internet traffic"
  ["2"]="I2P: Invisible Internet Project"
  ["3"]="Whonix: Security-focused OS (Manual Installation)"
  ["4"]="VeraCrypt: Disk encryption"
  ["5"]="KeePassXC: Password manager"
  ["6"]="Thunderbird: Secure email client"
  ["7"]="Claws-Mail: Email client with encryption"
  ["8"]="GnuPG: Open-source encryption"
  ["9"]="Cryptsetup: Disk encryption"
  ["10"]="Auditd: Linux audit framework"
  ["11"]="AppArmor: Mandatory access control"
  ["12"]="WireGuard: VPN protocol"
  ["13"]="Metasploit: Penetration testing framework"
  ["14"]="Wireshark: Network protocol analyzer"
  ["15"]="Nmap: Network scanner"
  ["16"]="Signal Desktop: Secure messaging"
  ["17"]="Jitsi Meet: Secure video conferencing"
  ["18"]="Riot Web: Encrypted messaging platform"
  ["19"]="Tutanota: Encrypted email service"
  ["20"]="Privacy Badger: Tracker blocking"
  ["21"]="TorBirdy: Tor email extension"
  ["22"]="Cryptcat: Encrypted chat tool"
  ["23"]="ZeroTier: Virtual network tool"
)

# Function to check if a tool is installed
check_installed() {
  if command -v "$1" &>/dev/null; then
    echo -e "${GREEN}$1 is already installed.${NC}"
  else
    echo -e "${RED}$1 is not installed.${NC}"
    install_tool "$1"
  fi
}

# Function to install the tool
install_tool() {
  tool_id="$1"
  case $tool_id in
    "Tor")
      sudo apt update && sudo apt install -y tor
      ;;
    "I2P")
      sudo apt update && sudo apt install -y i2p
      ;;
    "Whonix")
      echo -e "${YELLOW}Whonix requires manual installation: Visit https://www.whonix.org/${NC}"
      ;;
    "VeraCrypt")
      sudo apt update && sudo apt install -y veracrypt
      ;;
    "KeePassXC")
      sudo apt update && sudo apt install -y keepassxc
      ;;
    "Thunderbird")
      sudo apt update && sudo apt install -y thunderbird
      ;;
    "Claws-Mail")
      sudo apt update && sudo apt install -y claws-mail
      ;;
    "GnuPG")
      sudo apt update && sudo apt install -y gnupg
      ;;
    "Cryptsetup")
      sudo apt update && sudo apt install -y cryptsetup
      ;;
    "Auditd")
      sudo apt update && sudo apt install -y auditd
      ;;
    "AppArmor")
      sudo apt update && sudo apt install -y apparmor
      ;;
    "WireGuard")
      sudo apt update && sudo apt install -y wireguard
      ;;
    "Metasploit")
      sudo apt update && sudo apt install -y metasploit-framework
      ;;
    "Wireshark")
      sudo apt update && sudo apt install -y wireshark
      ;;
    "Nmap")
      sudo apt update && sudo apt install -y nmap
      ;;
    "Signal Desktop")
      sudo apt update && sudo apt install -y signal-desktop
      ;;
    "Jitsi Meet")
      echo -e "${YELLOW}Install Jitsi Meet: Visit https://jitsi.org/${NC}"
      ;;
    "Riot Web")
      echo -e "${YELLOW}Install Riot Web: Visit https://element.io/${NC}"
      ;;
    "Tutanota")
      echo -e "${YELLOW}Install Tutanota: Visit https://tutanota.com/${NC}"
      ;;
    "Privacy Badger")
      echo -e "${YELLOW}Install Privacy Badger: Visit https://www.eff.org/privacybadger${NC}"
      ;;
    "TorBirdy")
      echo -e "${YELLOW}Install TorBirdy: Visit https://www.torproject.org/projects/torbirdy.html${NC}"
      ;;
    "Cryptcat")
      sudo apt update && sudo apt install -y cryptcat
      ;;
    "ZeroTier")
      sudo apt update && sudo apt install -y zerotier-one
      ;;
    *)
      echo -e "${RED}Tool $tool_id not recognized. Skipping installation.${NC}"
      ;;
  esac
}

# Interactive Tool Selection
echo -e "${CYAN}Select tools to install (separate numbers with space):${NC}"
for id in "${!tools[@]}"; do
  echo -e "${BLUE}[$id] ${tools[$id]}${NC}"
done

# Read user input for tools to install
read -p "Enter the numbers of the tools to install: " user_input
IFS=' ' read -r -a selected_tools <<< "$user_input"

# Install selected tools
for selected in "${selected_tools[@]}"; do
  tool_name=$(echo "${tools[$selected]}" | cut -d: -f1)
  echo -e "${CYAN}Installing $tool_name...${NC}"
  check_installed "$tool_name"
done

# Completion message
echo -e "${GREEN}Koru Sec Tools v1 Installation Complete!${NC}"
echo -e "${YELLOW}Visit the official project for more details.${NC}"
exit 0
