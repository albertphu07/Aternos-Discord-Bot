#!/bin/bash
set -e

echo "Installing NeoMC Discord Bot..."


if ! command -v python3 &> /dev/null; then
    echo "Python3 not found, installing..."
    sudo apt update
    sudo apt install -y python3 python3-venv python3-pip git
fi


if [ ! -d "Aternos-Discord-Bot" ]; then
    git clone https://github.com/albertphu07/Aternos-Discord-Bot.git
fi
cd Aternos-Discord-Bot

python3 -m venv discord
source discord/bin/activate


pip install --upgrade pip
pip install -r requirements.txt


read -p "Enter your Discord bot token: " DISCORD_TOKEN
echo "DISCORD_TOKEN=$DISCORD_TOKEN" > .env


read -p "Enter your Aternos username: " ATERNOS_USER
read -sp "Enter your Aternos password: " ATERNOS_PASS
echo ""
sed -i "s/client.login(\"YOUR_ATERNOS_USER\", \"YOUR_ATERNOS_PASSWORD\")/client.login(\"$ATERNOS_USER\", \"$ATERNOS_PASS\")/" main.py


WRAPPER="/usr/local/bin/neomc"
echo "#!/bin/bash
cd $(pwd)
source discord/bin/activate
python3 main.py \"\$@\"" | sudo tee $WRAPPER > /dev/null
sudo chmod +x $WRAPPER

echo " Installation complete! You can now run the bot using:"
echo "   neomc -start"


read -p "Do you want to start the bot now? (y/n) " startnow
if [[ "$startnow" == "y" || "$startnow" == "Y" ]]; then
    neomc -start
fi
