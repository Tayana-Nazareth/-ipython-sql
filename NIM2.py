def computador_escolhe_jogada(n, m):

    computadortira = 1

    while computadortira != m:

        if (n - computadortira) % (m+1) == 0:
            return computadortira

        else:
            computadortira += 1
    return computadortira


def usuario_escolhe_jogada(n, m):

    jogada = False

    while not jogada:

        jogadortira = int(input('Quantas peças você vai tirar? '))

        if jogadortira > m or jogadortira < 1:
            print('Oops! Jogada inválida! Tente de novo.')
            

        else:
            jogada = True

    return jogadortira


def campeonato():
    rodada = 1
    while rodada <= 3:
        print('**** Rodada', rodada, '****')
        partida()
        rodada += 1
    print('Placar: Você 0 X 3 Computador')


def partida():
    n = int(input('Quantas peças? '))

    m = int(input('Limite de peças por jogada? '))

    vezpc = False

    if n % (m+1) == 0:
        print('Voce começa!')
    else:
        print('Computador começa!')
        vezpc = True
    while n > 0:
        if vezpc:
            computadortira = computador_escolhe_jogada(n, m)
            n = n - computadortira
            if computadortira == 1:
                print('O computador tirou uma peça')
            else:
                print('O computador tirou', computadortira, 'peças')

            vezpc = False
        else:
            jogadortira = usuario_escolhe_jogada(n, m)
            n = n - jogadortira
            if jogadortira == 1:
                print('Você tirou uma peça')
            else:
                print('Você tirou', jogadortira, 'peças')
            vezpc = True
        if n == 1:
            print('Agora resta apenas uma peça no tabuleiro.')
            print()
        else:
            if n != 0:
                print('Agora restam,', n, 'peças no tabuleiro.')
                print()

    print('Fim do jogo! O computador ganhou!')

print('Bem-vindo ao jogo do NIM! Escolha:')
print()

print('1 - para jogar uma partida isolada')

inicio = int(input('2 - para jogar um campeonato '))

if inicio == 2:
    print()
    print('Voce escolheu um campeonato!')
    print()
    campeonato()
else:
    if inicio == 1:
        print()
        partida()
