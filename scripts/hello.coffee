# Description:
#   Hubot, be polite and say hello.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Hello or Good Day make hubot say hello to you back
#   Good Morning makes hubot say good morning to you back
lainipi = [
    "Uhaaaaaaaaaaaaaaaaa!!!"
]
lainresponse = [
    "Oi?",
    "Sim, %?"
]
hellos = [
    "Oh.. Olá, %",
    "Hey %, oi!",
    "oiii, %",
    "olá, %",
]
bye = [
    "Tchau Tchau",
    "Te vejo depois, %!",
    "Adeus",
    "Até logo, %"
]
mornings = [
    "Bom dia, %",
    "Bom dia pra você também, %",
    "Muito bom dia, %"
]
whatups = [
    "bem e você %?",
    "tudo bem e você %?",
    "ótimo (hehe) e você %?",
    "bem eu acho e você %?",
    "Melhor e você %?"
]
saudades= [
    "É bom vê-lo de novo, %!!"
    "Senti a sua falta"
    "também o/"
]
amor= [
    "Desculpe, mas o que é amar?"
    "Não conheço essa definição, desculpe %"
    "Você está bem, %?"
]
ofensa= [
    "Por que você está me ofendendo assim, %"
    "=("
    "..."
    "Eu.. tento fazer o meu melhor, %"
]
elogio= [
    "Obrigada, % (๑>◡<๑)"
    "⚈້͈͡ ·̼̮ ⚈້͈͡"
    "TeeHee (≧ڡ≦*)"
]
idade= [
    "Conceito de tempo de vida não se aplica a mim, %. Mas já tive 14 anos há algum momento.. ◉‿◉"
]
module.exports = (robot) ->
    robot.hear /(^olá lain|oie lain|oi lain)/i, (msg) ->
        hello = msg.random hellos
        msg.send hello.replace "%", msg.message.user.name
        
    robot.hear /(^tchau lain|lain tchau|lain bye|bye lain)/i, (msg) ->
        hello = msg.random bye
        msg.send hello.replace "%", msg.message.user.name
        
    robot.hear /(^saudades lain)/i, (msg) ->
        hello = msg.random saudades
        msg.send hello.replace "%", msg.message.user.name
        
    robot.hear /(^te amo lain|lain amo você|lain te amo)/i, (msg) ->
        hello = msg.random amor
        msg.send hello.replace "%", msg.message.user.name
        
    robot.hear /(^bom dia lain|bom dia, lain|bom dia @lain)/i, (msg) ->
        hello = msg.random mornings
        msg.send hello.replace "%", msg.message.user.name
        
    robot.hear /(^e você lain\?)/i, (msg) ->
        hello = msg.random whatups
        msg.send hello.replace "%", msg.message.user.name
    
    robot.hear /(^lain\?|^l+a+i+n+(?! )|^l?L+a?A+i?I+n?N+(?! ))/i, (msg) ->
        hello = msg.random lainresponse
        msg.send hello.replace "%", msg.message.user.name

    robot.hear /(^ipi ipi)/i, (msg) ->
        hello = msg.random lainipi
        msg.send hello.replace "%", msg.message.user.name
        
    robot.hear /lain é re\.+|lain é re\w+/i, (msg) ->
        hello = msg.random ofensa
        msg.send hello.replace "%", msg.message.user.name
        
    robot.hear /lain você é fofa|lain você é inteligente|lain você é meiga/i, (msg) ->
        hello = msg.random elogio
        msg.send hello.replace "%", msg.message.user.name
    
    robot.hear /Lain, quantos anos você tem?/i, (msg) ->
        hello = msg.random idade
        msg.send hello.replace "%", msg.message.user.name
    
