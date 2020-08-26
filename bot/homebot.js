const env = require('../config/.env')
const Telegraf = require('telegraf')
const bot = new Telegraf(env.token)

bot.start(ctx => {
    console.log("abc")
    ctx.reply("se ta lendo isso meu amigo ta funfando")
})

bot.startPolling()