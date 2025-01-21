# Koru Sec Tools Installer v1
# Project: koru-sec-tools-v1
# Author: Nightmare De9
# Description: Install and verify security tools for privacy and anonymity on Windows

# Color variables for colorful output
$RED = [System.ConsoleColor]::Red
$GREEN = [System.ConsoleColor]::Green
$YELLOW = [System.ConsoleColor]::Yellow
$CYAN = [System.ConsoleColor]::Cyan
$BLUE = [System.ConsoleColor]::Blue
$WHITE = [System.ConsoleColor]::White

# Display Text Art with Color
Clear-Host
Write-Host -ForegroundColor $CYAN "
     )               (                                                       
  ( /(               )\ )                       )        *   )        (      
  )\())   (     (   (()/(   (       (  (  (  ( /((     \` )  /(        )\     
|((_)\ (  )(   ))\   /(_)) ))\ (   ))\ )( )\ )\())\ )   ( )(_)|    ( ((_|    
|_ ((_))\(()\ /((_) (_))  /((_))\ /((_|()((_|_))(()/(  (_(_()))\   )\ _ )\   
| |/ /((_)((_|_))(  / __|(_)) ((_|_))( ((_|_) |_ )(_)) |_   _((_) ((_) ((_)  
  ' </ _ \ '_| || | \__ \/ -_) _|| || | '_| |  _| || |   | |/ _ \/ _ \ (_-<  
 _|\_\___/_|  \_,_| |___/\___\__| \_,_|_| |_|\__|\_, |   |_|\___/\___/_/__/  
                                                 |__/  
" -ForegroundColor $BLUE

# Tools list and descriptions
$tools = @{
    1  = "Tor: Anonymizing internet traffic"
    2  = "I2P: Invisible Internet Project"
    3  = "Whonix: Security-focused OS (Manual Installation)"
    4  = "VeraCrypt: Disk encryption"
    5  = "KeePassXC: Password manager"
    6  = "Thunderbird: Secure email client"
    7  = "Claws-Mail: Email client with encryption"
    8  = "GnuPG: Open-source encryption"
    9  = "Cryptsetup: Disk encryption"
    10 = "Auditd: Linux audit framework"
    11 = "AppArmor: Mandatory access control"
    12 = "WireGuard: VPN protocol"
    13 = "Metasploit: Penetration testing framework"
    14 = "Wireshark: Network protocol analyzer"
    15 = "Nmap: Network scanner"
    16 = "Signal Desktop: Secure messaging"
    17 = "Jitsi Meet: Secure video conferencing"
    18 = "Riot Web: Encrypted messaging platform"
    19 = "Tutanota: Encrypted email service"
    20 = "Privacy Badger: Tracker blocking"
    21 = "TorBirdy: Tor email extension"
    22 = "Cryptcat: Encrypted chat tool"
    23 = "ZeroTier: Virtual network tool"
}

# Function to check if a program is installed
function Check-Installed {
    param (
        [string]$program
    )
    $installed = Get-Command $program -ErrorAction SilentlyContinue
    if ($installed) {
        Write-Host "$program is already installed." -ForegroundColor $GREEN
        return $true
    }
    else {
        Write-Host "$program is not installed." -ForegroundColor $RED
        return $false
    }
}

# Function to install the tool (for demonstration purposes)
function Install-Tool {
    param (
        [string]$tool
    )
    if ($tool -eq "Tor") {
        Write-Host "Installing Tor..." -ForegroundColor $CYAN
        # Example: Install using Chocolatey (you need to have Chocolatey installed)
        choco install tor -y
    }
    elseif ($tool -eq "I2P") {
        Write-Host "Installing I2P..." -ForegroundColor $CYAN
        # Example: Download and install I2P manually (this part can be improved)
        Write-Host "Please visit https://geti2p.net/en/download" -ForegroundColor $YELLOW
    }
    elseif ($tool -eq "Whonix") {
        Write-Host "Installing Whonix..." -ForegroundColor $CYAN
        Write-Host "Whonix requires manual installation: Visit https://www.whonix.org/" -ForegroundColor $YELLOW
    }
    elseif ($tool -eq "VeraCrypt") {
        Write-Host "Installing VeraCrypt..." -ForegroundColor $CYAN
        # Example: Install using Chocolatey
        choco install veracrypt -y
    }
    elseif ($tool -eq "KeePassXC") {
        Write-Host "Installing KeePassXC..." -ForegroundColor $CYAN
        choco install keepassxc -y
    }
    elseif ($tool -eq "Thunderbird") {
        Write-Host "Installing Thunderbird..." -ForegroundColor $CYAN
        choco install thunderbird -y
    }
    elseif ($tool -eq "Claws-Mail") {
        Write-Host "Installing Claws-Mail..." -ForegroundColor $CYAN
        choco install claws-mail -y
    }
    elseif ($tool -eq "GnuPG") {
        Write-Host "Installing GnuPG..." -ForegroundColor $CYAN
        choco install gnupg -y
    }
    elseif ($tool -eq "Cryptsetup") {
        Write-Host "Installing Cryptsetup..." -ForegroundColor $CYAN
        Write-Host "Cryptsetup requires a Linux environment." -ForegroundColor $YELLOW
    }
    elseif ($tool -eq "Auditd") {
        Write-Host "Installing Auditd..." -ForegroundColor $CYAN
        Write-Host "Auditd is a Linux tool." -ForegroundColor $YELLOW
    }
    elseif ($tool -eq "AppArmor") {
        Write-Host "Installing AppArmor..." -ForegroundColor $CYAN
        Write-Host "AppArmor is a Linux tool." -ForegroundColor $YELLOW
    }
    elseif ($tool -eq "WireGuard") {
        Write-Host "Installing WireGuard..." -ForegroundColor $CYAN
        choco install wireguard -y
    }
    elseif ($tool -eq "Metasploit") {
        Write-Host "Installing Metasploit..." -ForegroundColor $CYAN
        choco install metasploit -y
    }
    elseif ($tool -eq "Wireshark") {
        Write-Host "Installing Wireshark..." -ForegroundColor $CYAN
        choco install wireshark -y
    }
    elseif ($tool -eq "Nmap") {
        Write-Host "Installing Nmap..." -ForegroundColor $CYAN
        choco install nmap -y
    }
    elseif ($tool -eq "Signal Desktop") {
        Write-Host "Installing Signal Desktop..." -ForegroundColor $CYAN
        choco install signal-desktop -y
    }
    elseif ($tool -eq "Jitsi Meet") {
        Write-Host "Installing Jitsi Meet..." -ForegroundColor $CYAN
        Write-Host "Visit https://jitsi.org/ for installation instructions." -ForegroundColor $YELLOW
    }
    elseif ($tool -eq "Riot Web") {
        Write-Host "Installing Riot Web..." -ForegroundColor $CYAN
        Write-Host "Visit https://element.io/ for installation instructions." -ForegroundColor $YELLOW
    }
    elseif ($tool -eq "Tutanota") {
        Write-Host "Visit https://tutanota.com/ to use Tutanota." -ForegroundColor $YELLOW
    }
    elseif ($tool -eq "Privacy Badger") {
        Write-Host "Install Privacy Badger: Visit https://www.eff.org/privacybadger" -ForegroundColor $YELLOW
    }
    elseif ($tool -eq "TorBirdy") {
        Write-Host "Install TorBirdy: Visit https://www.torproject.org/projects/torbirdy.html" -ForegroundColor $YELLOW
    }
    elseif ($tool -eq "Cryptcat") {
        Write-Host "Installing Cryptcat..." -ForegroundColor $CYAN
        Write-Host "Cryptcat can be installed manually." -ForegroundColor $YELLOW
    }
    elseif ($tool -eq "ZeroTier") {
        Write-Host "Installing ZeroTier..." -ForegroundColor $CYAN
        choco install zerotier -y
    }
    else {
        Write-Host "Tool $tool not recognized." -ForegroundColor $RED
    }
}

# Interactive Tool Selection
Write-Host "Select tools to install (separate numbers with space):" -ForegroundColor $CYAN
foreach ($id in $tools.Keys) {
    Write-Host "[$id] $($tools[$id])" -ForegroundColor $BLUE
}

# Read user input for tools to install
$userInput = Read-Host "Enter the numbers of the tools to install"
$selectedTools = $userInput.Split()

# Install selected tools
foreach ($selected in $selectedTools) {
    $toolName = $tools[$selected].Split(":")[0]
    Write-Host "Installing $toolName..." -ForegroundColor $CYAN
    Check-Installed $toolName
    Install-Tool $toolName
}

Write-Host "Koru Sec Tools v1 Installation Complete!" -ForegroundColor $GREEN
Write-Host "Visit the official project for more details." -ForegroundColor $YELLOW
