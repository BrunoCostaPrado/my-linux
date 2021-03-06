sudo apt install htop -y

sudo apt install wget apt-transport-https -y
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install code


sudo apt update
sudo apt install snapd


sudo apt install php -y
sudo apt install python -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo apt install golang-go 

#Ruby#
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
\curl -sSL https://get.rvm.io | bash -s stable --rails

# Using Ubuntu
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs


sudo apt update 

sudo apt update
sudo apt install -y libwebkit2gtk-4.0-dev \
    build-essential \
    curl \
    wget \
    libssl-dev \
    libgtk-3-dev \
    libayatana-appindicator3-dev \
    librsvg2-dev 
    
    
    
    #Docker
    
sudo apt install apt-transport-https ca-certificates curl gnupg2 software-properties
wget https://download.docker.com/linux/ubuntu/gpg
sudo apt update
sudo apt-key add gpg
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y



#Podman
echo "deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_20.04/ /" | sudo tee /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list
curl -L "https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_20.04/Release.key" | sudo apt-key add -
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install podman
podman --version
