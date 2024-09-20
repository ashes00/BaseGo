# BaseGo

**Premise:** BaseGo taken from the idea of Go to the Base setup now.  

**Note:** Its really just a simple automation script for provisioning an Ubuntu system after installation.  This script is not meant to be the end all automation provision script.   It was created out of a basic need to to ensure newly crerated systems meet a known level of setup.  This saves a ton of time when setting up multiple fresh systems.

**What it do?:**  This script performs the follwoing fuctions (with more to come).

1. Update the system
2. Install a list of applications
3. Provide useful system information back to the terminal

**Usage:**

1. Local:  chmod +x setup.sh && ./setup.sh
2.  Remote: curl -s [https://domain.com/setup.sh](https://domain.com/setup.sh) | bash

**Misc:** This is a Generative AI created program that was crafted from a PROMPT file.  See PROMPT.md for details.