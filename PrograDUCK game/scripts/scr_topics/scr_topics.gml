global.topics = {};

//-------ERROS -------
global.topics[$"ERROR_UNRELATEDCARD"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Hmm... Acho que esse CARD não tem nada a ver com o que estamos tentando fazer..."),
	TEXT("Quem sabe revisitar a história ou a explicação sobre variáveis e prestar atenção nos detalhes pode ajudar a descobrir qual CARD faz sentido usar aqui?"),
	TEXT("Será que ele está no lugar certo?")
];

global.topics[$"ERROR_EMPTYSLOT"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Ops! Parece que tem um slot vazio..."),
	TEXT("Revisitar a história ou a explicação sobre variáveis pode ajudar a descobrir qual CARD falta aqui!"),
	GOTO("TRY_AGAIN")
];

global.topics[$"ERROR_RETELLSTORY"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Hmm, algo aqui não bate com a história que eu contei..."),
	TEXT("Revisitar a história ou a explicação sobre variáveis e prestar atenção nos detalhes pode ajudar a descobrir qual CARD está contando a história direitinho!"),
	GOTO("TRY_AGAIN")
];

global.topics[$"ERROR_STRINGINSTEADOFINT"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Hmm, lembre-se que eu disse que li CINCO páginas..."),
	TEXT("Cinco, em uma variável de contagem é um número, não uma palavra!"),
	TEXT("Mas este é um erro comum, não se preocupe! Que tal tentar de novo?"),
	TEXT("Se precisar de uma ajudinha extra, é só clicar na opção de ajuda sobre variáveis!")

];

global.topics[$"ERROR_WRONGVARIABLETYPE"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Hmm, lembre-se, que valores fazem sentido para se dizer se um livro está aberto ou fechado?"),
	TEXT("Acho que esse CARD não é do tipo certo para guardar essa informação..."),
	GOTO("TRY_AGAIN")
];

global.topics[$"ERROR_NOFOOD"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Ei... cadê a ração?"),
	TEXT("Você esqueceu de colocar comida no pote!"),
	GOTO("TRY_AGAIN")
];

global.topics[$"ERROR_NOFILLFOOD"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Ops! Como vou encher o pote se ainda não peguei a ração?"),
	GOTO("TRY_AGAIN")
];

global.topics[$"ERROR_NOPAJAMAS"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Ops! Não estou de pijama ainda..."),
	TEXT("Não consigo dormir assim!"),
	GOTO("TRY_AGAIN")
];

global.topics[$"ERROR_LOOPNEVEREXECUTES"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Opa! Parece que nunca alcançamos o requisito pro loop começar..."),
	GOTO("TRY_AGAIN")
];

global.topics[$"ERROR_WRONGCARDS"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Hmm... Acho que tem algum CARD em algum lugar que não faz sentido ou está em branco..."),
	TEXT("Não consegui entender as instruções."),
];

global.topics[$"ERROR_TOOMANYBITES"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Eita! Acho que comi demais..."),
	TEXT("Agora estou me sentindo mal..."),
	TEXT("Meu patrucionista não vai gostar disso..."),
	GOTO("TRY_AGAIN")
];
global.topics[$"ERROR_NOTENOUGHTBITES"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Xiii... Acho que não comi o suficiente..."),
	GOTO("TRY_AGAIN")
];
global.topics[$"ERROR_NEGATIVEBITES"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Eita! como assim eu tenho um número negativo de mordidas...?"),
	TEXT("Isso não faz sentido..."),
	TEXT("Como será que eu faço isso?"),
	GOTO("TRY_AGAIN")
];

global.topics[$"ERROR_BOWLFULL"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Eita! O pote já está cheio!"),
	TEXT("Se eu o encher novamente, ele vai transbordar!"),
	GOTO("TRY_AGAIN")
];

global.topics[$"ERROR_ALREADYHASFOOD"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Xiii, já estou carregando comida!"),
	TEXT("Não consigo carregar mais..."),
	GOTO("TRY_AGAIN")
];

global.topics[$"ERROR_ALREADYDRESSED"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Hmm... já estou de pijama!"),
	TEXT("Não preciso trocar de roupa de novo..."),
	GOTO("TRY_AGAIN")
];

global.topics[$"ERROR_FARFROMBOWL"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Estou muito longe do pote para o encher..."),
	GOTO("TRY_AGAIN")
];

global.topics[$"ERROR_FARFROMBOWLEAT"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Estou muito longe do pote para conseguir comer..."),
	GOTO("TRY_AGAIN")
];

global.topics[$"ERROR_FARFROMBOX"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Estou muito longe da caixa para pegar comida..."),
	GOTO("TRY_AGAIN")
];

global.topics[$"ERROR_FARFROMBED"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Estou muito longe da cama para conseguir dormir..."),
	GOTO("TRY_AGAIN")
];

global.topics[$"ERROR_FARFROMDRESSER"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Estou muito longe da cômoda para trocar de roupa..."),
	GOTO("TRY_AGAIN")
];


global.topics[$"ERROR_LIGHTALREADYOFF"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("A luz já está apagada!"),
	TEXT("Não preciso apagar de novo..."),
	GOTO("TRY_AGAIN")
	
];

global.topics[$"ERROR_FARFROMLAMP"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Estou muito longe do abajur para apagar a luz..."),
	GOTO("TRY_AGAIN")
	
];

global.topics[$"ERROR_LIGHTISOFFCLOTHES"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Não consigo trocar de roupa com a luz apagada!"),
	TEXT("Vou me enrolar todo..."),
	GOTO("TRY_AGAIN")
	
];

global.topics[$"ERROR_LIGHTON"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Não consigo dormir com a luz acesa..."),
	TEXT("Preciso apagar a luz primeiro!"),
	GOTO("TRY_AGAIN")
	
];

global.topics[$"TRY_AGAIN"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Acho que nos enganamos na ordem dos passos..."),
	TEXT("Que tal tentar outra coisa?")
	
];



//-------INTROS -------
global.topics[$"INTRO_LEVEL1"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Olá! Eu sou o DUCK! Bem-vindo ao mundo da programação!"),
	TEXT("Hoje vamos aprender sobre algo muito importante: as VARIÁVEIS!"),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Variáveis são como caixinhas que guardam informações importantes..."),
	TEXT("Por exemplo: meu nome, seu nome, se o pote está cheio ou vazio..."),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	CHOICE("Gostaria de saber mais sobre variáveis antes, ou começar a jogar?", OPTION("Saber mais", "HELP_VARS1"), OPTION("Começar a jogar", "INTRO_OBJ1"))
	
];

global.topics[$"INTRO_OBJ1"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Bem, para testar seu conhecimento sobre variáveis, vou te dar um desafio!"),
	TEXT("Vou te contar um pouco sobre minha rotina, e quero que me ajude a organizar as informações usando variáveis!"),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Eu acordei hoje e comecei a ler um livro... mas meus óculos estão meio sujos, e não consigo ler direito..."),
	TEXT("Assim, eu li apenas CINCO páginas."),
	TEXT("Depois, desisti de ler e deixei o livro ABERTO..."),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Então, consegue preencher as lacunas com base no que te contei?"),
	TEXT("Quantas páginas eu li? O livro está aberto ou fechado?"),
	TEXT("Que tipo de variável é melhor para guardar cada informação?"),
	TEXT("Conto com você para me ajudar a organizar essas informações usando variáveis!"),

];

global.topics[$"INTRO_LEVEL2"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Olá, de novo! Depois de aprender sobre variáveis, bateu uma fominha..."),
	TEXT("Preciso comer, mas tem um probleminha..."),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Algumas ações só funcionam em certas situações!"),
	TEXT("Por exemplo: só posso comer SE o pote tiver comida."),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Isso se chama CONDICIONAIS! Legal, né?"),
	TEXT("Vamos descobrir juntos a ordem certa dos blocos!")
];

global.topics[$"INTRO_LEVEL3"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Oi de novo! Agora que preparamos minha comida, preciso comer direitinho!"),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Sabe...estou meio gordinho, e meu patrucionista disse que preciso controlar minhas mordidas...Preciso comer 5 mordidas exatas!"),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Que tal me ajudar a controlar minhas mordidas usando LOOPS?"),
	TEXT("Com loops, podemos repetir ações várias vezes de forma prática!"),
];


global.topics[$"INTRO_LEVEL4"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Uau! Você chegou até aqui!"),
	TEXT("Parabéns por aprender tanto sobre programação!"),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Mas... estou me sentindo muito cansado..."),
	TEXT("Exercitamos muito o cérebro hoje! Mas...arrastar esses blocos o tempo todo é cansativo..."),
	TEXT("E se tivesse uma maneira melhor de programar?"),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Com FUNÇÕES, por exemplo! Não precisamos arrastar tantos blocos assim... Definimos uma função uma vez, e podemos usá-la várias vezes!"),
	TEXT("Que tal me ajudar a montar uma função para Dormir?"),
];



//-------SUCESSOS -------

global.topics[$"SUCCESS_LEVEL1"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Isso! Você organizou as informações direitinho usando variáveis!"),
	TEXT("Viu como é importante escolher o tipo certo de variável para cada informação?"),
	TEXT("Assim, meu programa funciona direitinho e sem erros!"),
	TEXT("Parabéns por completar a fase 1! Vejo muito potencial em você! "),
	TEXT("Hmm, que péssimo anfitrião eu fui! Que tal me acompanhar para a cozinha para preparar minha comidinha?"),
	TEXT("Te vejo lá!"),
	ROOM_GOTO(rm_levels)
];


global.topics[$"SUCCESS_LEVEL2"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Isso!"),
	TEXT("Conseguimos preparar tudo corretamente!"),
	TEXT("Parabéns, humano!"),
	TEXT("Tenho uma dieta muito complicada, e preciso comer de um jeito especial...mas te explico melhor na próxima fase, até la!"),
	ROOM_GOTO(rm_levels)
];

global.topics[$"SUCCESS_LEVEL3"] = [	
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Uau! Conseguimos controlar minhas mordidas direitinho!"),
	TEXT("Agora estou me sentindo ótimo!"),
	TEXT("Vou ficar em forma assim! Bonitão para impressionar as patinhas!"),
	TEXT("Obrigado por me ajudar a comer de forma saudável!"),
	ROOM_GOTO(rm_levels)
];

global.topics[$"SUCCESS_LEVEL4"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Hmmm...Tudo certinho para dormir!"),
	TEXT("Adorei o pijama quentinho!"),
	TEXT("E o quarto está bem escurinho..."),
	TEXT("Agora sim, posso descansar bem!"),
	TEXT("Obrigado por me ajudar, humano!"),
	GOTO("FINAL_DIALOGUE")
];
//-------DIÁLOGO FINAL -------
global.topics[$"FINAL_DIALOGUE"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Aprendemos tanto juntos hoje!"),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Programar não é tão fácil quanto parece..."),
	TEXT("Mas com prática, tudo fica mais simples!"),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Obrigado por me ajudar a aprender! Espero te ver de novo em breve!"),
	TEXT("Até a próxima aventura de programação!"),
	ROOM_GOTO(menu)
];
//-------AJUDA -------

global.topics[$"HELP_LEVEL1"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Está com dúvidas? Sem problemas!"),
	CHOICE("Com o que posso te ajudar?", OPTION("Variáveis", "HELP_VARS"), OPTION("Objetivo da fase", "HELP_OBJLEVEL1"))
];



global.topics[$"HELP_LEVEL2"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Está com dúvidas? Sem problemas!"),
	CHOICE("Com o que posso te ajudar?", OPTION("Condicionais", "HELP_CONDICIONAIS"), OPTION("Objetivo da fase", "HELP_OBJLEVEL2"))
];

global.topics[$"HELP_LEVEL3"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Está com dúvidas? Sem problemas!"),
	CHOICE("Com o que posso te ajudar?", OPTION("Loops", "HELP_LOOPS"), OPTION("Objetivo da fase", "HELP_OBJLEVEL3"), OPTION("Operadores", "HELP_OPERATORS"))
];


global.topics[$"HELP_LEVEL4"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Está com dúvidas? Sem problemas!"),
	CHOICE("Com o que posso te ajudar?", OPTION("Funções", "HELP_FUNCOES"), OPTION("Objetivo da fase", "HELP_OBJLEVEL4"))
];


global.topics[$"HELP_OBJLEVEL1"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Bem, para te ajudar a entender melhor as váriaveis, vou te contar um pouco sobre minha rotina, e quero que me ajude a organizar as informações usando variáveis!"),
	TEXT("Eu acordei hoje e comecei a ler um livro... mas meus óculos estão meio sujos, e não consigo ler direito..."),
	TEXT("Assim, eu li apenas CINCO páginas."),
	TEXT("Depois, desisti de ler e deixei o livro ABERTO..."),
	TEXT("Então, consegue preencher as lacunas com base no que te contei?"),
	TEXT("Quantas páginas eu li? O livro está aberto ou fechado?"),
	TEXT("Que tipo de variável é melhor para guardar cada informação?"),
	TEXT("O tipo de uma variável é super importante! Se eu quiser guardar um número, preciso usar uma variável de NÚMERO... se eu quiser guardar uma palavra, preciso usar uma variável de STRING..."),
	TEXT("Assim, meu programa funciona direitinho e sem erros!"),
	TEXT("Caso precise de mais ajuda sobre varíaveis e seus tipos, é só clicar na opção de ajuda sobre variáveis!")
	
];

global.topics[$"HELP_OBJLEVEL2"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Estou com muuuita fome! Meu objetivo é simples: eu quero COMER!"),
	TEXT("Mas não é só chegar e comer... preciso me preparar antes."),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Primeiro, preciso PEGAR a comida na caixinha."),
	TEXT("Depois, preciso ENCHER meu potinho com a comida."),
	TEXT("E só então posso finalmente COMER! Que delícia!"),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Mas lembre-se: algumas ações só funcionam em certas situações..."),
	TEXT("Use sua lógica para descobrir a ordem certa!")
];

global.topics[$"HELP_OBJLEVEL3"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Estou me sentindo ótimo depois de comer!"),
	TEXT("Mas preciso cuidar da minha alimentação..."),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Meu objetivo é simples: preciso comer exatamente 5 mordidas!"),
	TEXT("Nem mais, nem menos... exatamente 5!"),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Com loops, podemos repetir a ação de comer várias vezes de forma prática!"),
	TEXT("Que tal me ajudar a controlar minhas mordidas usando loops?")
];

global.topics[$"HELP_OBJLEVEL4"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Estou me sentindo muito cansado... Meu objetivo é simples: eu quero DORMIR!"),
	TEXT("Mas não é só chegar e dormir... tenho alguns hábitos muito específicos!"),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Primeiro, preciso TROCAR DE ROUPA e vestir meu pijama quentinho."),
	TEXT("Depois, preciso APAGAR A LUZ para o quarto ficar bem escurinho."),
	TEXT("E só então posso finalmente DEITAR NA CAMA e dormir! "),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Mas lembre-se: só consigo dormir se fizer tudo na ordem certa!"),
	TEXT("Sem pijama, com a luz acesa ou fora da cama... não rola dormir!"),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Com FUNÇÕES, podemos agrupar esses 3 passos em uma só: dormir()!"),
	TEXT("Que tal me ajudar a montar essa função para Dormir?"),
];

global.topics[$"HELP_FUNCOES"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Funções são como receitas de bolo na programação!"),
	TEXT("Imagine que você tem uma receita favorita que usa sempre. Em vez de escrever todos os ingredientes e passos toda vez..."),
	TEXT("Você simplesmente fala: 'Vou fazer aquela receita de chocolate!' e já sabe exatamente o que fazer!"),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Na programação é igual! Uma função é um conjunto de comandos que fazem uma tarefa específica."),
	TEXT("Por exemplo: para eu dormir, preciso apagar a luz, trocar de roupa, deitar na cama..."),
	TEXT("Em vez de escrever esses passos toda vez, posso criar uma função chamada 'dormir()'!"),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Dentro desta função, coloco todos os passos: apagar a luz + trocar de roupa + deitar na cama..."),
	TEXT("Assim, sempre que eu quiser dormir, é só chamar 'dormir()' e pronto!"),
	TEXT("Todos os passos acontecem automaticamente, na ordem certa!"),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("As funções nos ajudam de várias maneiras importantes:"),
	TEXT("1. ORGANIZAÇÃO: O código fica mais limpo e fácil de entender"),
	TEXT("2. REUTILIZAÇÃO: Escrevemos uma vez, usamos quantas vezes quisermos"),
	TEXT("3. MENOS ERROS: Se der erro, consertamos só em um lugar!"),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("É como ter um assistente super eficiente que já sabe fazer as tarefas complexas!"),
];

global.topics[$"HELP_LOOPS"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Loops são super úteis na programação!"),
	TEXT("Eles nos ajudam a repetir ações várias vezes sem precisar escrever o mesmo código várias vezes."),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Imagine que eu quero comer 5 mordidas de comida..."),
	TEXT("Em vez de escrever 'comer()' 5 vezes, posso usar um loop para repetir essa ação!"),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Existem diferentes tipos de loops, como o WHILE, mas o mais comum é o LOOP FOR."),
	TEXT("Um loop FOR tem 3 partes importantes:"),
	TEXT("1. INÍCIO: Onde começamos? (exemplo: i = 0)"),
	TEXT("2. CONDIÇÃO: Até quando rodamos? (exemplo: enquanto i < 5)"),
	TEXT("3. MUDANÇA: Como mudamos a cada volta? (exemplo: i = i + 1)"),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Por exemplo: for(i=0; i<5; i++) significa:"),
	TEXT("'Comece com i=0, rode enquanto i for menor que 5, e some 1 ao i a cada volta'"),
	TEXT("Isso roda exatamente 5 vezes: quando i=0, 1, 2, 3, 4!"),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Se eu mudar alguma parte, o resultado muda completamente:"),
	TEXT("Por isso é importante escolher os operadores certos!"),
];

global.topics[$"HELP_CONDICIONAIS"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Ah, as condicionais! São super importantes na programação!"),
	TEXT("Imagine que é como tomar uma decisão: SE isso acontecer, ENTÃO faça aquilo."),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Por exemplo: SE meu pote estiver vazio, ENTÃO eu só posso fazer certas coisas..."),
	TEXT("Mas SE meu pote estiver cheio, ENTÃO posso fazer outras coisas diferentes!"),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("É como ter regras inteligentes que mudam conforme a situação!"),
	TEXT("Alguns blocos só funcionam em certas condições. Preste atenção!")
];


global.topics[$"HELP_VARS1"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Claro! Variáveis são super importantes na programação!"),
	TEXT("Existem diferentes TIPOS de variáveis. Deixe-me te explicar os principais:"),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("STRING (texto): Guarda palavras entre aspas, como 'nome = \"Ana\"' ou 'cor = \"azul\"'"),
	TEXT("NÚMERO: Guarda valores matemáticos, como 'idade = 15' ou 'pontos = 100'"),
	TEXT("BOOLEAN: Guarda apenas VERDADEIRO ou FALSO, como 'tem_fome = verdadeiro' ou  'livro_aberto = falso'"),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Aqui está a diferença importante: 5 ≠ \"cinco\""),
	TEXT("O número 5 pode ser usado em cálculos: 5 + 3 = 8"),
	TEXT("Mas \"cinco\" é apenas texto! Não dá para somar: \"cinco\" + 3 = erro!"),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Por isso é importante escolher o tipo certo de variável!"),
	TEXT("Assim, seu programa funciona direitinho e sem erros!"),
	GOTO("INTRO_OBJ1")
];


global.topics[$"HELP_VARS"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Claro! Variáveis são super importantes na programação!"),
	TEXT("Existem diferentes TIPOS de variáveis. Deixe-me te explicar os principais:"),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("STRING (texto): Guarda palavras entre aspas, como 'nome = \"Ana\"' ou 'cor = \"azul\"'"),
	TEXT("NÚMERO: Guarda valores matemáticos, como 'idade = 15' ou 'pontos = 100'"),
	TEXT("Números podem ser classificados em INTEIROS (int) (sem vírgula, como 5 ou -3) e DECIMAIS (float) (com vírgula, como 3.14 ou -0.5)"),
	TEXT("BOOLEAN: Guarda apenas VERDADEIRO ou FALSO, como 'tem_fome = verdadeiro' ou  'livro_aberto = falso'"),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Aqui está a diferença importante: 5 ≠ \"cinco\""),
	TEXT("O número 5 pode ser usado em cálculos: 5 + 3 = 8"),
	TEXT("Mas \"cinco\" é apenas texto! Não dá para somar: \"cinco\" + 3 = erro!"),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Por isso é importante escolher o tipo certo de variável!"),
	TEXT("Assim, seu programa funciona direitinho e sem erros!")
];

global.topics[$"HELP_OPERATORS"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Operadores são símbolos especiais que usamos para fazer comparações ou operações matemáticas!"),
	TEXT("Existem dois tipos principais:"),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("1. OPERADORES DE COMPARAÇÃO: Comparam dois valores e retornam VERDADEIRO ou FALSO."),
	TEXT("Exemplos:"),
	TEXT("== (igual a): Verifica se dois valores são iguais. Ex: 5 == 5 é VERDADEIRO"),
	TEXT("!= (diferente de): Verifica se dois valores são diferentes. Ex: 5 != 3 é VERDADEIRO"),
	TEXT("< (menor que): Verifica se um valor é menor que outro. Ex: 3 < 5 é VERDADEIRO"),
	TEXT("<= (menor ou igual a): Verifica se um valor é menor ou igual a outro. Ex: 5 <= 5 é VERDADEIRO"),
	TEXT("> (maior que): Verifica se um valor é maior que outro. Ex: 7 > 5 é VERDADEIRO"),
	TEXT(">= (maior ou igual a): Verifica se um valor é maior ou igual a outro. Ex: 5 >= 5 é VERDADEIRO"),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("2. OPERADORES ARITMÉTICOS: Usados para fazer cálculos matemáticos."),
	TEXT("Exemplos:"),
	TEXT("+ (adição): Soma dois valores. Ex: 5 + 3 = 8"),
	TEXT("- (subtração): Subtrai um valor de outro. Ex: 5 - 2 = 3"),
	TEXT("* (multiplicação): Multiplica dois valores. Ex: 4 * 2 = 8"),
	TEXT("/ (divisão): Divide um valor por outro. Ex: 8 / 2 = 4"),
];