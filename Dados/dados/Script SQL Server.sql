CREATE TABLE Tipo (
	Id	    INT NOT NULL IDENTITY,
    Nome    VARCHAR(30) NOT NULL,
    Cor     VARCHAR(25),
    PRIMARY KEY (Id)
);

CREATE TABLE Genero (
	Id	    INT NOT NULL IDENTITY,
    Nome    VARCHAR(30) NOT NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE Regiao (
	Id	    INT NOT NULL IDENTITY,
    Nome    VARCHAR(30) NOT NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE Pokemon (
 	Numero 		  INT NOT NULL,
    RegiaoId      INT NOT NULL,
    GeneroId      INT NOT NULL,
    Nome 		  VARCHAR(30) NOT NULL,
    Descricao     VARCHAR(1000),
    Altura 		  DECIMAL(5,2) NOT NULL, -- 999,99
    Peso	      DECIMAL(7,3) NOT NULL, -- 9999,999
    Imagem 		  VARCHAR(200),
    Animacao	  VARCHAR(400),
    PRIMARY KEY (Numero)
);
  
ALTER TABLE Pokemon ADD CONSTRAINT FK_Pokemon_Regiao
  FOREIGN KEY (RegiaoId) REFERENCES Regiao(Id);
  
ALTER TABLE Pokemon ADD CONSTRAINT FK_Pokemon_Genero
  FOREIGN KEY (GeneroId) REFERENCES Genero(Id);


CREATE TABLE PokemonTipo (
	PokemonNumero	INT NOT NULL,
    TipoId			INT NOT NULL,
    PRIMARY KEY(PokemonNumero, TipoId)
);

ALTER TABLE PokemonTipo ADD CONSTRAINT FK_PokemonTipo_Pokemon
  FOREIGN KEY(PokemonNumero) REFERENCES Pokemon(Numero);

ALTER TABLE PokemonTipo ADD CONSTRAINT FK_PokemonTipo_Tipo
  FOREIGN KEY(TipoId) REFERENCES Tipo(Id);


-- COMANDO DML - INSERT, UPDATE e DELETE
INSERT INTO Tipo(Nome, Cor) VALUES
('Aço','rgba(170, 170, 187, 1)'),
('Água','rgba(51, 153, 255, 1)'),
('Dragão','rgba(119, 102, 238, 1)'),
('Elétrico','rgba(255, 204, 51, 1)'),
('Fada','rgba(238, 153, 238, 1)'),
('Fantasma','rgba(102, 102, 187, 1)'),
('Fogo','rgba(255, 68, 34, 1)'),
('Gelo','rgba(102, 204, 255, 1)'),
('Inseto','rgba(170, 187, 34, 1)'),
('Lutador','rgba(187, 85, 68, 1)'),
('Normal','rgba(170, 170, 153, 1)'),
('Pedra','rgba(187, 170, 102, 1)'),
('Planta','rgba(119, 204, 85, 1)'),
('Psíquico','rgba(255, 85, 153, 1)'),
('Sombrio','rgba(119, 85, 68, 1)'),
('Terrestre','rgba(221, 187, 85, 1)'),
('Venenoso','rgba(170, 85, 153, 1)'),
('Voador','rgba(136, 153, 255, 1)');

INSERT INTO Genero(Nome) VALUES
('Masculino'),
('Feminino'),
('Masculino e Feminino'),
('Desconhecido');

INSERT INTO Regiao(Nome) VALUES
('Kanto (1ª Geração)'),
('Johto (2ª Geração)'),
('Hoenn (3ª Geração)'),
('Sinnoh (4ª Geração)'),
('Unova (5ª Geração)'),
('Kalos (6ª Geração)'),
('Alola (7ª Geração)'),
('Galar (8ª Geração)');

INSERT INTO Pokemon VALUES
(1, 1, 3, 'Bulbasaur', 'Bulbasaur pode ser visto cochilando sob luz solar intensa. Há uma semente em suas costas. Ao absorver os raios do sol, sua semente cresce progressivamente.', 0.7, 6.9, '\img\pokemons\001.png', 'https://cdn.jsdelivr.net/gh/heypikachu/pokedex@main/BULBASAUR-TESTE.gif'),
(2, 1, 3, 'Ivysaur', 'Há um broto nas costas desse Pokémon. Para suportar seu peso, as pernas e o tronco de Ivysaur ficam grossos e fortes. Se começar a passar mais tempo deitado sob a luz do sol, é um sinal de que o broto florescerá em uma flor grande em breve.', 1, 13, '\img\pokemons\002.png', 'https://1.bp.blogspot.com/-DDpPb4HZVnY/YGhK9EFII6I/AAAAAAAAVOY/8naDqtCCHYU2MoowlS3OfYTw_YLSDyA_wCLcBGAsYHQ/s0/Ivysaur.gif'),
(3, 1, 3, 'Venusaur', 'Há uma flor grande nas costas de Venusaur. Diz-se que a flor adquire cores vivas se receber muita nutrição e luz solar. O aroma da flor acalma as emoções das pessoas.', 2, 100, '\img\pokemons\003.png', 'https://1.bp.blogspot.com/-zm9x6OM-RTU/YGhQEC4hmaI/AAAAAAAAVOo/NYlvcKp_pk4ByZIK4iKBVXNLztTvrPl3wCLcBGAsYHQ/s0/Venusaur.gif'),
(4, 1, 3, 'Charmander', 'A chama que queima na ponta da cauda é uma indicação de suas emoções. A chama tremula quando Charmander está se divertindo. Se o Pokémon se enfurecer, a chama queima ferozmente.', 0.6, 8.5, '\img\pokemons\004.png', 'https://1.bp.blogspot.com/-MYtmyCfdo6w/YGhUtxrcIBI/AAAAAAAAVO0/L7jOvhQef7kpTz06MPgrMkr0CDIuMRGhACLcBGAsYHQ/s0/Charmander.gif'),
(5, 1, 3, 'Charmeleon', 'Charmeleon impiedosamente destrói seus inimigos usando suas garras afiadas. Se encontrar um inimigo forte, ele se torna agressivo. Nesse estado excitado, a chama na ponta de sua cauda brilha com uma cor branca azulada.', 1.1, 19, '\img\pokemons\005.png', 'https://1.bp.blogspot.com/-_TRFfGklzGM/YGhXXXRL6WI/AAAAAAAAVO8/ep2dRYIDDqI79Vje2C8YxMHNcxiqqb3SACLcBGAsYHQ/s0/Charmeleon.gif'),
(6, 1, 3, 'Charizard', 'Charizard voa pelo céu em busca de oponentes poderosos. Ele respira um calor tão grande que derrete qualquer coisa. No entanto, nunca dá um sopro ardente a qualquer oponente mais fraco que ele.', 1.7, 90.5, '\img\pokemons\006.png', 'https://1.bp.blogspot.com/-AFTQs9XdE1E/YGhh060IA0I/AAAAAAAAVPI/UlABIHCfRtkpsefma4OhYlegjgEXSdt7ACLcBGAsYHQ/s0/Charizard.gif'),
(7, 1, 3, 'Squirtle', 'A concha de Squirtle não é apenas usada para proteção. A forma arredondada da concha e as ranhuras na superfície ajudam a minimizar a resistência na água, permitindo que este Pokémon nade em alta velocidade.', 0.5, 9, '\img\pokemons\007.png', 'https://1.bp.blogspot.com/-VFgGoEPugz8/YGhm4GeMS7I/AAAAAAAAVPk/h1lzAavDpGYQRVDQ_bmffdih-0OPi8RrACLcBGAsYHQ/s0/Squirtle.gif'),
(8, 1, 3, 'Wartortle', 'Sua cauda é grande e coberta com um pêlo rico e grosso. A cauda torna-se cada vez mais profunda na cor à medida que Wartortle envelhece. Os arranhões em sua concha são uma evidência da dureza deste Pokémon como um lutador.', 1, 22.5, '\img\pokemons\008.png', 'https://1.bp.blogspot.com/-a010P6CYRP4/YGhpHjMpnQI/AAAAAAAAVPs/oH1iTUT-IKwjETIH0hC1uajoGZE9YQr-ACLcBGAsYHQ/s0/Wartortle.gif'),
(9, 1, 3, 'Blastoise', 'Blastoise tem bicos de água que se projetam de sua concha. Os bicos de água são muito precisos. Eles podem disparar balas de água com precisão suficiente para atingir latas vazias a uma distância de mais de 60 metros.', 1.6, 85.5, '\img\pokemons\009.png', 'https://1.bp.blogspot.com/-2BhwQx4M_6w/YGhqitEqDtI/AAAAAAAAVP0/Qmb31Ng98FoF7hiuML-IBo4vGaiPyZP6gCLcBGAsYHQ/s0/Blastoise.gif'),
(10, 1, 3, 'Caterpie', 'Caterpie tem um apetite voraz. Ele pode devorar folhas maiores que seu corpo diante dos seus olhos. De sua antena, este Pokémon libera um odor terrivelmente forte.', 0.3, 2.9, '\img\pokemons\010.png',  'https://1.bp.blogspot.com/-Fumcx5TIQWs/Xwu2KrJOweI/AAAAAAAAMhg/Diyyd5SGyv88QfWvNHeVueHCO13Tfr2hACLcBGAsYHQ/s66/010-atk.gif'),
(11, 1, 3, 'Metapod', 'A concha que cobre o corpo deste Pokémon é tão dura quanto uma laje de ferro. Metapod não se move muito. Ele fica parado porque está preparando suas entranhas suaves para a evolução dentro da casca dura.', 0.7, 9.9, '\img\pokemons\011.png',  'https://1.bp.blogspot.com/-T8wLhcbz_7g/XvjFUb1bhLI/AAAAAAAAHx8/qAfCzSKj4hcnWXW2xnRvVgkD7P0ak0hqgCK4BGAsYHg/s54/011.gif'),
(12, 1, 3, 'Butterfree', 'Butterfree tem uma capacidade superior para procurar mel delicioso de flores. Pode até procurar, extrair e transportar mel de flores que estão desabrochando a mais de 10 quilômetros do ninho.', 1.1, 32, '\img\pokemons\012.png',  'https://1.bp.blogspot.com/-9NyN_gjAU0I/XvjHdukE52I/AAAAAAAAHy0/_IciYZd6R5kY2uUExDSGvDvp8I2pPUx2ACK4BGAsYHg/s90/012.gif'),
(13, 1, 3, 'Weedle', 'Weedle tem um olfato extremamente agudo. Ele é capaz de distinguir seus tipos favoritos de folhas daqueles de que não gosta, apenas farejando com sua grande tromba vermelha (nariz).', 0.3, 3.2, '\img\pokemons\013.png',  'https://1.bp.blogspot.com/-3K7O5JiR_P8/Xwu4llcP2mI/AAAAAAAAMiE/6VhRWykPbccy_66BT28CLv0lSVVUX8cmACLcBGAsYHQ/s60/013-atk.gif'),
(14, 1, 3, 'Kakuna', 'Kakuna permanece praticamente imóvel enquanto se agarra a uma árvore. No entanto, por dentro, é extremamente ocupado, enquanto se prepara para a sua evolução futura. Isso é evidente pelo quão quente a concha fica ao ser tocada.', 0.6, 10,  '\img\pokemons\014.png', 'https://1.bp.blogspot.com/-umsGc-70ydk/XvjLJXF9T7I/AAAAAAAAH0I/Qp05OJt77lUU--PJrj-ZaUPTj61bc2wRgCK4BGAsYHg/s58/014.gif'),
(15, 1, 3, 'Beedrill', 'Beedrill é extremamente territorial. Ninguém deve se aproximar de seu ninho, isso é para sua própria segurança. Se irritados, eles atacarão em um enxame furioso.', 1, 29.5, '\img\pokemons\015.png',  'https://1.bp.blogspot.com/-zgR_3vXWkTw/XvjOtPATytI/AAAAAAAAH0w/FgEZ99dMgPgY4SHM2ijt3HOtfSTuwntdgCK4BGAsYHg/s86/015.gif'),
(16, 1, 3, 'Pidgey', 'Pidgey tem um senso de direção extremamente nítido. Ela é capaz de voltar para o seu ninho de forma infalível, por mais longe que possa ser removida de seu ambiente familiar.', 0.3, 1.8, '\img\pokemons\016.png',  'https://1.bp.blogspot.com/-7dhH8dX0xRA/XvjUV0gz-EI/AAAAAAAAH10/UUtPBDfK058QOawavBVz33HBWKhowcSPACK4BGAsYHg/s49/016.gif'),
(17, 1, 3, 'Pidgeotto', 'Pidgeotto reivindica uma grande área como seu próprio território. Este Pokémon voa, patrulhando seu espaço de vida. Se seu território é violado, não mostra piedade de punir completamente o inimigo com suas garras afiadas.', 1.1, 30, '\img\pokemons\017.png',  'https://1.bp.blogspot.com/-39-gRA22-gU/XvjqsG3kz6I/AAAAAAAAH5I/tKliQB2guFwcfv2e-GQMtdO3WJJRHABqQCK4BGAsYHg/s115/017.gif'),
(18, 1, 3, 'Pidgeot', 'Este Pokémon tem uma plumagem deslumbrante de penas maravilhosamente brilhantes. Muitos treinadores são cativados pela impressionante beleza das penas em sua cabeça, obrigando-os a escolher Pidgeot como seu Pokémon.', 1.5, 39.5, '\img\pokemons\018.png',  'https://1.bp.blogspot.com/-x8q5nmG8cJk/Xwu7-5l27GI/AAAAAAAAMi0/ofakCvDIFK06415u6PQp0CgfSyLF4LeTQCLcBGAsYHQ/s143/018-atk.gif'),
(19, 1, 3, 'Rattata', 'Seus dentes crescem continuamente ao longo de sua vida. Se seus incisivos ficarem muito longos, esse Pokémon se torna incapaz de comer e morre de fome.', 0.3, 3.5, '\img\pokemons\019.png', 'https://1.bp.blogspot.com/-V1tOK0qGKGw/Xvj9Hv6DuQI/AAAAAAAAH-A/xKbvO2Zhih0WnoFow-kdD3Sx1UAaBaaygCK4BGAsYHg/s61/019.gif'),
(20, 1, 3, 'Raticate', 'As presas fortes de Raticate crescem constantemente. Para mantê-los triturados, roem pedras e troncos. Pode até mastigar as paredes das casas. Seus bigodes são essenciais para manter o seu equilíbrio. Não importa o quão amigável você seja, ele ficará com raiva e o morderá se tocar em seus bigodes.', 0.7, 18.5, '\img\pokemons\020.png', 'https://1.bp.blogspot.com/-SUh1YpzuuJo/XvkJHWc82QI/AAAAAAAAIBE/91MUkQtfSIYG1cy77SUlTogzf1tBdAIFwCK4BGAsYHg/s68/020.gif'),
(21, 1, 3, 'Spearow', 'Seu grito alto pode ser ouvido a mais de 800 metros de distância. Se seu grito alto e agudo for ouvido ecoando por toda parte, é um sinal de que eles estão alertando um ao outro sobre o perigo.', 0.3, 2, '\img\pokemons\021.png', 'https://1.bp.blogspot.com/-KniLPetD-6Y/XvkWl-X8TsI/AAAAAAAAIC4/KeTyyXstR4A2qSdxs-5KZl8HWR0kk2srACK4BGAsYHg/s52/021.gif'),
(22, 1, 3, 'Fearow', 'Não há nenhum problema em voar continuamente por um dia inteiro carregando uma carga pesada. O medo é reconhecido pelo pescoço longo e pelo bico alongado. Eles são convenientemente modelados para capturar presas no solo ou na água. Ele habilmente move seu bico longo e magro para colher presas.', 1.2, 38, '\img\pokemons\022.png', 'https://1.bp.blogspot.com/-tyBI2Im63oU/Xvkf9lhgJOI/AAAAAAAAIF0/MeH2Ykx97OIMoJyoc_RU65uXzRtUEG_0gCK4BGAsYHg/s148/022.gif'),
(23, 1, 3, 'Ekans', 'Ekans se enrola em espiral enquanto descansa. Assumindo essa posição, ele pode responder rapidamente a uma ameaça de qualquer direção com um brilho na cabeça erguida. Quanto mais velho fica, mais cresce. À noite, envolve seu corpo comprido em volta dos galhos das árvores para descansar.', 2, 6.9, '\img\pokemons\023.png', 'https://1.bp.blogspot.com/-8N0H88GjJXc/Xvk4GeaqLAI/AAAAAAAAIH4/BEdYsjjP2QUckVHz7os1fLyuDoOItZ2mwCK4BGAsYHg/s46/023.gif'),
(24, 1, 3, 'Arbok', 'Este Pokémon é terrivelmente forte para contrair as coisas com seu corpo. Pode até achatar tambores de óleo de aço. Uma vez que Arbok envolve seu corpo em torno de seu inimigo, é impossível escapar do abraço esmagador.', 3.5, 65, '\img\pokemons\024.png', 'https://1.bp.blogspot.com/-LHojHNyZUBo/XvlANe6XhWI/AAAAAAAAIJw/OvxF6zl6x-QVKFrd7fy0eiev3jMVX-THQCK4BGAsYHg/s87/024.gif'),
(25, 1, 3, 'Pikachu', 'É de sua natureza armazenar eletricidade. Ele se sente estressado de vez em quando se não conseguir descarregar completamente sua eletricidade. É o mais popular de toda franquia Pokémon!', 0.4, 6, '\img\pokemons\025.png', 'https://1.bp.blogspot.com/-qZ-ed_Tyuec/Xwvi_AQOc2I/AAAAAAAAMkU/YwiAkOM8xyIWCZrU9EiKJbar5hMka6YUgCLcBGAsYHQ/s117/025-atk.gif'),
(26, 1, 3, 'Raichu', 'À medida que a eletricidade se acumula dentro de seu corpo, ela se torna mais agressiva. Uma teoria é que o acúmulo de eletricidade está realmente causando estresse.', 0.8, 30, '\img\pokemons\026.png', 'https://1.bp.blogspot.com/-cOr4vkD8LWM/Xvn1FurcppI/AAAAAAAAIQk/GjJcWeg5ViMYXNEPVyp3nQd3iTtQQC7SQCK4BGAsYHg/s103/026.gif'),
(27, 1, 3, 'Sandshrew', 'Sandshrew tem uma pele muito seca que é extremamente resistente. Ele pode rolar virando uma bola que repele qualquer ataque do inimigo. À noite, ele se enterra na areia do deserto para dormir.', 0.6, 12, '\img\pokemons\027.png', 'https://1.bp.blogspot.com/-mSnW6RL22gg/XvoCUfDjZgI/AAAAAAAAIS4/MGUs8I1uUcQjb5uysLCY7QpyYxmvW4qpwCK4BGAsYHg/s47/027.gif'),
(28, 1, 3, 'Sandslash', 'O corpo do Sandslash é coberto por pontas duras, que são seções endurecidas de sua pele. Uma vez por ano, os picos antigos caem, para serem substituídos por novos picos que crescem por baixo dos antigos. Graças às suas garras grossas, é bom em escalar árvores. Existem muitos Sandslash que se estacionam nas árvores e vão dormir.', 1, 29.5, '\img\pokemons\028.png', 'https://1.bp.blogspot.com/-iZWftBmPEeA/XvtjczWjGjI/AAAAAAAAIyA/5JWL_AJ_VrMzSQnYaFndG85gUAiuLMdxgCK4BGAsYHg/s68/028.gif'),
(29, 1, 2, 'Nidoran♀', 'Suas farpas altamente tóxicas se desenvolveram como proteção para este Pokémon de corpo pequeno. Quando enfurecido, libera uma toxina horrível do chifre.', 0.4, 7, '\img\pokemons\029.png', 'https://1.bp.blogspot.com/-EwKY9yjK_1E/XwHrvlIURvI/AAAAAAAAJzw/kQdCN7bbW4IXHFrTlVo-zbZdq7HPP3RfwCK4BGAsYHg/s43/029.gif'),
(30, 1, 2, 'Nidorina', 'Quando Nidorina está com seus amigos ou familiares, eles mantêm suas farpas afastadas para evitar se machucar. Este Pokémon parece ficar nervoso se separado dos outros. A fêmea tem um temperamento suave. Emite gritos ultrassônicos que têm o poder de confundir os inimigos.', 0.8, 20, '\img\pokemons\030.png', 'https://1.bp.blogspot.com/-52kCgNgGZc0/XwI69f4cqMI/AAAAAAAAKEg/xSFPyBSksi85Ny1l_0LO_INI2VM76HO2QCK4BGAsYHg/s56/030.gif'),
(31, 1, 2, 'Nidoqueen', 'O corpo de Nidoqueen é envolvido em escamas extremamente duras. É hábil em enviar inimigos voando com agressões severas. Este Pokémon é mais forte quando defende seus filhotes. Se ficar excitada, as agulhas se arrepiam para fora.', 1.3, 60, '\img\pokemons\031.png', 'https://1.bp.blogspot.com/-RLgUjAhjoOs/XwJHhH0u1II/AAAAAAAAKME/eVbqEITKF6IdxF6PlZymaQ2wh2LtnSLfwCK4BGAsYHg/s82/031.gif'),
(32, 1, 1, 'Nidoran♂', 'O Nidoran macho desenvolveu músculos para mover seus ouvidos. Graças a eles, os ouvidos podem ser movidos livremente em qualquer direção. Mesmo o menor som não escapa à atenção deste Pokémon.', 0.5, 9, '\img\pokemons\032.png', 'https://1.bp.blogspot.com/-fizz4pmo3Gg/XwJdghCKdJI/AAAAAAAAKVM/vsMV2Job0kAw8ipFvg_mY5oZzvSBWdnygCK4BGAsYHg/s52/032.gif'),
(33, 1, 1, 'Nidorino', 'Seu chifre é mais duro que um diamante. Se sente uma presença hostil, todas as farpas nas costas se arrepiam de uma só vez e desafia o inimigo com toda a sua força. Ele tem uma disposição violenta e apunhala os inimigos com seu chifre, que exala veneno após o impacto.', 0.9, 19.5, '\img\pokemons\033.png', 'https://1.bp.blogspot.com/-zMohoV1FlKc/XwKSMJ6aICI/AAAAAAAAKd8/iS404HOZwnI-NSpV0nTdS_XsojYKezDVgCK4BGAsYHg/s60/033.gif'),
(34, 1, 1, 'Nidoking', 'A cauda grossa de Nidoking possui poder enormemente destrutivo. Com um balanço, pode derrubar uma torre de transmissão de metal. Uma vez que este Pokémon se enfurece, não há como detê-lo.', 1.4, 62, '\img\pokemons\034.png', 'https://1.bp.blogspot.com/-fFe3nvTCsn0/XwdFI8JpOaI/AAAAAAAALH0/eoWEaE2deVMoua80rFqlw54_scFM1TxZACK4BGAsYHg/s105/034.gif'),
(35, 1, 3, 'Clefairy', 'Em todas as noites de lua cheia, eles saem para brincar. Quando o amanhecer chega, os cansados Clefairys dormem aninhados um no outro em montanhas profundas e tranquilas. Voa usando as asas nas costas para coletar o luar. Este Pokémon é difícil de ser encontrado.', 0.6, 7.5, '\img\pokemons\035.png', 'https://1.bp.blogspot.com/-9iE9p3cA4Wo/XwfiKUPcpmI/AAAAAAAALV0/_nlV0TQOS-4gHfDqBzWrHMLicxUYKHBhQCK4BGAsYHg/s56/035.gif'),
(36, 1, 3, 'Clefable', 'Clefable usa suas asas para pular levemente, como se estivesse voando. Seu passo saltitante permite que ele ande sobre a água. Nas noites tranquilas e iluminadas pelo luar, passeia pelos lagos. Sua audição é tão aguda que pode ouvir um alfinete cair a mais de 800 metros de distância. Um tímido Pokémon de fada que raramente é visto, ele corre e se esconde a todo momento em que sente a presença de pessoas.', 1.3, 40, '\img\pokemons\036.png', 'https://1.bp.blogspot.com/-yj_1qe255NY/Xwf2fCRBIgI/AAAAAAAALfQ/OU2CDOjWFuAHy0KukLqc5z72_v_LYBH6wCK4BGAsYHg/s80/036.gif');

INSERT INTO PokemonTipo VALUES
(1, 13), (1, 17),
(2, 13), (2, 17),
(3, 13), (3, 17),
(4, 7),
(5, 7),
(6, 7), (6, 18),
(7, 2),
(8, 2),
(9, 2),
(10, 9),
(11, 9),
(12, 9), (12, 18),
(13, 9), (13, 17),
(14, 9), (14, 17),
(15, 9), (15, 17),
(16, 11), (16, 18),
(17, 9), (17, 18),
(18, 9), (18, 18),
(19, 11),
(20, 11),
(21, 11), (21, 18),
(22, 11), (22, 18),
(23, 17),
(24, 17),
(25, 4),
(26, 4),
(27, 16),
(28, 16),
(29, 17),
(30, 17),
(31, 17),
(32, 17),
(33, 17),
(34, 17),
(35, 5),
(36, 5);