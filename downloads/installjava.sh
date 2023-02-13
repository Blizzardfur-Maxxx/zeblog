if [[ -f /usr/local/bin/java ]] || [[ -f /usr/bin/java ]]
then
if [[ -f /usr/bin/apt ]]
then
sudo apt update
sudo apt install openjdk-8-jre -y
elif [[ -f /usr/bin/apk ]]
then
apk update
apk upgrade
apk add openjdk8
elif [[ -f /usr/bin/wget ]]
then
wget https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u362-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u362b09.tar.gz
tar -xzvf OpenJDK8U-jdk_x64_linux_hotspot_8u362b09.tar.gz
echo "export PATH=jdk8u362-b09-jre/bin:$PATH"
fi
fi