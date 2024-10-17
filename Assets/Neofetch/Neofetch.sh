#!/bin/bash
# Dependencies

if ! command -v catimg &> /dev/null; then
    echo Installing Dependencies...
    sudo apt update && sudo apt install -y catimg
fi

catimg ./Pierog48.png
echo -e "
\u001b[1mOS:\033[0m PierógOS
\u001b[1mHost:\033[0m $(hostname)
\u001b[1mKernel:\033[0m $(uname -r)
\u001b[1mUptime:\033[0m $(uptime -p)
\u001b[1mPackages:\033[0m $(dpkg --get-selections | wc -l)
\u001b[1mShell:\033[0m $(echo $SHELL)
\u001b[1mResolution:\033[0m $(xdpyinfo | grep dimensions | awk '{print $2}')
\u001b[1mDE:\033[0m $(echo $XDG_CURRENT_DESKTOP)
\u001b[1mCPU:\033[0m $(lscpu | grep 'Model name' | cut -d ':' -f2 | xargs)
\u001b[1mGPU:\033[0m $(lscpu | grep 'Model name' | cut -d ':' -f2 | xargs)
\u001b[1mMemory:\033[0m $(free -h | grep Mem | awk '{print $3 "/" $2}')
"
