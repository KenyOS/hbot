# Description:
#   Make sure that hubot knows the rules.
#
# Commands:
#   hubot the rules - Make sure hubot still knows the rules.
#
# Notes:
#   DON'T DELETE THIS SCRIPT! ALL ROBAWTS MUST KNOW THE RULES

rules = [
  "1. lain g|google <chave> - faz a busca no Google e retorna o primeiro resultado.",
  "2. lain i|img|image <chave> - faz a busca de imagem usando o Google e retorna o primeiro resultado.",
  "3. lain a|animate <chave> - mesma função que 'lain image' mas retorna imagem em gif se possível.",
  "4. lain question <chave> - faça a pergunta sobre algo e a lain irá respondê-lo.(somente em inglês)",
  "5. lain yt|youtube <chave> - faz uma busca pelo Youtube e retorna o primeiro resultado",
  "6. lain sc|soundcloud <chave> - faz uma busca pelo soundclound e retorna o primeiro resultado",
  "7. lain translate <chave> - Traduz a palavra|frase para o potuguês"
  ]

otherRules = [
  "Esses comandos abaixo são experimentais ou não representa exatamente uma funcionalidade para usuário comum",
  "1. lain ping - lain responde com PONG, recurso usado para dev testar o tempo de resposta mas acabou virando 'brincadeira' de todos.",
  "--Em andamento--"
  ]

module.exports = (robot) ->
  robot.respond /comandos/i, (msg) ->
    text = msg.message.text
    if text.match(/extra/i) or text.match(/dev/i)
      msg.send otherRules.join('\n')
    else
      msg.send rules.join('\n')

