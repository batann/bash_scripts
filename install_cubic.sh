clear
echo -e "Installing Cubic"
echo "deb https://ppa.launchpadcontent.net/cubic-wizard/release/ubuntu/ jammy main" | tee /etc/apt/sources.list.d/cubic-wizard-release.list
sudo curl -S "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x081525e2b4f1283b" | sudo gpg --batch --yes --dearmor --output /etc/apt/trusted.gpg.d/cubic-wizard-ubuntu-release.gpg
sudo apt update
sudo apt install cubic
cd /etc/apt
sudo cp sources.list sources.list.original
sudo sed -i "s|bullseye|bookworm|g" sources.list
sudo apt update
sudo apt install dpkg
sudo cp sources.list.original sources.list
sudo apt update

