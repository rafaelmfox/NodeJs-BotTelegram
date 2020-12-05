const env = require('../config/.env')
const Telegraf = require('telegraf')
const Markup = require('telegraf/markup')
const bot = new Telegraf(env.token)
var json = require('../json/perguntas.json');
//const knex = require('./database')
//const express = require('express')

//const knexfile = require('../knexfile')
//const knex = require('knex')(knexfile['development'])
const knex = require('knex')
const knexfile = require('../knexfile').development
const db = knex(knexfile)


//CTRL +  ALT + N > START
//CTRL +  ALT + M > BREAK
/*
var mysql = require('mysql'); 
var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "telegram"
  });*/


  //Primeiro passo a msg que vai aparecer
bot.start((ctx) => {
    const primeiroNomeUsuario = ctx.from.first_name
    ctx.reply('Oi, Seja bem vindo: '+primeiroNomeUsuario)
    ctx.reply(' -listar ')
});

bot.hears('-listar',  ctx=> {
    // var results = knex('conversa').where({pergunta: 'oi'})
    msg = ctx.message.text
    //console.log(msg)
    var results = db.select('name').from('vrp_user_identities')
 
    results.then(function(rows){
        
        for (let a = 0;a != rows.length;a++){
            ctx.reply(rows[a].name);
        }

        //rows.forEach(element => {ctx.reply(element.name) })
     
        //ctx.reply(rows[1].name);
    })    
     //ctx.reply(results)
 });



bot.on('asllsllsls',  ctx=> {
   // var results = knex('conversa').where({pergunta: 'oi'})
   msg = ctx.message.text
   console.log(msg)
   var results = db.select('resposta').from('conversa').where('pergunta',msg)

   results.then(function(rows){
      //console.log('SUA RESPOSTA E ESSA DAQUI '+rows[0].resposta)
      if(rows[0].resposta == '123abc'){
        var date = new Date();
        var current_hour = date.getHours();
        ctx.reply(current_hour);
    }else{
    ctx.reply(rows[0].resposta);
    }
   })    
    //ctx.reply(results)
});

/*
bot.on('text',  ctx=> {
    msg = ctx.message.text
    console.log("Passei aqui -> "+msg)
    //ctx.reply(ctx.message.text)
    try{
    con.connect();
    con.query('SELECT c.resposta from conversa AS c WHERE pergunta = '+'"'+msg+'"', function (error, results, fields) {
        if (error) throw error;
       // console.log('Resposta -> '+ results[0].resposta);
        ctx.reply(results[0].resposta);
      });
    con.end;
    }finally{
        con.end;
    }
});*/

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