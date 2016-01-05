def avisa_chute_efetuado chute 
	puts "Você já chutou #{chute}"
end

def avisa_letra_nao_encontrada 
	puts "Letra não encontrada."
end

def avisa_letra_encontrada vezes
	puts "Letra encontrada #{vezes} vezes."
end

def avisa_acertou_palavra
	puts "Parabéns, você ganhou!"
	puts

	puts "       ___________      "
	puts "      '._==_==_=_.'     "
	puts "      .-\\:      /-.    "
	puts "     | (|:.     |) |    "
	puts "      '-|:.     |-'     "
	puts "        \\::.    /      "
	puts "         '::. .'        "
	puts "           ) (          "
	puts "         _.' '._        "
	puts "        '-------'       "
	puts
end

def avisa_errou_palavra
	puts "Que pena.. errou"
end

def avisa_pontos pontos
	puts "Você ganhou #{pontos} pontos."
	pontos
end

def desenha_forca erros
	cabeca = "   "
	bracos = "   "
	pernas = "   "
	corpo = " "

	if erros >= 1
		cabeca = "(_)"
	end
	if erros >=2
		bracos = " |"
		corpo = "|"
	end
	if erros >=3
		bracos = "\\|/"
	end
	if erros >= 4
		pernas = "/ \\"
	end
	puts "  _______       "
	puts " |/      |      "
	puts " |      #{cabeca}  "
	puts " |      #{bracos}  "
	puts " |       #{corpo}     "
	puts " |      #{pernas}   "
	puts " |              "
	puts "_|___           "
	puts 
end

def da_boas_vindas
	puts "/****************/"
	puts "/ Jogo de Forca */"
	puts "/****************/"
 	puts "Bem vindo ao jogo da forca"
 	puts "Qual é o seu nome?"
 	nome = gets.strip
 	puts "\n\n\n\n\n\n"
 	puts "Começaremos o jogo para você, #{nome}."
 	nome
end

def avisa_pontos_totais pontos_totais
	puts "Você possui #{pontos_totais} pontos."
end

def avisa_escolhendo_palavra
	puts "Escolhendo uma palavra secreta.."
end

def avisa_palavra_escolhida palavra
	puts "Palavra secreta com #{palavra.size} letras.. Boa sorte!"
	palavra
end

def nao_quer_jogar?
	puts "Deseja jogar novamente? (S/N)"
	quero_jogar = gets.strip
	nao_quero_jogar = quero_jogar.upcase == "N"
end

def cabecalho_de_tentativa(chutes,erros, mascara)
	puts "\n\n\n\n"
	desenha_forca erros
	puts "Palavra secreta: #{mascara}"
	puts "Erros até agora: #{erros}"
	puts "Chutes até agora: #{chutes}"
end

def pede_um_chute
	puts "Entre com uma letra ou palavra:"
	chute = gets.strip.downcase
	puts "Será que acertou? Você chutou #{chute}"
	chute
end

def avisa_campeao_atual dados
	puts "Nosso campeão atual é #{dados[0]} com #{dados[1]} pontos."
end