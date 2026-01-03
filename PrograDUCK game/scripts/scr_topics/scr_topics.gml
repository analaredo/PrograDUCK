global.topics = {};

//-------ERROS -------
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

global.topics[$"TRY_AGAIN"] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Acho que nos enganamos na ordem dos passos..."),
	TEXT("Que tal tentar outra coisa?")
	
];



//-------INTROS -------
global.topics[$"INTRO_LEVEL0"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Olá! Eu sou o DUCK! Bem-vindo ao mundo da programação!"),
	TEXT("Hoje vamos aprender sobre algo muito importante: as VARIÁVEIS!"),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Variáveis são como caixinhas que guardam informações importantes..."),
	TEXT("Por exemplo: meu nome, seu nome, se o pote está cheio ou vazio..."),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	CHOICE("Gostaria de saber mais sobre variáveis ou começar a jogar?", OPTION("Saber mais", "HELP_VARS"), OPTION("Começar a jogar", ""))
	
];

global.topics[$"INTRO_LEVEL1"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Olá! Eu sou o DUCK, e estou com fome!"),
	TEXT("Preciso comer, mas tem um probleminha..."),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Alguns blocos só funcionam em certas situações!"),
	TEXT("Por exemplo: só posso comer se o pote tiver comida."),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Isso se chama CONDICIONAIS! Legal, né?"),
	TEXT("Vamos descobrir juntos a ordem certa dos blocos!")
];





//-------SUCESSOS -------
global.topics[$"SUCESS_EATING"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Sim!"),
	TEXT("Consegui comer minha ração!"),
	TEXT("Parabéns, humano!")
];

//-------AJUDA -------
global.topics[$"HELP_LEVEL1"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Está com dúvidas? Sem problemas!"),
	CHOICE("Com o que posso te ajudar?", OPTION("Condicionais", "HELP_CONDICIONAIS"), OPTION("Objetivo da fase", "HELP_OBJLEVEL1"))
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

global.topics[$"HELP_OBJLEVEL1"] = [
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

global.topics[$"HELP_VARS"] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Claro! Variáveis são super importantes na programação!"),
	TEXT("Existem diferentes TIPOS de variáveis. Deixe-me te explicar os principais:"),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("STRING (texto): Guarda palavras entre aspas, como 'nome = \"Ana\"' ou 'cor = \"azul\"'"),
	TEXT("NÚMERO: Guarda valores matemáticos, como 'idade = 15' ou 'pontos = 100'"),
	TEXT("BOOLEAN: Guarda apenas VERDADEIRO ou FALSO, como 'tem_fome = verdadeiro'"),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Aqui está a diferença importante: 5 ≠ \"cinco\""),
	TEXT("O número 5 pode ser usado em cálculos: 5 + 3 = 8"),
	TEXT("Mas \"cinco\" é apenas texto! Não dá para somar: \"cinco\" + 3 = erro!"),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Por isso é importante escolher o tipo certo de variável!"),
	TEXT("Assim, seu programa funciona direitinho e sem erros!")
];

