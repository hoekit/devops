# Install git
sudo apt-get install -y git-core 

# Create gitroot folder
mkdir -p ~/gitroot

# Create app git folder
mkdir ~/gitroot/appname.git

# Initialize bare repository
cd ~/gitroot/appname.git
git init --bare
