#!/bin/sh
# Update the system
sudo apt update && sudo apt upgrade -y
# Install LSB Release
sudo apt install lsb-release -y

# Install prebuilt mpr repo
curl -q 'https://proget.makedeb.org/debian-feeds/prebuilt-mpr.pub' | gpg --dearmor | sudo tee /usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg 1> /dev/null
echo "deb [signed-by=/usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg] https://proget.makedeb.org prebuilt-mpr $(lsb_release -cs)" | sudo tee /etc/apt/sources.list.d/prebuilt-mpr.list

# Install Azul Repo

# add Azul's public key
sudo apt-key adv \
  --keyserver hkp://keyserver.ubuntu.com:80 \
  --recv-keys 0xB1998361219BD9C9

# download and install the package that adds 
# the Azul APT repository to the list of sources 
curl -O https://cdn.azul.com/zulu/bin/zulu-repo_1.0.0-3_all.deb

# Install the package
sudo apt-get install ./zulu-repo_1.0.0-3_all.deb

# Remove the leftover file
rm zulu-repo_1.0.0-3_all.deb

# update the package sources
sudo apt-get update

# Install everything
sudo apt install prismlauncher zulu8-jre zulu17-jre -y

# Open PrismLauncher

prismlauncher