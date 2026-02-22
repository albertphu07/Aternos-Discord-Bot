Discord Aternos Server Bot

A Discord bot that allows users to remotely start, stop, and restart your Aternos Minecraft server through Discord commands. Built with Python using discord.py and python_aternos.

---

Features

- Start your Minecraft server directly from Discord (!start)
- Stop your Minecraft server (!stop)
- Restart your Minecraft server (!restart)
- Prevents users from sending uncontrolled messages like "start the server"
- Logs bot activity to discord.log

---

Requirements

- Python 3.11+
- Discord bot token
- Aternos account credentials (username and password)

---

Installation

1. Clone this repository

git clone https://github.com/albertphu07/Aternos-Discord-Bot.git
cd discord-aternos-bot

2. Create a .env file in the root directory with your Discord bot token:

DISCORD_TOKEN=your_discord_bot_token_here

3. Install dependencies using requirements.txt:

pip install -r requirements.txt

4. Edit the bot script:
- Replace YOUR_ATERNOS_USER and YOUR_ATERNOS_PASSWORD with your Aternos account credentials.
- Replace nodexserver1 with your Aternos server variable reference.

---

Commands

Command        | Description
---------------|-------------
!start         | Starts the Minecraft server (mentions everyone)
!stop          | Stops the Minecraft server
!restart       | Restarts the Minecraft server

> Messages like "start the server" will be deleted automatically, guiding users to use the proper command.

---

Logging

All bot activity and errors are logged to discord.log.

---

Usage

Run the bot:

python bot.py

Once the bot is online, users can control the server using the defined commands.

---

Notes

- Ensure your Discord bot has the Manage Messages and Send Messages permissions in your server.
- The bot’s intents are set to read messages and members; adjust if you want additional features.
- Commands are case-insensitive and restricted to ! prefix.

---

Example requirements.txt

discord.py
python-dotenv
python_aternos
