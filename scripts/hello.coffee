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
mornings = [
    "Bom dia, %",
    "Bom dia pra você também, %",
    "Muito bom dia, % como vai?",
]
whatups = [
    "bem e você %?",
    "tudo bem e você %?",
    "ótimo (hehe) e você %?",
    "bem eu acho e você %?",
    "Melhor e você %?"
]
module.exports = (robot) ->
    robot.hear /(^olá lain|oie lain|oi lain)/i, (msg) ->
        hello = msg.random hellos
        msg.send hello.replace "%", msg.message.user.name

    robot.hear /(^bom dia)/i, (msg) ->
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
