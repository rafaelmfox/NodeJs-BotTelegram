const env = require('../config/.env')
const Telegraf = require('telegraf')
const Markup = require('telegraf/markup')
const bot = new Telegraf(env.token)
var json = require('../json/perguntas.json');


//teclado de perguntas
const tecladoGeral = Markup.keyboard([
    ['O que é o Vestibulinho?','vai ter prova?'],
    ['O Vestibulinho oferece vagas para quais cursos? '], 
]).resize().extra()


bot.start((ctx) => {
    const primeiroNomeUsuario = ctx.from.first_name
    ctx.reply('Oi, Seja bem vindo: '+primeiroNomeUsuario)
    ctx.reply('eu sou o seu bot feito para te ajudar \n como posso estar te ajudando?',tecladoGeral )
})

json.forEach(pergunta => {
   // console.log(pergunta.pergunta)
    bot.hears(pergunta.pergunta,  ctx=> {
        ctx.reply(pergunta.resposta)
    })
})







bot.startPolling()