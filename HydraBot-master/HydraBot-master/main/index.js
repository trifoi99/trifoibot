const Discord = require('discord.js');
Dicord.Constants.DefaultOptions.ws.properties.$browser = "Discord Android"
const Client = new Discord.Client();

Client.on('ready' , () => {
    console.log('The bot is online');
}) 

Client.on('message') , message => {
    if (message.content === "!ping") {
        message.channel.send("Pong");
    }
})


Client.login('ODYwOTI5NjI1ODg2MDMxODcy.YOCZMg.iDH9cXduEk09pR92Q6gNOWRDTbQ')