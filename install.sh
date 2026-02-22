#!/bin/bash


set -e

echo "Starting Neo MC Installer..."


if ! command -v python3 &> /dev/null; then
    echo "Python3 not found, installing..."
    sudo apt update
    sudo apt install -y python3 python3-venv python3-pip git
fi


echo " Cloning the bot repository..."
if [ ! -d "Aternos-Discord-Bot" ]; then
    git clone https://github.com/albertphu07/Aternos-Discord-Bot.git
fi
cd Aternos-Discord-Bot


echo "🐍 Setting up virtual environment..."
python3 -m venv discord
source discord/bin/activate


echo " Installing Python dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

# Ask user for Discord token
read -p "Enter your Discord bot token: " DISCORD_TOKEN
echo "DISCORD_TOKEN=$DISCORD_TOKEN" > .env

# Ask user for Aternos login
read -p "Enter your Aternos username: " ATERNOS_USER
read -sp "Enter your Aternos password: " ATERNOS_PASS
echo ""
sed -i "s/client.login(\"YOUR_ATERNOS_USER\", \"YOUR_ATERNOS_PASSWORD\")/client.login(\"$ATERNOS_USER\", \"$ATERNOS_PASS\")/" main.py

# Start the bot
echo "Setup complete! Starting the bot..."
python3 main.py
