global.topics = {};

global.topics[DuckTopics.ERROR_NOFOOD] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Ei... cadê a ração?"),
	TEXT("Você esqueceu de colocar comida no pote!"),
	TEXT("Tente novamente!")
];

global.topics[DuckTopics.ERROR_BOWLFULL] = [
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Eita! O pote já está cheio!"),
	TEXT("Se eu o encher, ele vai transbordar!"),
	TEXT("Que tal tentar outra coisa?")
];

global.topics[DuckTopics.SUCESS_EATING] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Sim!"),
	TEXT("Consegui comer minha ração!"),
	TEXT("Parabéns, humano!")
];

global.topics[DuckTopics.INTRO_FASE1] = [
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Olá, humano!"),
	TEXT("Eu sou o DUCK, seu amigo pato programador!"),
	TEXT("Vamos aprender a programar juntos?"),
	SPEAKER("DUCK", portrait_duck_confused, PORTRAIT_SIDE.LEFT),
	TEXT("Estou tentando comer minha ração, mas não estou conseguindo..."),
	TEXT("Você pode me ajudar?"),
	SPEAKER("DUCK", portrait_duck_happy, PORTRAIT_SIDE.LEFT),
	TEXT("Tenho certeza que você consegue!"),
	TEXT("Arraste e solte os blocos de ação para me ajudar!")
];