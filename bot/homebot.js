const env = require('../config/.env')
const Telegraf = require('telegraf')
const Markup = require('telegraf/markup')
const bot = new Telegraf(env.token)
var json = require('../json/perguntas.json');
var mysql = require('mysql'); 

//CTRL +  ALT + N > START
//CTRL +  ALT + M > BREAK

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "telegram"
  });


  //Primeiro passo a msg que vai aparecer
bot.start((ctx) => {
    const primeiroNomeUsuario = ctx.from.first_name
    ctx.reply('Oi, Seja bem vindo: '+primeiroNomeUsuario)
    ctx.reply('eu sou o seu bot \n como posso estar te ajudando?')
});

bot.on('text', ctx=> {
    console.log("Passei aqui -> "+ctx.message.text)
    //ctx.reply(ctx.message.text)
    con.connect();
    con.query('SELECT c.resposta from conversa AS c WHERE pergunta = '+'"'+ctx.message.text+'"', function (error, results, fields) {
        if (error) throw error;
        //console.log('Resposta -> '+ results[0].resposta);
        ctx.reply(results[0].resposta);
      });
    con.end;

});

/*     ///ESSE DAQUI DEU CERTO
con.connect();
con.query('SELECT * FROM conversa where pergunta', function (error, results, fields) {
    if (error) throw error;
    console.log('Resposta -> ', results[0].resposta);
  });
con.end;*/

//teclado de perguntas
/*const teclado1 = Markup.keyboard([
    ['o que é o vestibulinho?','vai ter prova?'],
    ['o vestibulinho oferece vagas para quais cursos? '],
    ['como faço a inscrição?'],['Pagina 2'] 
]).resize().extra()
const teclado2 = Markup.keyboard([
    ['tem idade mínima para fazer os cursos técnicos?'],
    ['quando começam as inscrições para o vestibulinho? '], 
    ['ate quando posso me inscrever?'],['Pagina 3'] 
]).resize().extra()
const teclado3 = Markup.keyboard([
    ['quais documentos de identificação preciso para me inscrever?'],
    ['quando será divulgada a lista de classificação geral do vestibulinho? '], 
    ['Pagina 1'] 
]).resize().extra()
*/



/*
bot.hears('Pagina 1',  ctx=> {
    ctx.reply('como posso estar te ajudando?',teclado1)
})
bot.hears('Pagina 2',  ctx=> {
    ctx.reply('como posso estar te ajudando?',teclado2)
})
bot.hears('Pagina 3',  ctx=> {
    ctx.reply('como posso estar te ajudando?',teclado3)
})*/


/*
json.forEach(pergunta => {
    bot.hears(pergunta.pergunta.toLowerCase(),  ctx=> {
        ctx.reply(pergunta.resposta)
    })    
})*/


bot.startPolling()