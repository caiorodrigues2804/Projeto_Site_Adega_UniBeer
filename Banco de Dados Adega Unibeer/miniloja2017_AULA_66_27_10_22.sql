﻿--
-- Script was generated by Devart dbForge Studio 2022 for MySQL, Version 9.1.21.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 27/10/2022 17:15:31
-- Server version: 10.4.24
-- Client version: 4.1
--

-- 
-- Disable foreign keys
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Set SQL mode
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

--
-- Set default database
--
USE miniloja2017;

--
-- Drop table `as_categorias`
--
DROP TABLE IF EXISTS as_categorias;

--
-- Drop table `as_clientes`
--
DROP TABLE IF EXISTS as_clientes;

--
-- Drop table `as_estados`
--
DROP TABLE IF EXISTS as_estados;

--
-- Drop table `as_imagens`
--
DROP TABLE IF EXISTS as_imagens;

--
-- Drop table `as_pedidos`
--
DROP TABLE IF EXISTS as_pedidos;

--
-- Drop table `as_pedidos_itens`
--
DROP TABLE IF EXISTS as_pedidos_itens;

--
-- Drop table `as_produtos`
--
DROP TABLE IF EXISTS as_produtos;

--
-- Drop table `as_user`
--
DROP TABLE IF EXISTS as_user;

--
-- Set default database
--
USE miniloja2017;

--
-- Create table `as_user`
--
CREATE TABLE as_user (
  user_id int(11) NOT NULL AUTO_INCREMENT,
  user_nome varchar(30) DEFAULT NULL,
  user_email varchar(60) DEFAULT NULL,
  user_pw varchar(40) DEFAULT NULL,
  PRIMARY KEY (user_id)
)
ENGINE = INNODB,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Create table `as_produtos`
--
CREATE TABLE as_produtos (
  pro_id int(11) NOT NULL AUTO_INCREMENT,
  pro_categoria int(11) DEFAULT NULL,
  pro_nome varchar(100) DEFAULT NULL,
  pro_desc text DEFAULT NULL,
  pro_peso double(9, 3) DEFAULT 0.000,
  pro_valor double(15, 2) DEFAULT 0.00,
  pro_altura int(5) DEFAULT 0,
  pro_largura int(5) DEFAULT 0,
  pro_comprimento int(5) DEFAULT 0,
  pro_img varchar(60) DEFAULT NULL,
  pro_slug varchar(100) DEFAULT NULL,
  pro_estoque int(9) DEFAULT 0,
  pro_modelo varchar(40) DEFAULT NULL,
  pro_ref varchar(20) DEFAULT NULL,
  pro_fabricante int(11) DEFAULT NULL,
  pro_ativo char(3) DEFAULT 'NAO',
  pro_frete_free varchar(3) DEFAULT 'NAO',
  pro_descricao_extra text DEFAULT NULL,
  PRIMARY KEY (pro_id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 13,
AVG_ROW_LENGTH = 5461,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Create table `as_pedidos_itens`
--
CREATE TABLE as_pedidos_itens (
  item_id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  item_produto int(11) DEFAULT NULL,
  item_valor double(9, 2) DEFAULT NULL,
  item_qtd int(6) DEFAULT NULL,
  item_ped_cod varchar(50) DEFAULT NULL,
  PRIMARY KEY (item_id)
)
ENGINE = INNODB,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Create table `as_pedidos`
--
CREATE TABLE as_pedidos (
  ped_id int(11) NOT NULL AUTO_INCREMENT,
  ped_data date DEFAULT NULL,
  ped_hora time DEFAULT NULL,
  ped_cliente int(11) DEFAULT NULL,
  ped_cod varchar(100) DEFAULT NULL,
  ped_ref varchar(40) DEFAULT NULL,
  ped_pag_status varchar(20) DEFAULT NULL,
  ped_pag_forma varchar(20) DEFAULT NULL,
  ped_pag_tipo varchar(20) DEFAULT NULL,
  ped_pag_codigo varchar(220) DEFAULT NULL,
  ped_frete_valor double(9, 2) DEFAULT NULL,
  ped_frete_tipo varchar(20) DEFAULT NULL,
  PRIMARY KEY (ped_id)
)
ENGINE = INNODB,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Create table `as_imagens`
--
CREATE TABLE as_imagens (
  img_id int(11) NOT NULL AUTO_INCREMENT,
  img_nome varchar(60) DEFAULT NULL,
  img_pro_id int(11) DEFAULT NULL,
  img_pasta varchar(34) DEFAULT NULL,
  PRIMARY KEY (img_id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 3321323,
AVG_ROW_LENGTH = 8192,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Create table `as_estados`
--
CREATE TABLE as_estados (
  estado_id int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  estado_sigla char(2) DEFAULT NULL,
  estado_nome varchar(50) DEFAULT NULL,
  PRIMARY KEY (estado_id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 30,
AVG_ROW_LENGTH = 606,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Create table `as_clientes`
--
CREATE TABLE as_clientes (
  cli_id int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  cli_nome varchar(80) DEFAULT NULL,
  cli_sobrenome varchar(80) DEFAULT NULL,
  cli_endereco varchar(100) DEFAULT NULL,
  cli_numero varchar(20) DEFAULT NULL,
  cli_bairro varchar(80) DEFAULT NULL,
  cli_cidade varchar(150) DEFAULT NULL,
  cli_uf varchar(2) DEFAULT NULL,
  cli_cep varchar(10) DEFAULT NULL,
  cli_cpf varchar(12) DEFAULT NULL,
  cli_rg varchar(20) DEFAULT NULL,
  cli_ddd int(2) DEFAULT NULL,
  cli_fone varchar(10) DEFAULT NULL,
  cli_celular varchar(10) DEFAULT NULL,
  cli_email varchar(60) DEFAULT NULL,
  cli_pass varchar(40) DEFAULT NULL,
  cli_data_nasc date DEFAULT NULL,
  cli_data_cad date DEFAULT NULL,
  cli_hora_cad time DEFAULT NULL,
  PRIMARY KEY (cli_id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 4,
AVG_ROW_LENGTH = 5461,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Create table `as_categorias`
--
CREATE TABLE as_categorias (
  cate_id int(11) NOT NULL AUTO_INCREMENT,
  cate_nome varchar(80) DEFAULT NULL,
  cate_slug varchar(80) DEFAULT NULL,
  PRIMARY KEY (cate_id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 4214244,
AVG_ROW_LENGTH = 5461,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

-- 
-- Dumping data for table as_user
--
-- Table miniloja2017.as_user does not contain any data (it is empty)

-- 
-- Dumping data for table as_produtos
--
INSERT INTO as_produtos VALUES
(1, 2, 'Skol Pilsen Lata 550ml', 'Cerveja Skol Pilsen Lata.\r\n\r\nA clássica redonda que anima qualquer momento. Seu nome vem da palavra escandinava skål, que significa "à vossa saúde/à nossa saúde"; expressão comum que antecede brindes. É hoje a maior do segmento no mercado brasileiro e a quinta maior do segmento no mundo.\r\n\r\nCerveja do tipo Pilsen, Skol é uma cerveja clara, com aroma refinado e sabor leve e suave. Skol Pilsen é uma típica cerveja clara, com aroma refinado e sabor leve e suave. Seu teor de amargor é menos acentuado e seu teor alcoólico é médio.', 100.000, 2.38, 100, 100, 100, 'skol.png', 'skol', 10, NULL, '00011', NULL, 'SIM', 'NAO', 'Cerveja Skol Pilsen Lata 550ml 12 U'),
(2, 2, 'Cerveja Original 350ml', 'A clássica Cerveja Antarctica Original de350ml é reconhecida por preservar sua essência, tradição e qualidade desde 1931. Uma Standard American Lager de sabor suave, leve amargor e aroma de lúpulo, além de refrescância única — garantida por sua alta carbonatação. A tradicional versão 600 ml é ideal para dividir com amigos sem esquentar. Complemente a confraternização, harmonizando o sabor Original com petiscos, queijos à milanesa, lulas fritas, ostras ou salames e pizzas. INGREDIENTES: Água, malte, milho e lúpulo. ALERGÊNICOS: Contém cevada e glúten.', 100.000, 3.79, 100, 100, 100, 'cerveja_original.png', 'cerveja_original', 10, NULL, '00022', NULL, 'SIM', 'NAO', 'Cerveja Original Pilsen 350ml Lata'),
(3, 3, 'RedBull Energy Drink 250ml', 'Energético Red Bull Energy Drink, 250 ml (24 latas) RED BULL TE DÁ ASAS Inspirado por bebidas funcionais do Extremo Oriente, Dietrich Mateschitz fundou a Red Bull em meados dos anos 80. Ele criou a fórmula e desenvolveu o conceito de marketing exclusivo ao lançar o primeiro Red Bull Energy Drink em 1º de abril de 1987 na Áustria. Uma nova categoria de produtos – Energéticos - nascia. QUANDO BEBER O Red Bull Energy Drink é apreciado em todo o mundo por atletas de elite, profissionais dinâmicos, estudantes ativos e motoristas em viagens longas. O QUE EXISTE DENTRO DA LATA Cafeína: A cafeína já era conhecida por seus efeitos estimulantes pelas civilizações antigas, que a consumiam a partir de fontes naturais como o chá, café grãos de cacau e noz de cola. Taurina: Taurina é um aminoácido natural do corpo humano, que está presente na dieta diária das pessoas e está envolvida numa vasta gama de processos biológicos. Vitaminas do grupo B: As vitaminas são micronutrientes essenciais necessários para manter as funções normais do organismo. Açúcares: Red Bull Energy Drink é feito com açúcar proveniente da beterraba. Água das fontes Alpinas: Naturalmente, a água é um ingrediente crucial da Red Bull.', 100.000, 9.00, 100, 100, 100, 'redbull.png', 'redbull\r\n', 10, NULL, '00033', NULL, 'SIM', 'NAO', 'Energético Red Bull Energy Drink 250 ml'),
(4, 4, 'Refrigerantes 660ml', 'Fanta Uva, Fanta Guaraná,Fanta Laranja, Coca Cola, Coca Cola Zero, Kuat, Sprite', 100.000, 6.99, 100, 100, 100, 'refrigerantes.png', 'refrigerantes', 10, NULL, '00044', NULL, 'SIM', 'NAO', 'Refrigerante Garrafa 600ml '),
(5, 5, 'Del Valle Lata 290ml', 'Suco Del Valle <br/><br/>\r\n\r\nNéctar de Laranja Del Valle é uma excelente opção de bebida para refrescar seu dia. Quando falamos em Néctar de Fruta, estamos falando em bebidas que contém até 50% de suco ou polpa em sua elaboração. Apesar de conter adição de açúcar o Néctar Del Valle não contém conservantes, aromas e corantes artificiais. Compre Néctar de Laranja Del Valle 1,5 Litro e experimente o delicioso sabor Del Valle, uma das marcas de sucos mais vendidas do Brasil. Compartilhe com amigos e familiares!', 100.000, 4.99, 100, 100, 100, 'delvalle.png', 'del_valle', 10, NULL, '00055', NULL, 'SIM', 'NAO', 'Suco Del Valle Néctar Lata 290ml'),
(6, 2, 'Corona Extra 330ml 6 packs', '\r\nA Cerveja Corona é refrescante, transparente, com espuma clara, mas pouco persistente e aroma discreto. Estilo Pilsen (Latin American Light Lager), é também frisante, leve, fácil de beber, de acidez média com toques cítricos (limão) persistentes e doçura residual. Começou a ser fabricada no México em 1925, na Cervejaria Modelo. É a marca líder no mercado nacional e a cerveja mexicana de maior venda nos Estados Unidos. Essa pilsener atende a pessoas que estão em busca de relaxar e refrescar.', 100.000, 7.99, 100, 100, 100, 'corona_extra.png', 'corona_extra', 10, NULL, '00066', NULL, 'SIM', 'NAO', 'Cerveja Corona Extra Long Neck 330ml Pack (6 Unidades)'),
(7, 2, 'Cerveja Budweiser 330ml ', 'Só uma cerveja como a Budweiser consegue manter os 143 anos de história e, ao mesmo tempo, ter a autenticidade e liberdade para ser o que quiser. Ela não muda sua fórmula e nunca perde sua essência. Só Bud faz Bud. Ingredientes: Água, malte, arroz e lúpulo. Alergênicos: Contém cevada e glúten. Cerveja Budweiser Pack Long Neck 330ml', 100.000, 7.99, 100, 100, 100, 'Budweiser-330-6pack.png', 'Budweiser', 10, NULL, '00077', NULL, 'SIM', 'NAO', 'Budweiser Pack Long Neck 330ml'),
(8, 2, 'Heineken Premium 330ml', 'Uma das bebidas preferidas no nosso País e que não pode faltar em festas, churrascos e confraternizações é a cerveja. Para animar as celebrações, a Heineken apresenta o pack Puro Malte Lager Premium com seis long neck de 330ml, uma cerveja refrescante produzida com ingredientes 100% naturais. Ela possui coloração amarelo dourado e é fabricada em tanques horizontais para garantir mais sabor e consistência. A exclusiva levedura A acrescentada durante a fermentação traz um sabor equilibrado com notas frutadas e sutis. Na clássica versão em lata a cerveja Heineken está ainda mais refrescante e gela bem rápido.', 100.000, 29.90, 100, 100, 100, 'heineken_s.png', 'Heineken', 10, NULL, '00088', NULL, 'SIM', 'NAO', 'Cerveja Heineken Premium Puro Malte Lager - Pilsen 6 Garrafas Long Neck 330ml'),
(9, 8, 'Whisky Finest Escocês ', 'O verdadeiro sabor do uísque escocês\r\nO uísque escocês Ballantine''s Finest 750 ml é a bebida perfeita para quem ama saborear um bom uísque. Com sua receita e fabricação tradicional de origem escocesa, o Ballantine''s é escolha perfeita para encerrar o dia ou celebrar alguma ocasião especial. Com um teor alcoólico de 40%, ele apresenta um sabor marcante.\r\n\r\nUm sabor inesquecível\r\nEm uma garrafa com 750ml da Pernod Ricard, o Ballantine''s Finest apresenta notas delicadas de chocolate ao leite, maçã e baunilha, proporcionando um doce agradável que contrasta de forma inigualável com os cereais e leveduras de sua fórmula. Para encerrar, o seu uísque escocês conta ainda com um aroma suave, que apresenta um toque sutil de mel e especiarias.', 100.000, 79.99, 100, 100, 100, 'ballantines_blended_finest_reino_unido.png', 'Ballantine''s Blended Finest Reino Unido ', 100, NULL, '00099', NULL, 'SIM', 'NAO', 'Whisky Ballantine''s Finest Escocês 750 ml'),
(10, 6, 'Jack Paiols Palheiro Dourado Ultra Premium', 'Cigarro de Palha Jack Paiol''s\r\n\r\nCigarro de Palha Extra Premium com piteira\r\n\r\nConteúdo da caixa: 20 cigarros de palha com piteira\r\n\r\nProduto artesanal feito a mão, com palhas selecionadas e fumo de alta qualidade!\r\n\r\nUm conceito diferenciado, para um paladar sofisticado!', 100.000, 19.99, 100, 100, 100, '6132b3bafe1ad80f546e77ed_502x600.png', 'cigarro_palha', 100, NULL, '00100', NULL, 'SIM', 'NAO', 'Jack Paiols Palheiro Dourado Ultra Premium'),
(11, 6, 'Natural Amsterdam 25g Cx C/6', 'Tabaco nacional desenvolvido pela Amsterdam Tabaco, com fumo Natural 100% Livre de Aditivos. Embalagem reciclável, não agride o meio ambiente. Contém 25g', 100.000, 20.00, 5, 5, 100, 'Tabaco_AmsterdamCx1.png', 'cigarro_palha_2', 1000, NULL, '00101', NULL, 'SIM', 'NAO', 'Fumo P/Enrolar Natural Amsterdam 25g Cx C/6'),
(12, 6, 'Tabaco Hi Tobacco Golden Virginia', 'TABACO - HI TOBACCO GOLDEN VIRGINIA 35G\r\n\r\n \r\n\r\n \r\n\r\nTabaco virginia natural plantado e colhido em região demarcada como a melhor da categoria e uma das melhores do mundo. Composto de tabacos claros e suaves do tipo Virgínia original, é extremamente leve de fumar, com aroma de notas adocicadas.\r\n\r\n \r\n\r\nDesenvolvido sob severas observações e orientações de técnicos da região de Venâncio Aires no Sul do Brasil, sua embalagem é composta por três camadas de materiais, sendo uma delas o alumínio que juntamente com o velcro e o zíper melhora o acondicionamento protegendo contra perdas de umidade conservando o sabor e aroma do tabaco que são embalados em tablete, mantendo assim as propriedades do produto.\r\n\r\n \r\n\r\nNesta embalagem de 35 gramas você estará adquirindo o fumo Hi Tobacco Golden Virgínia com um fumo brasileiro de alta qualidade, podendo ter com uma embalagem o rendimento médio de 3 a 4 maços de cigarros.\r\n\r\n \r\n\r\n \r\n\r\nEspecificações:\r\n\r\n \r\n\r\nDimensões: (A x L x C) 2 x 8 x 13,5 cm\r\n\r\nTipo: Tabaco desfiado (Cabelinho)\r\n\r\nTeor: Médio impacto\r\n\r\n Sabor: Marcante\r\n\r\nPeso do produto: 35g\r\n\r\nVocê irá receber: 01 Bag de 25g de tabaco desfiado\r\n\r\n \r\n\r\n \r\n\r\nÉtica e responsabilidade: Trabalhamos com honestidade, ética e com um atendimento diferenciado. Procuramos sempre fortalecer e atender bem nossos clientes, para garantir que adquiram o produto e tenham sempre uma experiência satisfatória.\r\n\r\n \r\n\r\nUrban Haze Brasil\r\n\r\n \r\n\r\n \r\n\r\nObservações:\r\n\r\n \r\n\r\n- Pode haver alguma diferença de tonalidade entre a imagem e o produto real, por conta do tratamento de imagens e a calibração de cores do seu monitor.\r\n\r\n- As imagens são meramente ilustrativas, não acompanham objetos de decoração.\r\n\r\n- Ao receber a mercadoria, o cliente deve verificar as condições da embalagem, caso haja alguma avaria não assine o comprovante de recebimento.\r\n\r\n- Produto destinado para maiores de 18 anos', 100.000, 25.70, 5, 5, 100, 'tabacos_ds.png', 'cigarro_palha_3', 1000, NULL, '00102', NULL, 'SIM', 'NAO', 'TABACO - HI TOBACCO GOLDEN VIRGINIA 35G');

-- 
-- Dumping data for table as_pedidos_itens
--
-- Table miniloja2017.as_pedidos_itens does not contain any data (it is empty)

-- 
-- Dumping data for table as_pedidos
--
-- Table miniloja2017.as_pedidos does not contain any data (it is empty)

-- 
-- Dumping data for table as_imagens
--
INSERT INTO as_imagens VALUES
(1, 'skol_2.png', 1, NULL),
(2, 'skol_3.png', 1, NULL);

-- 
-- Dumping data for table as_estados
--
INSERT INTO as_estados VALUES
(1, 'AC', 'ACRE'),
(2, 'AL', 'ALAGOAS'),
(3, 'AP', 'AMAPÁ'),
(4, 'AM', 'AMAZONAS'),
(5, 'BA', 'BAHIA'),
(6, 'CE', 'CEARÁ'),
(7, 'DF', 'DISTRITO FEDERAL'),
(8, 'ES', 'ESPÍRITO SANTO'),
(9, 'GO', 'GOIÁS'),
(10, 'MA', 'MARANHÃO'),
(11, 'MT', 'MATO GROSSO'),
(12, 'MS', 'MATO GROSSO DO SUL'),
(13, 'MG', 'MINAS GERAIS'),
(14, 'PA', 'PARÁ'),
(15, 'PB', 'PARAÍBA'),
(16, 'PR', 'PARANÁ'),
(17, 'PE', 'PERNAMBUCO'),
(18, 'PI', 'PIAUÍ'),
(19, 'RJ', 'RIO DE JANEIRO'),
(20, 'RN', 'RIO GRANDE DO NORTE'),
(21, 'RS', 'RIO GRANDE DO SUL'),
(22, 'RO', 'RONDÔNIA'),
(23, 'RR', 'RORAIMA'),
(24, 'SC', 'SANTA CATARINA'),
(25, 'SP', 'SÃO PAULO'),
(26, 'SE', 'SERGIPE'),
(27, 'TO', 'TOCANTINS');

-- 
-- Dumping data for table as_clientes
--
INSERT INTO as_clientes VALUES
(1, 'Adriano 11111', 'de Souza', 'Rua logos S 11100', '222', 'JD centro', 'Ibitinga', 'PR', '14940000', '88799195208', '0000111111', 16, '33424466', '992765906', 'cursosadrianosites@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1985-09-02', '2016-09-02', '22:11:15'),
(2, 'Fabio', 'de Souza', 'Rua Ernesto pena', '222', 'centro', 'Ibitinga', 'SP', '14940000', '21799713970', '1111111111', 19, '992765906', '992765906', 'cursosadriacxcxnosites@gmail.com', '123456', '1980-09-02', '2016-09-02', '22:10:40'),
(3, 'Paulo', 'de Souza', 'Rua Sena111', '222', 'centro', 'Ibitinga', 'SP', '14940000', '13917299518', '1111111111', 16, '00000000', '111111111', 'cursosadrianocxcsites@gmail.com', 'fb8bfd6ad27c885809a5cce115c97115', '2016-09-07', '2016-09-07', '17:30:02');

-- 
-- Dumping data for table as_categorias
--
INSERT INTO as_categorias VALUES
(2, 'Cervejas', 'Cervejas'),
(3, 'Energeticos', 'Energeticos'),
(4, 'Refrigerantes', 'Refrigerantes'),
(5, 'Sucos', 'Sucos'),
(6, 'Tabacos', 'Tabacos'),
(7, 'Águas tônicas', 'Águas tônicas'),
(8, 'Whiskys', 'Whiskys'),
(9, 'Narguiles', 'Narguiles'),
(10, 'Doces', 'Doces'),
(11, 'Vinhos', 'Vinhos'),
(12, 'Combos', 'Combos');

-- 
-- Restore previous SQL mode
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Enable foreign keys
-- 
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;