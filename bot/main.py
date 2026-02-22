import discord
from discord.ext import commands
import logging
from dotenv import load_dotenv
from python_aternos import Client
import os

#Discord Token
load_dotenv()
token = os.getenv('DISCORD_TOKEN')

#Log
handler = logging.FileHandler(filename='discord.log', encoding='utf-8', mode='w')
intents = discord.Intents.default()
intents.message_content = True
intents.members = True

#Discord Bot Prefix
bot = commands.Bot(command_prefix='!', intents=intents)


#Aternos Login Info
client = Client()
client.login("YOUR_ATERNOS_USER", "YOUR_ATERNOS_PASSWORD")
account = client.account
servers = account.list_servers()

if servers:
        server = servers[0]
#Bot Started
@bot.event
async def on_ready():
        print(f"Bot Is Active Users are now permitted to start the server, {bot.user.name}")
  

#Prevent People From Asking to Start Server
@bot.event
async def on_message(message):
    if message.author == bot.user:
        return

    if "start the server" in message.content.lower():
        await message.delete()
        await message.channel.send(
            f"{message.author.mention} Please use `!start` to start the server. "
        )

    await bot.process_commands(message)

    

#Server Commands For Discord
@bot.command()
async def start(ctx):
        await ctx.reply(f"@everyone Server Will Start in 10 Seconds... Server started by:{ctx.author.mention}")
        server.start()

@bot.command()
async def stop(ctx):
        await ctx.reply(f"@everyone Server Is Stopping... Server Ended by:{ctx.author.mention}")
        server.stop()

@bot.command()
async def restart(ctx):
        await ctx.reply(f"@everyone Server Is Restarting... Server Reset By:{ctx.author.mention}")
        server.stop()
        server.start()

bot.run(token, log_handler=handler, log_level=logging.DEBUG)
