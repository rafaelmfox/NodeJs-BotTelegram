const Telegraf = require('telegraf')
const env = require('../config/.env')
const bot = new Telegraf(env.token)
//const Markup = require('telegraf/markup') //teclado no telegram
const db = require('../database/index')

//CTRL +  ALT + N > START
//CTRL +  ALT + M > BREAK


//Primeiro passo a msg que vai aparecer
bot.start((ctx) => {
    const primeiroNomeUsuario = ctx.from.first_name
    ctx.reply('Oi, Seja bem vindo: '+primeiroNomeUsuario)
    ctx.reply('eu sou o seu bot \ncomo posso estar te ajudando?')
});

bot.on('text',  ctx=> {
   msg = ctx.message.text
   console.log(msg)
   var results = db.select('resposta').from('conversa').where('pergunta',msg)
   results.then(function(rows){
      if(rows == ""){
        ctx.reply("Nao entendi sua pergunta");
      }else if(rows[0].resposta == '123abc'){
        var date = new Date();
        var current_hour = date.getHours();
        ctx.reply(current_hour);
    }else{
    ctx.reply(rows[0].resposta);
    }
   })    
});

bot.startPolling()