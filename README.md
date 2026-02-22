# Aternos Python Discord Bot 

![479shots_so](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy-CN8peW2tNlu8wChILy-38OGEHy8owkceg&s)


Create a local Public Discord Bot For Your Aternos Server. 

No extra plugins or subscriptions required.

Please consider ⭐️ starring  this project if you found it useful


## Quick Start (Automatic Installation)
Run the following command on your desired Server/Computer
```bash
sudo curl -sSL https://raw.githubusercontent.com/albertphu07/Aternos-Discord-Bot/refs/heads/main/install.sh | bash
```

## While Installing 
Go to Bots And Enable the Following
![479shots_so](https://github.com/albertphu07/Aternos-Discord-Bot/blob/main/readmeimage/Screenshot%202026-02-22%20093002.png)

Go To OAuth2 And Enable the Following
![479shots_so](https://github.com/albertphu07/Aternos-Discord-Bot/blob/main/readmeimage/Screenshot%202026-02-22%20093218.png)

![479shots_so](https://github.com/albertphu07/Aternos-Discord-Bot/blob/main/readmeimage/Screenshot%202026-02-22%20093348.png)

Copy The link Add And your Bot to your server
![479shots_so](https://github.com/albertphu07/Aternos-Discord-Bot/blob/main/readmeimage/Screenshot%202026-02-22%20093601.png)

Go to Bots and Reset Your Token (You will need this in a bit)
![479shots_so](https://github.com/albertphu07/Aternos-Discord-Bot/blob/main/readmeimage/Screenshot%202026-02-22%20134821.png)

## Follow On Screen Instructions

Your Set! Run this to begin!
```bash
neomc -start
```

## Quick Start (Manual Installation)
Clone The github Repo Using your desired Server/Computer
```bash
https://github.com/albertphu07/Aternos-Discord-Bot.git
```
Install python3 and run:

```bash
python3 -m venv discord 
```
Start the Venv
```bash
source discord/bin/activate
```
Download Requirments
```bash
pip3 install -r requirements.txt
```

Then Set Up a Discord Bot Using the Link
```bash
https://discord.com/developers/applications
```
Go to Bots And Enable the Following
![479shots_so](https://github.com/albertphu07/Aternos-Discord-Bot/blob/main/readmeimage/Screenshot%202026-02-22%20093002.png)

Go To OAuth2 And Enable the Following
![479shots_so](https://github.com/albertphu07/Aternos-Discord-Bot/blob/main/readmeimage/Screenshot%202026-02-22%20093218.png)

![479shots_so](https://github.com/albertphu07/Aternos-Discord-Bot/blob/main/readmeimage/Screenshot%202026-02-22%20093348.png)

Copy The link Add And your Bot to your server
![479shots_so](https://github.com/albertphu07/Aternos-Discord-Bot/blob/main/readmeimage/Screenshot%202026-02-22%20093601.png)

Go to Bots and Reset Your Token (You will need this in a bit)
![479shots_so](https://github.com/albertphu07/Aternos-Discord-Bot/blob/main/readmeimage/Screenshot%202026-02-22%20134821.png)

Paste Your Token Into .env 
```bash
DISCORD_TOKEN=my_token
```
Open main.py and edit the Aternos Login Info to match your account
```bash
client.login("YOUR_ATERNOS_USER", "YOUR_ATERNOS_PASSWORD")
```
Go Back to your terminal and run!
```bash
python3 main.py
```

## Example Usage
Using the Prefix !start
```bash
Server Will Start in 10 Seconds... Server Started by (User)
```
Using Prefix !stop
```bash
Server Is Stopping... Server Suspended by (User)
```
Using Prefix !restart
```bash
Server Is Restarting... Server Reset By (User)
```
