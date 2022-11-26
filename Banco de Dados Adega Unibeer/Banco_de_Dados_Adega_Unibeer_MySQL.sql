-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 26-Nov-2022 às 02:06
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `miniloja2017`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `as_categorias`
--

CREATE TABLE `as_categorias` (
  `cate_id` int(11) NOT NULL,
  `cate_nome` varchar(80) DEFAULT NULL,
  `cate_slug` varchar(80) DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=5461 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `as_categorias`
--

INSERT INTO `as_categorias` (`cate_id`, `cate_nome`, `cate_slug`) VALUES
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
(12, 'Combos', 'Combos'),
(13, 'Cachaças ', 'Cachaças '),
(14, 'Caipirinhas', 'Caipirinhas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `as_clientes`
--

CREATE TABLE `as_clientes` (
  `cli_id` int(10) UNSIGNED NOT NULL,
  `cli_nome` varchar(80) DEFAULT NULL,
  `cli_sobrenome` varchar(80) DEFAULT NULL,
  `cli_endereco` varchar(100) DEFAULT NULL,
  `cli_numero` varchar(20) DEFAULT NULL,
  `cli_bairro` varchar(80) DEFAULT NULL,
  `cli_cidade` varchar(150) DEFAULT NULL,
  `cli_uf` varchar(2) DEFAULT NULL,
  `cli_cep` varchar(10) DEFAULT NULL,
  `cli_cpf` varchar(12) DEFAULT NULL,
  `cli_rg` varchar(20) DEFAULT NULL,
  `cli_ddd` int(2) DEFAULT NULL,
  `cli_fone` varchar(10) DEFAULT NULL,
  `cli_celular` varchar(10) DEFAULT NULL,
  `cli_email` varchar(60) DEFAULT NULL,
  `cli_pass` varchar(40) DEFAULT NULL,
  `cli_data_nasc` date DEFAULT NULL,
  `cli_data_cad` date DEFAULT NULL,
  `cli_hora_cad` time DEFAULT NULL,
  `dados_extras` varchar(40) NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=5461 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `as_clientes`
--

INSERT INTO `as_clientes` (`cli_id`, `cli_nome`, `cli_sobrenome`, `cli_endereco`, `cli_numero`, `cli_bairro`, `cli_cidade`, `cli_uf`, `cli_cep`, `cli_cpf`, `cli_rg`, `cli_ddd`, `cli_fone`, `cli_celular`, `cli_email`, `cli_pass`, `cli_data_nasc`, `cli_data_cad`, `cli_hora_cad`, `dados_extras`) VALUES
(2, 'Caio', 'Rodrigues', 'Rua Cabo', '300', 'Parque Casa de Pedra', 'São Paulo', 'SP', '02322180', '97202029804', '227447529', 11, '36298736', '993422752', 'caiorodrigues2848@gmail.com', '6d78b1ff6383cc7d1c5f383588505618', '2001-04-28', '2022-11-25', '18:00:22', 'q67y85xr');

-- --------------------------------------------------------

--
-- Estrutura da tabela `as_estados`
--

CREATE TABLE `as_estados` (
  `estado_id` int(10) UNSIGNED NOT NULL,
  `estado_sigla` char(2) DEFAULT NULL,
  `estado_nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=606 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `as_estados`
--

INSERT INTO `as_estados` (`estado_id`, `estado_sigla`, `estado_nome`) VALUES
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `as_imagens`
--

CREATE TABLE `as_imagens` (
  `img_id` int(11) NOT NULL,
  `img_nome` varchar(60) DEFAULT NULL,
  `img_pro_id` int(11) DEFAULT NULL,
  `img_pasta` varchar(34) DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `as_imagens`
--

INSERT INTO `as_imagens` (`img_id`, `img_nome`, `img_pro_id`, `img_pasta`) VALUES
(1, 'skol_2.png', 1, NULL),
(2, 'skol_3.png', 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `as_pedidos`
--

CREATE TABLE `as_pedidos` (
  `ped_id` int(11) NOT NULL,
  `ped_data` date DEFAULT NULL,
  `ped_hora` time DEFAULT NULL,
  `ped_cliente` int(11) DEFAULT NULL,
  `ped_cod` varchar(100) DEFAULT NULL,
  `ped_ref` varchar(40) DEFAULT NULL,
  `ped_pag_status` varchar(20) DEFAULT NULL,
  `ped_pag_forma` varchar(20) DEFAULT NULL,
  `ped_pag_tipo` varchar(20) DEFAULT NULL,
  `ped_pag_codigo` varchar(220) DEFAULT NULL,
  `ped_frete_valor` double(9,2) DEFAULT NULL,
  `ped_frete_tipo` varchar(20) DEFAULT NULL,
  `ped_valor_item` varchar(100) NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=16384 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `as_pedidos`
--

INSERT INTO `as_pedidos` (`ped_id`, `ped_data`, `ped_hora`, `ped_cliente`, `ped_cod`, `ped_ref`, `ped_pag_status`, `ped_pag_forma`, `ped_pag_tipo`, `ped_pag_codigo`, `ped_frete_valor`, `ped_frete_tipo`, `ped_valor_item`) VALUES
(1, '2022-11-20', '21:51:22', 4, '0f8dcd91376bb6018624810c7f1b42e0', '2211201952274', 'NÃO', NULL, NULL, NULL, 0.00, '', '244.97'),
(2, '2022-11-20', '22:22:10', 4, '0f8dcd91376bb6018624810c7f1b42e0', '2211201952274', 'NÃO', NULL, NULL, NULL, 0.00, '', '244.97'),
(3, '2022-11-20', '22:48:01', 4, '79354578c26befaaff861709d608c165', '2211202223224', 'NÃO', NULL, NULL, NULL, 0.00, '', '125.81'),
(4, '2022-11-22', '19:59:05', 8, 'e4846deb3aa8c34eb4aa217d438727de', '2211221959028', 'NÃO', NULL, NULL, NULL, 0.00, '', '7.14'),
(5, '2022-11-22', '20:01:21', 8, '6a109df43a6293a21b6abec226c10c63', '2211222001218', 'NÃO', NULL, NULL, NULL, 0.00, '', '2.38'),
(6, '2022-11-22', '20:01:52', 8, '6a109df43a6293a21b6abec226c10c63', '2211222001218', 'NÃO', NULL, NULL, NULL, 0.00, '', '2.38'),
(7, '2022-11-22', '20:02:37', 8, '6a109df43a6293a21b6abec226c10c63', '2211222001218', 'NÃO', NULL, NULL, NULL, 0.00, '', '2.38'),
(8, '2022-11-22', '20:03:18', 8, '6a109df43a6293a21b6abec226c10c63', '2211222001218', 'NÃO', NULL, NULL, NULL, 0.00, '', '2.38');

-- --------------------------------------------------------

--
-- Estrutura da tabela `as_pedidos_itens`
--

CREATE TABLE `as_pedidos_itens` (
  `item_id` int(11) UNSIGNED NOT NULL,
  `item_produto` int(11) DEFAULT NULL,
  `item_valor` double(9,2) DEFAULT NULL,
  `item_qtd` int(6) DEFAULT NULL,
  `item_ped_cod` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=1092 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `as_pedidos_itens`
--

INSERT INTO `as_pedidos_itens` (`item_id`, `item_produto`, `item_valor`, `item_qtd`, `item_ped_cod`) VALUES
(1, 8, 244.97, 1, '0f8dcd91376bb6018624810c7f1b42e0'),
(2, 33, 244.97, 1, '0f8dcd91376bb6018624810c7f1b42e0'),
(3, 31, 244.97, 1, '0f8dcd91376bb6018624810c7f1b42e0'),
(4, 22, 244.97, 1, '0f8dcd91376bb6018624810c7f1b42e0'),
(5, 13, 244.97, 1, '0f8dcd91376bb6018624810c7f1b42e0'),
(6, 8, 244.97, 1, '0f8dcd91376bb6018624810c7f1b42e0'),
(7, 33, 244.97, 1, '0f8dcd91376bb6018624810c7f1b42e0'),
(8, 31, 244.97, 1, '0f8dcd91376bb6018624810c7f1b42e0'),
(9, 22, 244.97, 1, '0f8dcd91376bb6018624810c7f1b42e0'),
(10, 13, 244.97, 1, '0f8dcd91376bb6018624810c7f1b42e0'),
(11, 1, 125.81, 3, '79354578c26befaaff861709d608c165'),
(12, 2, 125.81, 1, '79354578c26befaaff861709d608c165'),
(13, 4, 125.81, 1, '79354578c26befaaff861709d608c165'),
(14, 8, 125.81, 1, '79354578c26befaaff861709d608c165'),
(15, 9, 125.81, 1, '79354578c26befaaff861709d608c165'),
(16, 1, 7.14, 3, 'e4846deb3aa8c34eb4aa217d438727de'),
(17, 1, 2.38, 1, '6a109df43a6293a21b6abec226c10c63'),
(18, 1, 2.38, 1, '6a109df43a6293a21b6abec226c10c63'),
(19, 1, 2.38, 1, '6a109df43a6293a21b6abec226c10c63'),
(20, 1, 2.38, 1, '6a109df43a6293a21b6abec226c10c63');

-- --------------------------------------------------------

--
-- Estrutura da tabela `as_produtos`
--

CREATE TABLE `as_produtos` (
  `pro_id` int(11) NOT NULL,
  `pro_categoria` int(11) DEFAULT NULL,
  `pro_nome` varchar(100) DEFAULT NULL,
  `pro_desc` text DEFAULT NULL,
  `pro_peso` double(9,3) DEFAULT 0.000,
  `pro_valor` double(15,2) DEFAULT 0.00,
  `pro_altura` int(5) DEFAULT 0,
  `pro_largura` int(5) DEFAULT 0,
  `pro_comprimento` int(5) DEFAULT 0,
  `pro_img` varchar(60) DEFAULT NULL,
  `pro_slug` varchar(100) DEFAULT NULL,
  `pro_estoque` int(9) DEFAULT 0,
  `pro_modelo` varchar(40) DEFAULT NULL,
  `pro_ref` varchar(20) DEFAULT NULL,
  `pro_fabricante` int(11) DEFAULT NULL,
  `pro_ativo` char(3) DEFAULT 'NAO',
  `pro_frete_free` varchar(3) DEFAULT 'NAO',
  `pro_descricao_extra` text DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=5461 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `as_produtos`
--

INSERT INTO `as_produtos` (`pro_id`, `pro_categoria`, `pro_nome`, `pro_desc`, `pro_peso`, `pro_valor`, `pro_altura`, `pro_largura`, `pro_comprimento`, `pro_img`, `pro_slug`, `pro_estoque`, `pro_modelo`, `pro_ref`, `pro_fabricante`, `pro_ativo`, `pro_frete_free`, `pro_descricao_extra`) VALUES
(1, 2, 'Skol Pilsen Lata 550ml', 'Cerveja Skol Pilsen Lata.\r\n\r\nA clássica redonda que anima qualquer momento. Seu nome vem da palavra escandinava skål, que significa \"à vossa saúde/à nossa saúde\"; expressão comum que antecede brindes. É hoje a maior do segmento no mercado brasileiro e a quinta maior do segmento no mundo.\r\n\r\nCerveja do tipo Pilsen, Skol é uma cerveja clara, com aroma refinado e sabor leve e suave. Skol Pilsen é uma típica cerveja clara, com aroma refinado e sabor leve e suave. Seu teor de amargor é menos acentuado e seu teor alcoólico é médio.', 100.000, 2.38, 100, 100, 100, 'skol.png', 'skol', 10, NULL, '00011', NULL, 'SIM', 'NAO', 'Cerveja Skol Pilsen Lata 550ml 12 U'),
(2, 2, 'Cerveja Original 350ml', 'A clássica Cerveja Antarctica Original de350ml é reconhecida por preservar sua essência, tradição e qualidade desde 1931. Uma Standard American Lager de sabor suave, leve amargor e aroma de lúpulo, além de refrescância única — garantida por sua alta carbonatação. A tradicional versão 600 ml é ideal para dividir com amigos sem esquentar. Complemente a confraternização, harmonizando o sabor Original com petiscos, queijos à milanesa, lulas fritas, ostras ou salames e pizzas. INGREDIENTES: Água, malte, milho e lúpulo. ALERGÊNICOS: Contém cevada e glúten.', 100.000, 3.79, 100, 100, 100, 'cerveja_original.png', 'cerveja_original', 10, NULL, '00022', NULL, 'SIM', 'NAO', 'Cerveja Original Pilsen 350ml Lata'),
(3, 3, 'RedBull Energy Drink 250ml', 'Energético Red Bull Energy Drink, 250 ml (24 latas) RED BULL TE DÁ ASAS Inspirado por bebidas funcionais do Extremo Oriente, Dietrich Mateschitz fundou a Red Bull em meados dos anos 80. Ele criou a fórmula e desenvolveu o conceito de marketing exclusivo ao lançar o primeiro Red Bull Energy Drink em 1º de abril de 1987 na Áustria. Uma nova categoria de produtos – Energéticos - nascia. QUANDO BEBER O Red Bull Energy Drink é apreciado em todo o mundo por atletas de elite, profissionais dinâmicos, estudantes ativos e motoristas em viagens longas. O QUE EXISTE DENTRO DA LATA Cafeína: A cafeína já era conhecida por seus efeitos estimulantes pelas civilizações antigas, que a consumiam a partir de fontes naturais como o chá, café grãos de cacau e noz de cola. Taurina: Taurina é um aminoácido natural do corpo humano, que está presente na dieta diária das pessoas e está envolvida numa vasta gama de processos biológicos. Vitaminas do grupo B: As vitaminas são micronutrientes essenciais necessários para manter as funções normais do organismo. Açúcares: Red Bull Energy Drink é feito com açúcar proveniente da beterraba. Água das fontes Alpinas: Naturalmente, a água é um ingrediente crucial da Red Bull.', 100.000, 9.00, 100, 100, 100, 'redbull.png', 'redbull\r\n', 10, NULL, '00033', NULL, 'SIM', 'NAO', 'Energético Red Bull Energy Drink 250 ml'),
(4, 5, 'Del Valle Lata 290ml', 'Suco Del Valle <br/><br/>\r\n\r\nNéctar de Laranja Del Valle é uma excelente opção de bebida para refrescar seu dia. Quando falamos em Néctar de Fruta, estamos falando em bebidas que contém até 50% de suco ou polpa em sua elaboração. Apesar de conter adição de açúcar o Néctar Del Valle não contém conservantes, aromas e corantes artificiais. Compre Néctar de Laranja Del Valle 1,5 Litro e experimente o delicioso sabor Del Valle, uma das marcas de sucos mais vendidas do Brasil. Compartilhe com amigos e familiares!', 100.000, 4.99, 100, 100, 100, 'delvalle.png', 'del_valle', 10, NULL, '00055', NULL, 'SIM', 'NAO', 'Suco Del Valle Néctar Lata 290ml'),
(6, 2, 'Corona Extra 330ml 6 packs', '\r\nA Cerveja Corona é refrescante, transparente, com espuma clara, mas pouco persistente e aroma discreto. Estilo Pilsen (Latin American Light Lager), é também frisante, leve, fácil de beber, de acidez média com toques cítricos (limão) persistentes e doçura residual. Começou a ser fabricada no México em 1925, na Cervejaria Modelo. É a marca líder no mercado nacional e a cerveja mexicana de maior venda nos Estados Unidos. Essa pilsener atende a pessoas que estão em busca de relaxar e refrescar.', 100.000, 7.99, 100, 100, 100, 'corona_extra.png', 'corona_extra', 10, NULL, '00066', NULL, 'SIM', 'NAO', 'Cerveja Corona Extra Long Neck 330ml Pack (6 Unidades)'),
(7, 2, 'Cerveja Budweiser 330ml ', 'Só uma cerveja como a Budweiser consegue manter os 143 anos de história e, ao mesmo tempo, ter a autenticidade e liberdade para ser o que quiser. Ela não muda sua fórmula e nunca perde sua essência. Só Bud faz Bud. Ingredientes: Água, malte, arroz e lúpulo. Alergênicos: Contém cevada e glúten. Cerveja Budweiser Pack Long Neck 330ml', 100.000, 7.99, 100, 100, 100, 'Budweiser-330-6pack.png', 'Budweiser', 10, NULL, '00077', NULL, 'SIM', 'NAO', 'Budweiser Pack Long Neck 330ml'),
(8, 2, 'Heineken Premium 330ml', 'Uma das bebidas preferidas no nosso País e que não pode faltar em festas, churrascos e confraternizações é a cerveja. Para animar as celebrações, a Heineken apresenta o pack Puro Malte Lager Premium com seis long neck de 330ml, uma cerveja refrescante produzida com ingredientes 100% naturais. Ela possui coloração amarelo dourado e é fabricada em tanques horizontais para garantir mais sabor e consistência. A exclusiva levedura A acrescentada durante a fermentação traz um sabor equilibrado com notas frutadas e sutis. Na clássica versão em lata a cerveja Heineken está ainda mais refrescante e gela bem rápido.', 100.000, 29.90, 100, 100, 100, 'heineken_s.png', 'Heineken', 10, NULL, '00088', NULL, 'SIM', 'NAO', 'Cerveja Heineken Premium Puro Malte Lager - Pilsen 6 Garrafas Long Neck 330ml'),
(9, 8, 'Whisky Finest Escocês ', 'O verdadeiro sabor do uísque escocês\r\nO uísque escocês Ballantine\'s Finest 750 ml é a bebida perfeita para quem ama saborear um bom uísque. Com sua receita e fabricação tradicional de origem escocesa, o Ballantine\'s é escolha perfeita para encerrar o dia ou celebrar alguma ocasião especial. Com um teor alcoólico de 40%, ele apresenta um sabor marcante.\r\n\r\nUm sabor inesquecível\r\nEm uma garrafa com 750ml da Pernod Ricard, o Ballantine\'s Finest apresenta notas delicadas de chocolate ao leite, maçã e baunilha, proporcionando um doce agradável que contrasta de forma inigualável com os cereais e leveduras de sua fórmula. Para encerrar, o seu uísque escocês conta ainda com um aroma suave, que apresenta um toque sutil de mel e especiarias.', 100.000, 79.99, 100, 100, 100, 'ballantines_blended_finest_reino_unido.png', 'Ballantine\'s Blended Finest Reino Unido ', 100, NULL, '00099', NULL, 'SIM', 'NAO', 'Whisky Ballantine\'s Finest Escocês 750 ml'),
(10, 6, 'Jack Paiols Ultra Premium', 'Cigarro de Palha Jack Paiol\'s\r\n\r\nCigarro de Palha Extra Premium com piteira\r\n\r\nConteúdo da caixa: 20 cigarros de palha com piteira\r\n\r\nProduto artesanal feito a mão, com palhas selecionadas e fumo de alta qualidade!\r\n\r\nUm conceito diferenciado, para um paladar sofisticado!', 100.000, 19.99, 100, 100, 100, '6132b3bafe1ad80f546e77ed_502x600.png', 'cigarro_palha', 100, NULL, '00100', NULL, 'SIM', 'NAO', 'Jack Paiols Palheiro Dourado Ultra Premium'),
(11, 6, 'Natural Amsterdam 25g Cx C/6', 'Tabaco nacional desenvolvido pela Amsterdam Tabaco, com fumo Natural 100% Livre de Aditivos. Embalagem reciclável, não agride o meio ambiente. Contém 25g', 100.000, 20.00, 5, 5, 100, 'Tabaco_AmsterdamCx1.png', 'cigarro_palha_2', 1000, NULL, '00101', NULL, 'SIM', 'NAO', 'Fumo P/Enrolar Natural Amsterdam 25g Cx C/6'),
(12, 6, 'Tabaco Hi Tobacco Golden Virginia', 'TABACO - HI TOBACCO GOLDEN VIRGINIA 35G\r\n\r\n \r\n\r\n \r\n\r\nTabaco virginia natural plantado e colhido em região demarcada como a melhor da categoria e uma das melhores do mundo. Composto de tabacos claros e suaves do tipo Virgínia original, é extremamente leve de fumar, com aroma de notas adocicadas.\r\n\r\n \r\n\r\nDesenvolvido sob severas observações e orientações de técnicos da região de Venâncio Aires no Sul do Brasil, sua embalagem é composta por três camadas de materiais, sendo uma delas o alumínio que juntamente com o velcro e o zíper melhora o acondicionamento protegendo contra perdas de umidade conservando o sabor e aroma do tabaco que são embalados em tablete, mantendo assim as propriedades do produto.\r\n\r\n \r\n\r\nNesta embalagem de 35 gramas você estará adquirindo o fumo Hi Tobacco Golden Virgínia com um fumo brasileiro de alta qualidade, podendo ter com uma embalagem o rendimento médio de 3 a 4 maços de cigarros.\r\n\r\n \r\n\r\n \r\n\r\nEspecificações:\r\n\r\n \r\n\r\nDimensões: (A x L x C) 2 x 8 x 13,5 cm\r\n\r\nTipo: Tabaco desfiado (Cabelinho)\r\n\r\nTeor: Médio impacto\r\n\r\n Sabor: Marcante\r\n\r\nPeso do produto: 35g\r\n\r\nVocê irá receber: 01 Bag de 25g de tabaco desfiado\r\n\r\n \r\n\r\n \r\n\r\nÉtica e responsabilidade: Trabalhamos com honestidade, ética e com um atendimento diferenciado. Procuramos sempre fortalecer e atender bem nossos clientes, para garantir que adquiram o produto e tenham sempre uma experiência satisfatória.\r\n\r\n \r\n\r\nUrban Haze Brasil\r\n\r\n \r\n\r\n \r\n\r\nObservações:\r\n\r\n \r\n\r\n- Pode haver alguma diferença de tonalidade entre a imagem e o produto real, por conta do tratamento de imagens e a calibração de cores do seu monitor.\r\n\r\n- As imagens são meramente ilustrativas, não acompanham objetos de decoração.\r\n\r\n- Ao receber a mercadoria, o cliente deve verificar as condições da embalagem, caso haja alguma avaria não assine o comprovante de recebimento.\r\n\r\n- Produto destinado para maiores de 18 anos', 100.000, 25.70, 5, 5, 100, 'tabacos_ds.png', 'cigarro_palha_3', 1000, NULL, '00102', NULL, 'SIM', 'NAO', 'TABACO - HI TOBACCO GOLDEN VIRGINIA 35G'),
(13, 12, '(Combo 1) Whisky + Red Bull', '<h2> Combo 1 </h2> Whisky Jack Daniel\'s Apple/ Maça Verde + Red Bull ', 1000.000, 189.99, 100, 100, 100, 'combos.png', 'combo_01', 1000, NULL, '00103', NULL, 'SIM', 'NAO', 'Combo  Whisky Red Label 1l + 4 Red Bull + 4 Águas De Coco '),
(14, 12, '(Combo 2)  Whisky + Red Bull ', '<h2> Combo 2 </h2> Whisky Jack Daniel\'s + Red Bull ', 1000.000, 259.99, 100, 100, 100, 'combos_02.png', 'combo_02', 1000, NULL, '00104', NULL, 'SIM', 'NAO', 'Combo Whisky Jack Daniel\'s + Red Bull '),
(15, 6, 'Carvão de Coco Fumax 1Kg para Narguile', 'Carvão de Coco Fumax é um ótimo produto para tornar sua sessão prolongada e sem interferência de cheiros e sabores. O carvão Fumax é hexagonal, o que garante maior segurança em cima do rosh e um aproveitamento melhor de espaço e calor.\r\n\r\nGera uma porção mínima de cinzas (cerca de 3% do volume da pedra) o que também contribui por manter o rosh sem cinzazs indesejadas e obstrução do fluxo de fumaça.\r\n\r\n', 100.000, 39.90, 100, 100, 100, 'fumax.png', 'fumax', 1500, NULL, '00105', NULL, 'SIM', 'NAO', 'Carvão de Coco Fumax 1Kg para Narguile'),
(16, 6, 'Carvão de Coco Fumax 500g para Narguile', 'Carvão Fumax, o melhor carvão do mercado. Carvão hexagonal, tamanho Jumbo. A caixa contém aproximadamente 26 peças.\r\n\r\n100% Natural;\r\nNão interfere no sabor;\r\nEconômico;\r\n2% a 3% de cinzas;\r\nInodoro;\r\nMaior duração.', 100.000, 24.99, 100, 100, 100, 'fumax_500.png', 'fumax_2', 1500, NULL, '00106', NULL, 'SIM', 'NAO', 'Carvão de Coco Fumax 500g para Narguile'),
(17, 10, 'Trident sabor Menta 21 unidades', 'Ingredientes:  <br/>\r\n\r\nGoma base, óleo vegetal, edulcorantes: sorbitol, maltitol, manitol, xilitol, aspartame e acesulfame de potássio e sucralose, antiumectante talco, aromatizantes, umectante glicerina, emulsificantes: ésteres de mono e diglicerídeos de ácidos graxos com ácido acético e lecitina de soja e corantes: dióxido de titânio e azul brilhante FCF.<br/>\r\nALÉRGICOS: CONTÉM DERIVADOS DE TRIGO E DE SOJA. PODE CONTER LÁTEX NATURAL. \r\nCONTÉM GLÚTEN. <br/> \r\n\r\nCONTÉM FENILALANINA. \r\n<br/>\r\n\r\nSem provocar cáries, Trident ainda deixa o seu hálito mais refrescante e agradável. Livre de açúcar, esta goma de mascar tem poucas calorias e é uma das campeãs de vendas. \r\n<br/>\r\nContém glúten\r\n<br/>\r\nContém lactose\r\n<br/>\r\n* Esclarecemos que, eventualmente, os fabricantes podem introduzir alterações na composição de seus produtos. Portanto, sempre confirme os ingredientes.\r\n\r\n', 100.000, 38.65, 100, 100, 100, 'mentos_sabor_menta.png', 'mentos_menta', 2000, NULL, '00107', NULL, 'SIM', 'NAO', 'Trident Goma De Mascar Sabor Menta Contendo 21 Unidades'),
(18, 10, 'Trident sabor Tutti-Frutti 21 unidades', 'Chiclete Trident Tutti-Frutti Mondelez 21 Unidades <br/>\r\nChiclete Trident Mondelez Goma de mascar sem açúcar Embalagem com 21 Unidades (168g) Sabor: Tutti-Frutti', 100.000, 34.00, 100, 100, 100, 'trident_tutti_fruti.png', 'mentos_tutti_fruti', 2000, NULL, '00108', NULL, 'SIM', 'NAO', 'Chiclete Trident Tutti-Frutti Mondelez 21 Unidades'),
(19, 2, ' Paulaner Hefe Weiss 500ml', 'Uma das melhores cervejas de trigo, a Paulaner Hefe-Weissbier¹ Naturtrüb é sutilmente amarga, não filtrada e de cor amarela turva, esta cerveja com teor alcoólico de 5,5% possui o clássico aroma do estilo Weiss de cravo e banana. Também é conhecida como “cerveja para o café da manhã”, na região da Bavária. Isso por ser uma cerveja de fácil digestão e leve. Com sabores frutados, malte adocicado e cravo, o sabor se assemelha muito aos aromas.', 100.000, 17.90, 100, 100, 100, 'paulaner_cerveja.png', 'paulaner_cerveja', 100, NULL, '00109', NULL, 'SIM', 'NAO', 'Cerveja Paulaner Hefe Weiss Garrafa 500ml'),
(20, 2, 'Colorado Indica 600ml', 'A Indica Colorado traz a legítima fórmula utilizada pelos soldados ingleses em sua longa viagem marítima até a Índia. Detalhe: com um toque especial da rapadura. Não por acaso, foi eleita pela revista Prazeres da Mesa a Cerveja do Ano e ainda recebeu 3 estrelas na publicação inglesa Pocket Beer Guide, o mais respeitado guia de cervejas do mundo.', 100.000, 12.59, 100, 100, 100, 'cerveja_colorado_indica.png', 'cerveja_colorado_indica', 100, NULL, '00110', NULL, 'SIM', 'NAO', 'Cerveja Colorado Indica, 600ml, Garrafa'),
(21, 2, 'Cerveja Sagres 330ml', 'A Cerveja Sagres 330ml possui o teor alcóolico de 5,0%, é produzida com ingredientes naturais, sem uso de conservantes e uma coloração dourada. Pode ser harmonizada com diferentes pratos de comida, como saladas e carnes, por exemplo.', 100.000, 13.60, 100, 100, 100, 'sagres_cerveja.png', 'cerveja_sagres', 3000, NULL, '00111', NULL, 'SIM', 'NAO', 'Cerveja Sagres 330ml'),
(22, 2, 'Cerveja Tecate 350ml', 'Cerveja mexicana Tecate <br/> O sucesso regional da cerveja TECATE chamou a atenção da tradicional Cervecería Cuauhtémoc, fundada em 1890, e que adquiriu a TECATE em 1954. A incorporação da marca ao portfólio da Cuauhtémoc ajudou a catapultar as vendas nacionalmente e posteriormente em mercados internacionais. Nas décadas seguintes a TECATE conquistou milhões de consumidores mexicanos e se transformou em uma das marcas mais fortes do país. No ano de 1991, em uma demonstração de pioneirismo, lançou a primeira embalagem de 12 latas do mercado mexicano. Em 1992 a marca voltou a inovar ao lançar a TECATE LIGHT, primeira cerveja light do mercado mexicano e, que em pouco tempo, se tornaria líder em sua categoria. A cerveja TECATE LIGHT, com apenas 110 calorias, foi de primordial importância para o estabelecimento da marca no competitivo mercado americano. Em 1995, introduziu a tampa de rosca para suas garrafas, que dispensava assim a utilização de abridor. E pouco depois apresentou a primeira lata de “boca larga” do mercado mexicano. Nos anos seguintes, a marca utilizou uma linha de comunicação polêmica, conhecida principalmente por suas propagandas machistas e masculinas. Afinal, a marca se tornou um símbolo de masculinidade representada pela força da águia preta de seu logotipo.', 100.000, 12.00, 100, 100, 100, 'tecate.png', 'tecate', 40, NULL, '00112', NULL, 'SIM', 'NAO', 'Cerveja Tecate 350ml '),
(23, 2, 'Cerveja Baden Baden 600ml', 'A Baden Baden Cristal 600ml é uma American Lager saborosa, leve e refrescante, com aroma floral do lúpulo e leve dulçor dos maltes especiais. A cerveja Baden Baden Cristal harmoniza bem com carnes brancas, peixes, massas leves, sushi e sashimi, queijos brie e camembert. Se você é um entusiasta das cervejas artesanais, vale conferir também os outros estilos de Baden Baden: American IPA (Com notas de Maracujá), Witibier (Trigo com notas de Coentro e Laranja) e Golden (Com notas de Canela e Frutas Vermelhas). A Baden Baden eleva a experiência cervejeira com sabores e combinações surpreendentes. Colocamos dentro de cada garrafa um pouco de tradição junto com inovação. Nós criamos receitas com sabores únicos. Experimente agora!', 100.000, 12.73, 100, 100, 100, 'cerveja_baden_baden.png', 'cerveja_baden_baden', 100, NULL, '00113', NULL, 'SIM', 'NAO', 'Cerveja BADEN BADEN Pilsen Cristal Garrafa 600ml'),
(24, 2, 'Cerveja Baden Baden 350ml', 'Produzida com maltes de trigo e de cevada, a Baden Baden Witbier não é filtrada e seu sabor traz a refrescância cítrica da laranja, com um leve sabor picante do coentro. Uma deliciosa e refrescante combinação que promete agradar aos mais exigentes paladares. Teor alcoólico: 4,9%%.', 100.000, 8.00, 100, 100, 100, 'cerveja_baden_baden_witbier_lata.png', 'cerveja_baden_baden_lata', 100, NULL, '00114', NULL, 'SIM', 'NAO', 'Cerveja Baden Baden Witbier Lata 350ml'),
(25, 2, 'Baden Baden 6 Unidades', 'Cerveja Baden Baden Witbier Ale\r\nSe você é um fã de bebidas e deseja se aventurar em um novo mundo de sabores, estilos, aromas e combinações, a Cerveja Baden Baden Witbier é uma excelente opção. Produzida de forma artesanal, ela é uma das melhores representantes do estilo Witbier que é de origem belga e conquistou os paladares de todo o mundo. A Baden Baden Witbier é uma cerveja artesanal não filtrada de trigo, leve e refrescante, que equilibra o cítrico da laranja com a leve picância da semente de coentro. A cerveja Witbier harmoniza perfeitamente com peixes suaves, sushi, frutos do mar, queijo brie, camembert e queijos de cabra. Nesta embalagem você leva 6 unidades lata de 350ml cada.A Baden Baden eleva a experiência cervejeira com sabores e combinações surpreendentes. Cada produto traz um pouco de tradição junto com inovação.', 100.000, 30.15, 100, 100, 100, 'cerveja_baden_baden_6_unid.png', 'cerveja_baden_baden_uni', 1000, NULL, '00115', NULL, 'SIM', 'NAO', 'Cerveja Baden Baden Witbier Ale - 6 Unidades Lata 350ml'),
(26, 2, 'Baden Baden Golden 600ml', 'Cerveja Baden Baden Golden Ale\r\nSe você é um fã de bebidas e deseja se aventurar em um novo mundo de sabores, estilos, aromas e combinações, a Cerveja Baden Baden Golden 600ml é uma excelente opção. Produzida de forma artesanal e sofisticada, ela é uma das melhores representantes do estilo Golden Ale que conquistou os paladares de todo o mundo. Ela se destaca principalmente pela leveza e dulçor que se traduzem nos aromas e sabores intensos de frutas vermelhas, canela e especiarias. Perfeita para harmonizar com diferentes pratos como frutos do mar, sobremesas à base de frutas e queijos gruyère e gouda.A Baden Baden eleva a experiência cervejeira com sabores e combinações surpreendentes. Cada produto traz um pouco de tradição junto com inovação.', 100.000, 12.73, 100, 100, 100, 'Cerveja_Baden_Baden_Golden_Ale.png', 'cerveja_baden_baden_golden', 1000, NULL, '00116', NULL, 'SIM', 'NAO', 'Cerveja Baden Baden Golden Ale - Garrafa 600ml'),
(27, 2, 'Baden Baden Ipan 600ml', '\"A Baden Baden American IPA 600ml é uma cerveja artesanal que equilibra o amargor do lúpulo com o intenso aroma e sabor cítricos provenientes do lúpulo e da adição de suco de maracujá. A cerveja American IPA harmoniza com pratos cítricos e gordurosos, como carnes vermelhas e queijo cheddar. Se você é um apaixonado por cervejas artesanais, vale conferir também os outros estilos de Baden Baden: Cristal (Pilsen), Witibier (Trigo com notas de coentro e laranja) e Golden (Com notas de Canela e Frutas Vermelhas). A Baden Baden eleva a experiência cervejeira com sabores e combinações surpreendentes. Colocamos dentro de cada garrafa um pouco de tradição junto com inovação. Nós criamos receitas com sabores únicos. Experimente agora!\"', 100.000, 13.99, 100, 100, 100, 'cerveja_american_ipa.png', 'cerveja_baden_baden_ipa', 1200, NULL, '00117', NULL, 'SIM', 'NAO', 'Cerveja BADEN BADEN American Ipa Puro Malte Garrafa 600ml'),
(28, 2, 'Bock Baden Baden ', 'Cerveja Baden Bock Garrafa 300ml Descartável 1un\r\nA Baden Bock é uma cerveja de coloração castanha escura, agradável, com suave aroma e sabor de caramelo, fácil de ser degustada e ideal para o aconchego do inverno.\r\nAcompanha carnes bovinas e suínas, pratos com cogumelos e queijos como gorgonzola e parmesão e sobremesas a base de chocolate.\r\nEmbalagem:\r\n- Garrafa de vidro descartável.\r\nVolume:\r\n- 300ml, 1UN', 100.000, 8.48, 100, 100, 100, 'cerveja_bock_baden.png', 'cerveja_baden_bock', 1500, NULL, '00118', NULL, 'SIM', 'NAO', 'Cerveja Baden Bock Garrafa 300ml Descartável 1un - SSG'),
(29, 2, 'Baden Baden Ipa 600ml', 'Cerveja Baden Baden IPA Maracujá 600ml c6. \\n \\nÁ princípio, esta é uma cerveja do estilo American India Pale Ale. \\n \\nA cerveja IPA da Baden Baden possui aroma intenso de maracujá, proveniente dos lúpulos tanto quanto da adição do suco da fruta. \\n \\nSua coloração é acobreada e tem amargor potente mas equilibrado por seu sabor cítrico e teor alcoólico elevado. \\n \\nEla é produzida com a técnica Dip Hop, ou seja, tem maior diferença e personalização dos aromas nobres do lúpulo. Assim, não muda na qualidade do amargor. \\n \\nAlém disso, combina com carnes, comidas condimentadas e apimentadas. \\n \\nPor exemplo: hambúrguer, comida mexicana (assim como com tacos e burritos), picanha ou entrecôte grelhado. \\n \\nA cervejaria Baden Baden nasceu em Campos do Jordão então como uma das pioneiras na produção de cervejas artesanais de qualidade. Atualmente, chega em vários lugares do Brasil. \\n \\nAssim, desde 1999, a empresa assumiu o compromisso de seguir a tradição cervejeira sem abrir mão de criar receitas que surpreendam para, assim, continuar fazendo cerveja como nunca! \\n \\nFicha Técnica Cerveja Baden Baden IPA Maracujá 600ml c6. \\nFamília: Ale \\nTipo: American India Pale Ale \\nEmbalagem: Garrafa \\nVolume: 600 ml \\nGraduação Alcoólica: 6,4% vol \\nConsumir entre: 6°e 9°C \\n(IBUs): 33 \\nIngredientes: água, malte, lúpulo e fermento. \\nTemperatura Sugerida: 6 ºC \\nOrigem: Brasil \\nFabricação: Brasil \\n \\nÉ proibida a venda de bebidas para menores de 18 anos. \\n \\nBeba com moderação. \\n \\nSe beber não dirija.', 100.000, 97.53, 100, 100, 100, 'cerveja_baden_baden_ipa_ma.png', 'cerveja_baden_baden_ipa_ma', 1700, NULL, '00119', NULL, 'SIM', 'NAO', 'Cerveja Baden Baden Ipa Maracuja Gf 600m 6 Unidades'),
(30, 2, 'Cerveja Bohemia Lata 350ml', 'Cerveja Bohemia Lata 350ml\r\nClara, leve e muito refrescante, é produzida com malte 100% importado e lúpulo Saaz, da República Tcheca. Seu aroma levemente frutado é marcado por notas leves de malte e lúpulo.', 100.000, 2.99, 100, 100, 100, 'bohemia.png', 'bohemia', 200, NULL, '00120', NULL, 'SIM', 'NAO', 'Cerveja Bohemia Lata 350ml'),
(31, 2, 'Lager Long Neck 275ml', 'É uma cerveja com notas pronunciadas de malte e lúpulo e o seu leve amargor que entregam um sabor único e convidativo.', 100.000, 4.79, 100, 100, 100, 'imperio_cerveja_lager_long.png', 'imperio_cerveja_lager_long', 350, NULL, '00121', NULL, 'SIM', 'NAO', 'Imperio Cerveja Lager Long Neck'),
(32, 4, 'Coca-Cola Original 1,5L', 'Refrigerante Coca Cola 1,5L  Água gaseificada, açúcar, extrato de noz-de-cola, cafeína, corante caramelo IV, acidulante ácido fosfórico, aroma natural e edulcorante sucralose (4,4mg) por 100ml.', 1.550, 6.99, 100, 100, 100, 'coca_cola.png', 'coca_cola', 1500, NULL, '00122', NULL, 'SIM', 'NAO', 'Refrigerante Coca-Cola Sabor Original Pet 1,5L'),
(33, 4, 'Pepsi Black 2L', 'Refrigerante Pepsi Black Sem Açúcares Pet 2 Litros \r\n\r\n', 100.000, 8.29, 100, 100, 100, 'pepsi_cola.png', 'pepsi_cola', 2000, NULL, '00123', NULL, 'SIM', 'NAO', 'Refrigerante Pepsi Black Sem Açúcares Pet 2 Litros'),
(34, 4, 'Pepsi Black lata 350 ml', 'Originalmente, a fórmula da Pepsi foi criada para fins medicinais. Mas seu sabor agradou tanto que o xarope começou a ser consumido simplesmente por prazer. Cinco anos mais tarde, a fórmula transformou-se em bebida e começou a ser comercializada. Hoje, a Pepsi é um refrigerante de cola com aroma natural, muito apreciado pelo sabor suave e pela refrescância. ', 100.000, 2.29, 100, 100, 100, 'pepsi_lata.png', 'pepsi_lata', 400, NULL, '00124', NULL, 'SIM', 'NAO', 'Refrigerante Pepsi Black sem açúcar lata 350 ml'),
(35, 4, 'Pepsi Black 200ml', 'Refrigerante Pepsi Black Sem Açúcares.\r\n\r\nA Pepsi Black traz a ousadia e efervescência da Geração Z em uma fórmula inovadora que garante sabor intenso a cada gole.\r\n\r\nO refrigerante Pepsi Black é zero açúcar e zero calorias porém tem um sabor muito mais intenso que a Pepsi Zero!\r\n\r\nElaborado com aromatizantes naturais compostos: água gaseificada, cafeína, conservador, corante, acidulante, edulcorantes artificiais: acesulfame e aspartame.\r\n\r\nBebida não Alcoólica.\r\nContém 200ml.\r\nRefrigerante Fabricado no Brasil.', 100.000, 1.39, 100, 100, 100, 'pepsi_pet.png', 'pepsi_pet', 500, NULL, '00125', NULL, 'SIM', 'NAO', 'Refrigerante Pepsi Black Sem Açúcares 200ml'),
(36, 4, ' Pepsi 1,5L ', 'Refrigerante Garrafa 1,5L 1 UN Pepsi <br/>\r\nOriginalmente, a fórmula da Pepsi foi criada para fins medicinais, mas seu sabor agradou tanto que o xarope começou a ser consumido simplesmente por prazer.\r\nHoje, a Pepsi é um refrigerante de cola com aroma natural, muito apreciado pelo sabor suave e pela refrescância.', 100.000, 5.39, 100, 100, 100, 'pepsi_d.png', 'pepsi_d', 4000, NULL, '00126', NULL, 'SIM', 'NAO', 'Refrigerante Garrafa 1,5L 1 UN Pepsi'),
(37, 4, 'Kit 6 Pepsi 200ml', 'Kit 6 Refrigerante Pepsi 200ml', 100.000, 9.60, 100, 100, 100, 'pepsi_6_uni.png', 'pepsi_6', 200, NULL, '00127', NULL, 'SIM', 'NAO', 'Kit 6 Refrigerante Pepsi 200ml'),
(38, 4, 'Pepsi 3,3L', 'PEPSI é um produto clássico vendido no mundo inteiro, chegou no Brasil em 1952. Um refrigerante de cola com sabor único, refrescante e estimulante\r\n', 100.000, 10.59, 100, 100, 100, 'pepsi_g.png', 'pepsi_g', 50, NULL, '00128', NULL, 'SIM', 'NAO', 'Refrigerante Cola Pepsi Garrafa 3,3l'),
(39, 4, 'Pepsi Lata 350ml', 'Originalmente, a fórmula da Pepsi foi criada para fins medicinais. Mas seu sabor agradou tanto que o xarope começou a ser consumido simplesmente por prazer. Cinco anos mais tarde, a fórmula transformou-se em bebida e começou a ser comercializada. Hoje, a Pepsi é um refrigerante de cola com aroma natural, muito apreciado pelo sabor suave e pela refrescância.', 100.000, 2.49, 100, 100, 100, 'pepsi_latas.png', 'pepsi_latas', 2000, NULL, '00129', NULL, 'SIM', 'NAO', 'Refrigerante PEPSI Lata 350ml'),
(40, 4, 'Coca-Cola Lata 350ml Pack ', 'Pack com 6 Unidades de Coca Cola Lata 350ml', 100.000, 17.94, 100, 100, 100, 'coca_colas.png', 'coca_colas', 300, NULL, '00130', NULL, 'SIM', 'NAO', 'Refrigerante Coca Cola Lata 350ml Pack com 6 Unidades'),
(41, 4, 'Coca-Cola Baunilha 355ml', 'Aprecie o sabor fresco e refrescante da Coca-Cola com um toque de baunilha.\r\n \r\nSirva gelado para maior sabor e refrescância!\r\n \r\nRefrigerante misto de noz de cola e baunilha.\r\n \r\nIngredientes: àgua carbonatada, xarope de milho de alta frutose, extrato de noz de cola, extrato de baunilha.\r\nCorante caramelo IV, acidulante: ácido fosfórico, cafeína.\r\n \r\nNão contém glúten, contém aromatizante\r\n \r\nOrigem: Estados Unidos', 100.000, 29.90, 100, 100, 100, 'coca_colas_bau.png', 'coca_colas_bau', 25, NULL, '00131', NULL, 'SIM', 'NAO', 'Coca Cola Sabor Baunilha Vanilla Coke Flavors Eua Lata 355ml'),
(42, 4, 'Coca-Cola 220ml', '\r\nREFRI COCA COCA LTA 220ML', 100.000, 2.49, 100, 100, 100, 'coca_cola_lata.png', 'coca_cola_lata', 100, NULL, '00132', NULL, 'SIM', 'NAO', 'Coca-Cola Sabor Original LATA 220ML'),
(43, 4, 'Coca-Cola 350ml', '\r\nREFRIG COCA SA LTA 350ML', 100.000, 3.49, 100, 100, 100, 'coca_cola_latas_z.png', 'coca_cola_latas_z', 120, NULL, '00133', NULL, 'SIM', 'NAO', 'Coca-Cola Sem Açúcar LATA 350ML'),
(44, 4, 'Coca-Cola Café 220ml', 'Coca-Cola Plus Café une duas paixões: Coca-Cola e café! Com 40% a mais de cafeína e um sabor diferente de tudo o que você já experimentou, a Coca-Cola Plus Café Espresso 220ml é o gás que falta no seu dia. Experimente!\r\n\r\nPorção de 220 ml (1 copo) = 43 kcal.', 100.000, 3.15, 100, 100, 100, 'coca_cola_plus.png', 'coca_cola_plus', 1000, NULL, '00135', NULL, 'SIM', 'NAO', 'Refrigerante Coca Cola Plus Café Espresso Lata 220Ml'),
(45, 4, 'Coca-Cola Byte 310ml', 'Refrigerante COCA COLA Byte sem Açúcar 310ml', 100.000, 2.99, 100, 100, 100, 'coca_cola_especial.png', 'coca_cola_especial', 10, NULL, '00136', NULL, 'SIM', 'NAO', 'Refrigerante COCA COLA Byte sem Açúcar 310ml'),
(46, 4, 'Coca-Cola 3L', 'Para quem é fã de Coca-Cola e deseja reduzir sua ingestão de açúcar sem abrir mão do sabor original da Coca-Cola, temos a versão com 30% menos açúcar. Tão refrescante quanto a Coca-Cola Original e ainda por cima com menos calorias. Compartilhe essa experiência com alguém especial!', 100.000, 12.29, 100, 100, 100, 'coca_cola_g.png', 'coca_cola_g', 100, NULL, '00137', NULL, 'SIM', 'NAO', 'Coca-Cola Menos Açúcar PET 3L'),
(47, 4, 'Coca-Cola Zero 2L', 'Refrigerante Zero Açúcar Garrafa 2L 1 UN Coca Cola\r\nA Coca-Cola sem açúcar tem um novo sabor ainda mais atraente para as pessoas que desejam reduzir o consumo de calorias.\r\nO sabor que você adora, sem açúcar.', 100.000, 9.10, 100, 100, 100, 'coca_cola_z_2.png', 'coca_cola_z_2', 120, NULL, '00138', NULL, 'SIM', 'NAO', 'Refrigerante Zero Açúcar Garrafa 2L 1 UN Coca Cola'),
(48, 4, 'Dolly Guarana 2L', '1 unidade Dolly 2 litros.', 100.000, 6.87, 100, 100, 100, 'dolly_guarana.png', 'dolly_guarana', 1200, NULL, '00139', NULL, 'SIM', 'NAO', 'Refrigerante Dolly Guarana 2l'),
(49, 4, 'Dolly Uva 2L', 'Refrigerante Sabor Uva Dolly 2L: Dolly é presença na mesa dos brasileiros desde 1987, é um refrigerante feito com o extrato natural da própria fruta, é ideal para ser servida bem gelada em ocasiões especiais, almoços, jantares, lanches e churrascos.', 100.000, 4.46, 100, 100, 100, 'dolly_uva.png', 'dolly_uva', 1200, NULL, '00140', NULL, 'SIM', 'NAO', 'Refrigerante Sabor Uva Dolly 2L'),
(50, 4, 'Dolly Limao 2L', 'Refrigerante Sabor Limão Dolly 2L: Dolly é presença na mesa dos brasileiros desde 1987, é um refrigerante feito com o extrato natural da própria fruta, é ideal para ser servida bem gelada em ocasiões especiais, almoços, jantares, lanches e churrascos. ', 100.000, 4.46, 100, 100, 100, 'dolly_limao.png', 'dolly_limao', 1200, NULL, '00141', NULL, 'SIM', 'NAO', 'Refrigerante Sabor Limão Dolly 2L'),
(51, 4, 'Dolly Laranja 350ml', 'Refrigerante Laranja Pet 350ml - Dolly', 100.000, 3.99, 100, 100, 100, 'dolly_laranja.png', 'dolly_laranja', 100, NULL, '00142', NULL, 'SIM', 'NAO', 'Refrigerante Laranja Pet 350ml - Dolly'),
(55, 4, 'Diet Dolly Guarana 350ml', 'Refrigerante produzido com extrato, aromas naturais de Guaraná e aditivos como conservantes e acidulantes. Nativo da floresta Amazônica o guaraná se adaptou e passou a ser cultivado em várias regiões do Brasil. Porém muitas pessoas não conhecem o poder do extrato de guaraná. Além de agir como forte estimulante, acredita-se que o guaraná seja também regulador intestinal, tônico cardiovascular, reparador da fadiga e até afrodisíaco.', 100.000, 21.29, 100, 100, 100, 'dolly_diet_guarana.png', 'dolly_diet_guarana', 1400, NULL, '00143', NULL, 'SIM', 'NAO', 'Dolly Guarana 12un 350ml'),
(56, 4, 'Kit 7 Dolly Guarana 2L', 'Refrigerante Dolly Guaraná 2 litros. É produzido com concentrado a base de extrato natural de guaraná, possui em sua composição alguns aditivos como Ácido Ascórbico (vitamina C) e benzoato de sódio (conservante). Conteúdo2 Litrosl (Pet). Refrigerante nacional.', 100.000, 61.00, 100, 100, 100, 'kit_dolly.png', 'kit_dolly', 200, NULL, '00144', NULL, 'SIM', 'NAO', 'Kit C/7 Refrigerante Dolly Guarana 2 Litros'),
(57, 4, 'Dolly Guarana 350ml', 'Refrigerante Sabor Guaraná Dolly 350ml: Dolly é presença na mesa dos brasileiros desde 1987, é um refrigerante feito com o extrato natural da própria fruta, é ideal para ser servida bem gelada em ocasiões especiais, almoços, jantares, lanches e churrascos', 100.000, 1.85, 100, 100, 100, 'dolly_guarana_mini.png', 'dolly_guarana_mini', 5000, NULL, '00145', NULL, 'SIM', 'NAO', '\r\nDolly Guaraná 350ml'),
(58, 4, 'Dolly Limao 350ml', 'Refrigerante Dolly Limão Pet 350ml 1un.', 100.000, 3.99, 100, 100, 100, 'dolly_mini_limao.png', 'dolly_mini_limao', 200, NULL, '00146', NULL, 'SIM', 'NAO', 'Refrigerante Dolly Limão Pet 350ml 1un.'),
(59, 4, 'Dolly Cola 2L', 'Dolly Refrigerante Cola 2 L', 100.000, 4.39, 100, 100, 100, 'dolly_cola.png', 'dolly_cola', 1200, NULL, '00147', NULL, 'SIM', 'NAO', 'Dolly Refrigerante Cola'),
(60, 4, 'Dolly Laranja 2L', 'Refrigerante Sabor Laranja Dolly 2L: Dolly é presença na mesa dos brasileiros desde 1987, é um refrigerante feito com o extrato natural da própria fruta, é ideal para ser servida bem gelada em ocasiões especiais, almoços, jantares, lanches e churrascos.', 100.000, 4.46, 100, 100, 100, 'dolly_laranja_grande.png', 'dolly_laranja_grande', 1300, NULL, '00148', NULL, 'SIM', 'NAO', 'Refrigerante Sabor Laranja Dolly 2L'),
(61, 4, 'Dolly Cola 350ml', 'Refrigerante de Cola Dolly 350ml: Dolly é presença na mesa dos brasileiros desde 1987, é um refrigerante feito com o extrato natural da própria fruta, é ideal para ser servida bem gelada em ocasiões especiais, almoços, jantares, lanches e churrascos. ', 100.000, 1.86, 100, 100, 100, 'dolly_cola_mini.png', 'dolly_cola_mini', 60, NULL, '00149', NULL, 'SIM', 'NAO', 'Refrigerante de Cola Dolly 350ml'),
(62, 4, 'Dolly Citrus 2L', 'Dolly Refrigerante Citrus 2 L', 100.000, 4.37, 100, 100, 100, 'dolly_citrus.png', 'dolly_citrus', 1000, NULL, '00150', NULL, 'SIM', 'NAO', 'Dolly Refrigerante Citrus 2L'),
(63, 4, 'Dolly 350ml vários sabores', 'Refrigerante Dolly 350 ML - Vários Sabores\r\n<br/><br/><br/>\r\nDOLLY O MELHOR!!!!\r\nConquistando o respeito e credibilidade do consumidor brasileiro ao se consagrar um sucesso no mercado de refrigerantes, em 2003 a Dolly lançou sua nova campanha: “Dolly: para quem não tem medo de mudar… para melhor”. A cada dia mais, Dolly vem fazendo parte do cotidiano do brasileiro. A campanha prestigiou o consumidor que sabe escolher o que é melhor. \r\n<br/><br/><br/>\r\nDescrição:\r\nDOLLY GUARANÁ\r\nRefrigerante produzido com extrato, aromas naturais de Guaraná e aditivos como conservantes e acidulantes. Nativo da floresta Amazônica o guaraná se adaptou e passou a ser cultivado em várias regiões do Brasil.  Porém muitas pessoas não conhecem o poder do extrato de guaraná. Além de agir como forte estimulante, acredita-se que o guaraná seja também regulador intestinal, tônico cardiovascular, reparador da fadiga e até afrodisíaco. Como todos os produtos da linha Dolly, o Dolly Guaraná passa por rigorosos controles de qualidade que asseguram seu delicioso sabor. \r\n<br/><br/><br/>\r\nDOLLY COLA\r\nRefrigerante produzido a partir de concentrado natural de cola, com aromas e extrato de noz de cola. Como todos os produtos da linha Dolly, o Dolly Cola passa por rigorosos controles de qualidade que asseguram seu delicioso sabor.\r\n<br/><br/><br/>\r\nDOLLY LIMÃO\r\nRefrigerante produzido com suco concentrado e clarificado de limão, aroma natural de limão e aditivos como conservantes e acidulantes. A quantidade de vitamina C no suco de limão, varia de 22 à 29mg/100ml\r\nComo todos os produtos da linha Dolly, o Dolly limão passa por rigorosos controles de qualidade que asseguram seu delicioso sabor.\r\n<br/><br/><br/>\r\nDOLLY CITRUS\r\nRefrigerante com sucos e aromas nos sabores Limão, Grapefruit, Maçã e Laranja. Refrigerante com sabor diferenciado por ser composto de um mix de sabores de frutas.\r\n<br/><br/><br/>\r\nDOLLY UVA\r\nRefrigerante produzido com com suco concentrado e clarificado de uva, aroma e aditivos como conservantes e acidulantes. O suco de uva é rico em pigmentos naturais vermelhos, que são responsáveis por aquela coloração típica dos concentrados de uva. Como todos os produtos da linha Dolly, o Dolly Uva passa por rigorosos controles de qualidade que asseguram seu delicioso sabor.\r\n<br/><br/><br/>\r\nDOLLY LARANJA\r\nRefrigerante produzido com suco concentrado  de laranja, aroma natural de laranja, aditivos como conservantes e acidulantes. A quantidade de vitamina C no suco de laranja é de 45 à 3mg/100ml. Como todos os produtos da linha Dolly, o Dolly Laranja passa por rigorosos controles de qualidade que asseguram seu delicioso sabor.', 100.000, 3.99, 100, 100, 100, 'kit_dolly_sabores.png', 'kit_dolly_sabores', 100, NULL, '00151', NULL, 'SIM', 'NAO', 'Refrigerante Dolly 350 ML - Vários Sabores - Dollynho'),
(65, 4, 'Itubaína Retrô 350ml', 'Itubaína Original é um refrigerante com um sabor único, delicioso e doce na medida certa. Itubaína vai bem em qualquer ocasião e está disponível na lata de 350ml para você aproveitar em qualquer lugar. Experimente Itubaína Original e não deixe de conhecer nossa linha completa! <br>\r\n\r\nIngredientes: <br>\r\n\r\nÁgua carbonatada, açúcar, extrato de guaraná, acidulantes ácido fosfórico e ácido cítrico, corante caramelo IV, conservador benzoato de sódio e aroma idêntico ao natural de tutti-frutti.', 100.000, 2.49, 100, 100, 100, 'tubaina.png', 'tubaina', 1000, NULL, '00152', NULL, 'SIM', 'NAO', 'Refrigerante Itubaína Retrô 350ml'),
(66, 4, 'Funada Tubaina 2L', 'A tubaína é um refrigerante que mexe com o imaginário de muitas pessoas e boa parte tem uma ótima memória com essa deliciosa bebida. Esse saboroso refrigerante é capaz de fazer a alegria de toda a família e conta com um gostinho único e especial. Momentos alegres e divertidos pedem uma tubaína funada bem geladinha! Aproveite.', 100.000, 4.99, 100, 100, 100, 'tubaina_funada.png', 'tubaina_funada', 1200, NULL, '00153', NULL, 'SIM', 'NAO', 'Refrigerante Funada Tubaína 2L'),
(67, 4, 'Guaraná Tubaina POTY 2L ', 'Tubaína Docinha similiar a Poty Antartica Cotuba Tubaína combina com tudo, festas, com pipoca, com cinema em casa, beba Tubaína', 100.000, 6.99, 100, 100, 100, 'poty_tubaina.png', 'poty_tubaina', 8000, NULL, '00154', NULL, 'SIM', 'NAO', 'Refrigerante Guaraná Tubaína POTY PET 2L '),
(68, 4, 'Guaraná Cotuba 237ml', 'Refrigerante Guaraná Cotuba Garrafa 237Ml', 100.000, 2.92, 100, 100, 100, 'Cotuba.png', 'cotuba', 120, NULL, '00155', NULL, 'SIM', 'NAO', 'Refrigerante Guaraná Cotuba Garrafa 237ml\r\nNovo  |  285 vendidos\r\nRefrigerante Guaraná Cotuba Garrafa 237ml'),
(69, 4, 'Guaraná Jesus 310ml', 'Refrigerante Guaraná Jesus Lata 310ml', 100.000, 3.37, 100, 100, 100, 'guarana_jesus.png', 'guarana_jesus', 80, NULL, '00156', NULL, 'SIM', 'NAO', 'Refrigerante Guaraná Jesus Lata 310ml'),
(70, 4, 'Tubaína Tutti Frutti 350ml', 'Refrigerante Tutti Frutti Zero Açúcar Itubaína Retrô Lata 350ml\r\n', 100.000, 2.99, 100, 100, 100, 'tubaina_retro_zero.png', 'tubaina_retro_zero', 1200, NULL, '00157', NULL, 'SIM', 'NAO', 'Refrigerante Tutti Frutti Zero Açúcar Itubaína Retrô Lata 350ml\r\n'),
(71, 4, 'Kit 6 fantas guaraná 350ml', 'Pack Refrigerante Guaraná Zero Adição de Açúcar Fanta Lata 6 Unidades 350ml Cada', 100.000, 21.90, 100, 100, 100, 'fanta_guarana.png', 'fanta_guarana', 842, NULL, '00158', NULL, 'SIM', 'NAO', 'Pack Refrigerante Guaraná Zero Adição de Açúcar Fanta Lata 6 Unidades 350ml Cada'),
(72, 4, 'Sprite Limão 220ml', 'Refrigerante Limão Sprite Lata 220ml', 100.000, 2.49, 100, 100, 100, 'refri_sprinte.png', 'refri_sprinte', 321, NULL, '00159', NULL, 'SIM', 'NAO', 'Refrigerante Limão Sprite Lata 220ml'),
(73, 4, 'Sprite Original Pet 600ml', 'Refrigerante Sprite Original Pet 600ml', 100.000, 3.49, 100, 100, 100, 'sprite_pet.png', 'sprite_pet', 232, NULL, '00160', NULL, 'SIM', 'NAO', 'Refrigerante Sprite Original Pet 600ml'),
(74, 4, 'Sprite Lemon Lemon 510ML', 'REFRI SPRITE FRESH Z ACUCAR 510ML', 100.000, 2.69, 100, 100, 100, 'sprite_log.png', 'sprite_log', 132, NULL, '00161', NULL, 'SIM', 'NAO', 'Sprite Lemon Fresh PET 510ML'),
(75, 4, 'Sprite Limão 200ml', 'Sprite Refrigerante Limão Pet 200 mL packing: Garrafa', 100.000, 1.69, 100, 100, 100, 'sprit_mini.png', 'sprit_mini', 1432, NULL, '00162', NULL, 'SIM', 'NAO', 'Sprite Refrigerante Sabor Limao Sem Acucar Pet 200Ml'),
(76, 4, 'Sprite PET 2L', 'Com um sabor único, Sprite Sem Açúcar é o refrigerante de limão mais vendido no mundo. Produzido com água gaseificada, suco de limão e aroma natural, não contém açúcares. Compre Refrigerante Sprite e experimente esse gostinho refrescante!', 100.000, 8.59, 100, 100, 100, 'sprit_logs.png', 'sprit_logs', 4723, NULL, '00163', NULL, 'SIM', 'NAO', 'Sprite Original PET 2L'),
(77, 4, 'Coca-Cola Pet 200ml', 'Com sabor inconfundível e único, uma Coca-Cola Original é o refrigerante mais tradicional e consumido no mundo inteiro! Toda Coca-Cola Original é especialmente concebido para manter sempre a qualidade do melhor sabor de refrigerante! É perfeita para compartilhar os melhores momentos da vida com amigos e familiares!', 100.000, 1.79, 100, 100, 100, 'coca_cola_220.png', 'coca_cola_220', 313, NULL, '00164', NULL, 'SIM', 'NAO', 'Refrigerante Coca-Cola Garrafa 200ml\r\n\r\n'),
(78, 4, 'Coca-Cola Pet 600ml', 'Refrigerante Coca Cola Pet 600 ml', 100.000, 4.39, 100, 100, 100, 'coca_cola_600.png', 'coca_cola_600', 7636, NULL, '00165', NULL, 'SIM', 'NAO', 'Refrigerante Coca Cola Pet 600 ml'),
(79, 4, 'Coca-Cola 6 uni.. 2L', 'Coca Cola Pet 2,250 Lt original 6 unidades pack - Cola-Cola', 100.000, 60.00, 100, 100, 100, 'pack_6_coca_cola.png', 'pack_6_coca_cola', 642, NULL, '00166', NULL, 'SIM', 'NAO', 'Coca Cola Pet 2,250 Lt original 6 unidades pack - Cola-Cola'),
(80, 4, 'Coca-Cola12 uni.. 250ml', 'Refrigerante Coca Cola 250ml Pet Kit Com 12 Unidades 12 Refrigerantes Coca Cola 250ml Pet Cada com Sabor Inconfundível E Único, A Coca-cola Original É O Refrigerante Mais Tradicional E Consumido No Mundo Inteiro Toda Coca-cola Original É Produzida Especialmente Para Manter Sempre A Qualidade Do Melhor Sabor De Refrigerante É Perfeita Para Compartilhar Os Melhores Momentos Da Vida Com Amigos E Familiares. água Gaseificada, Açúcar, Extrato De Noz De Cola, Cafeína, Corante Caramelo Iv, Acidulante Ácido Fosfórico E Aroma Natural. não Alcoólico. contém Açúcar. Marca:coca Cola Marca:coca-cola', 100.000, 78.80, 100, 100, 100, 'coca_cola_pacote.png', 'coca_cola_pacote', 412, NULL, '00167', NULL, 'SIM', 'NAO', 'Refrigerante Coca Cola 250ml Pet Kit Com 12 Unidades'),
(81, 4, 'Kit C/48 Coca-cola 200ml', 'Refrigerante Coca-cola Pet 200ml\r\n\r\nCoca-Cola, sinta o sabor. Delicioso e inconfundível refrigerante refrescante com sabor único e incomparável. Em embalagem pet com 200ml, ideal para beber gelada a qualquer hora, para matar a sede ou para acompanhar suas melhores refeições.', 100.000, 159.90, 100, 100, 100, 'coca_cola_super.png', 'coca_cola_super', 632, NULL, '00168', NULL, 'SIM', 'NAO', 'Kit C/48 Refrigerante Coca-cola Pet 200ml'),
(82, 4, 'Refrigerante Itubaina 2L', 'A Itubaína é uma marca de refrigerantes criada em 1954, e ao longo dos anos vem atualizando suas embalagens, mas nunca seu sabor, que permanece o clássico sabor de infância. O Refrigerante Itubaína 2L é uma bebida adocicada sabor tutti-frutti perfeita para acompanhar as refeições ou refrescar um dia quente, possuindo coloração marrom clara e cristalina, além de um aroma agradável e cativante. Cada gole é uma explosão de sabor. Não Contém Glúten. Confira os detalhes desse produto.', 100.000, 5.99, 100, 100, 100, 'tubaina_original.png', 'tubaina_original', 631, NULL, '00169', NULL, 'SIM', 'NAO', 'Refrigerante Itubaina 2L'),
(83, 4, 'Sukita Laranja 2L', 'Refrigerante Sukita Laranja 2 Litros geladíssimo!', 100.000, 5.50, 100, 100, 100, 'sukita_laranja.png', 'sukita_laranja', 542, NULL, '00170', NULL, 'SIM', 'NAO', 'Refrigerante Sukita Laranja 2 Litros'),
(84, 4, 'Sukita Uva 2L ', 'Refrigerante de uva, elaborado a partir de suco natural de uva. Produzido com água gaseificada e suco natural, é um refrigerante de uva refrescante e muito saboroso ao paladar.', 100.000, 7.65, 100, 100, 100, 'sukita_uva.png', 'sukita_uva', 631, NULL, '00171', NULL, 'SIM', 'NAO', 'Refrigerante de Uva Garrafa 2L 1 UN Sukita'),
(85, 4, 'Sukita Limão 2L', 'Refrigerante de limão, elaborado a partir de suco natural de limão. Produzido com água gaseificada e suco natural, é um refrigerante refrescante e muito saboroso.', 100.000, 4.49, 100, 100, 100, 'sukita_limao.png', 'sukita_limao', 5773, NULL, '00172', NULL, 'SIM', 'NAO', 'Refrigerante Limão Sukita Garrafa 2l\r\n\r\n\r\n'),
(86, 4, 'Kit 6 It! Guaraná 2L', 'Kit 6 unidades de  Refrigerante It! Guaraná Pet 2000ml ', 100.000, 70.00, 100, 100, 100, 'it_refrigerante.png', 'it_guarana', 6321, NULL, '00173', NULL, 'SIM', 'NAO', 'Kit 6un Refrigerante It! Guaraná Pet 2000ml'),
(87, 4, 'It! Cola 2L', 'Refrigerante de Cola It! Garrafa 2l', 100.000, 4.49, 100, 100, 100, 'refri_cola_it.png', 'refri_cola_it', 648, NULL, '00174', NULL, 'SIM', 'NAO', '\r\nRefrigerante Cola It! Garrafa 2lRefrigerante Cola It! Garrafa 2lRefrigerante Cola It! Garrafa 2l\r\nRefrigerante Cola It! Garrafa 2l'),
(88, 4, 'It! Guaraná 2L', 'Refrigerante It! Guaraná Pet.Ideal para comemorações, It! Guaraná vai bem naquele churrasco, aniversário ou vendo aquele filme com os amigos.Bebida Não Alcoólica.Contém 2L.Refrigerante Nacional.\r\n', 100.000, 4.00, 100, 100, 100, 'it_guarana_refri.png', 'it_guarana_refri', 321, NULL, '00175', NULL, 'SIM', 'NAO', 'Refrigerante It! Guaraná Pet 2L'),
(89, 4, 'It! Limão 2L', 'Refrigerante Limão It! Garrafa 2l', 100.000, 3.99, 100, 100, 100, 'it_limao.png', 'it_limao', 723, NULL, '00176', NULL, 'SIM', 'NAO', 'Refrigerante Limão It! Garrafa 2l'),
(90, 4, 'Edição Mashmellow 310ml', 'Refrigerante Melancia e Morango sem Açúcar Coca-Cola Creations Lata 310ml Marshmello\'s', 100.000, 4.80, 100, 100, 100, 'marshmellow_coca.png', 'coca_cola_marshmellow', 23, NULL, '00177', NULL, 'SIM', 'NAO', 'Refrigerante Melancia e Morango sem Açúcar Coca-Cola Creations Lata 310ml Marshmello\'s'),
(91, 4, 'Guaraná Cruzeiro 2L', 'É uma bebida muito refrescante e ideal para ser consumida durante as suas refeições com a família e amigos ou quando você quer matar a sua sede e se refrescar.', 100.000, 4.09, 100, 100, 100, 'guarana_cruzeiro.png', 'guarana_cruzeiro', 98, NULL, '00178', NULL, 'SIM', 'NAO', 'Cruzeiro Refrigerante Guaraná Premium 2 Litros'),
(92, 4, 'It! Lata 550ml', 'Refrigerante Iti Lemon Ice Lata 350Ml', 100.000, 5.89, 100, 100, 100, 'it_lata.png', 'it_lata', 23, NULL, '00179', NULL, 'SIM', 'NAO', 'Refrigerante Iti Lemon Ice Lata 350Ml'),
(93, 4, 'Pepsi Twist 2L', 'Refrigerante Twist Garrafa 2L 1 UN Pepsi', 100.000, 9.55, 100, 100, 100, 'pepsi_twist.png', 'pepsi_twist', 10000, NULL, '00180', NULL, 'SIM', 'NAO', 'Refrigerante Twist Garrafa 2L 1 Unidade Pepsi'),
(94, 4, ' Guaraná Antarctica 2,5L', 'Refrigerante brasileiro com sabor único e natural, feito do fruto do guaraná plantado e colhido na Amazônia.', 100.000, 8.56, 100, 100, 100, 'guarana_antarctica.png', 'guarana_antarctica', 842, NULL, '00181', NULL, 'SIM', 'NAO', 'Refrigerante Antarctica Guaraná 2,5L'),
(95, 4, 'Guaraná Antarctica 3L', 'Guaraná Antarctica Regular : Gostinho do Brasil com sabor de quero mais? Vem de Guaraná Antarctica. O refrigerante centenário original do Brasil que é coisa nossa. Lançado em 1921, é a primeira bebida com sabor de guaraná feita com esse fruto que combina com tudo. Bateu aquela sede? Toma um gole que refrexcaaaa!', 100.000, 9.99, 100, 100, 100, 'guarana_antarctica_3.png', 'guarana_antarctica_3', 7421, NULL, '00182', NULL, 'SIM', 'NAO', 'Refrigerante Guaraná ANTARCTICA Garrafa 3L'),
(96, 4, 'Guaraná Antarctica 350ml', 'Antarctica Refrigerante Guarana Zero Lata', 100.000, 2.75, 100, 100, 100, 'guarana_antarctica_zero.png', 'guarana_antarctica_zero', 41, NULL, '00183', NULL, 'SIM', 'NAO', 'Antarctica Refrigerante Guarana Zero Lata 350ml'),
(97, 4, 'Kit 3 Guaraná Antarctica 2L', '<b>Kit 3X Refrigerante Guaraná Antarctica Pet 2 Litros</b><br/>\r\nKit 3 Refrigerante Guaraná Antarctica Pet 2 Litros', 100.000, 22.77, 100, 100, 100, 'guarana_antarctica_3u.png', 'guarana_antarctica_3u', 612, NULL, '00184', NULL, 'SIM', 'NAO', 'Kit 3X Refrigerante Guaraná Antarctica Pet 2 Litros - Antartica'),
(98, 4, 'Guaraná Antarctica 350ml', 'refrigerante guarana lata 350ml', 100.000, 5.50, 100, 100, 100, 'guarana_antarctica_lata.png', 'guarana_antarctica_lata', 31, NULL, '00185', NULL, 'SIM', 'NAO', 'Guaraná Antarctica Lata 350ml'),
(99, 4, 'Kuat Lata 350ml', 'O sabor do guaraná, uma fruta típica da amazônia, faz do Kuat Original um dos refrigerantes mais saborosos do Brasil. Produzido com os melhores ingredientes para manter a qualidade e o sabor característico desse refrigerante. Uma garrafa de Kuat Original geladinha é perfeita para acompanhar qualquer momento!', 100.000, 3.19, 100, 100, 100, 'refri_kuat.png', 'refri_kuat', 63241, NULL, '00186', NULL, 'SIM', 'NAO', 'Refrigerante Kuat Sabor Guaraná LATA 350ML'),
(100, 4, 'Kuat 2L', 'Refrigerante Guaraná Kuat Garrafa 2l', 100.000, 4.38, 100, 100, 100, 'kuat_refri.png', 'kuat_refri', 312, NULL, '00187', NULL, 'SIM', 'NAO', 'Refrigerante Guaraná Kuat Garrafa 2l'),
(101, 4, 'Kuat 600ML', 'Refrigerante Guaraná Kuat Garrafa 600ml', 100.000, 3.69, 100, 100, 100, 'refri_kuat_600.png', 'refri_kuat_600', 42, NULL, '00188', NULL, 'SIM', 'NAO', 'Refrigerante Guaraná Kuat Garrafa 600ml'),
(102, 4, 'Kuat Lata 350ml', 'Guarana kuat lata 350ML', 1000.000, 3.49, 100, 100, 100, 'refri_kuat_fruit_lata.png', 'refri_kuat_fruit_lata', 412, NULL, '00189', NULL, 'SIM', 'NAO', 'Guarana kuat lata 350ML\r\n');
INSERT INTO `as_produtos` (`pro_id`, `pro_categoria`, `pro_nome`, `pro_desc`, `pro_peso`, `pro_valor`, `pro_altura`, `pro_largura`, `pro_comprimento`, `pro_img`, `pro_slug`, `pro_estoque`, `pro_modelo`, `pro_ref`, `pro_fabricante`, `pro_ativo`, `pro_frete_free`, `pro_descricao_extra`) VALUES
(103, 4, 'Kuat Garrafa 250ml', 'Refrigerante Guarana Kuat Garrafa 250ml', 100.000, 1.55, 100, 100, 100, 'refri_kuat_250ml.png', 'refri_kuat_250ml', 6346, NULL, '00190', NULL, 'SIM', 'NAO', 'Refrigerante Guarana Kuat Garrafa 250ml'),
(104, 4, 'Kit 12 Kuat 1L', 'Kit 12 Litros Refrigerante Guaraná Kuat Garrafa\r\n\r\n-o sabor do guaraná, uma fruta típica da amazônia, faz do kuat original um dos refrigerantes mais saborosos do brasil.\r\nProduzido com os melhores ingredientes para manter a qualidade e o sabor característico desse refrigerante.\r\nUm kuat original geladinho é perfeito para acompanhar qualquer momento\r\n\r\nEste produto não contém gorduras trans e nem gorduras saturadas.\r\nTotal de gorduras: 0.\r\nA garrafa pet e descartável e com sua cor em verde, ajuda a degradar menos o meio ambiente.\r\n\r\n-kuat é um refrigerante com sabor guaraná lançado em 1997 pela empresa the coca-cola company.\r\n-kuat é uma palavra tupi-guarani que signica irmão gêmeo da lua, um nome bem apropriado para um refrigerante que contém guaraná produzido na região amazônica.\r\n\r\n-característica do produto:\r\nSabor: tradicional guaraná.\r\nMarca: kuat.\r\nQuantidade litros: 1 litro.', 1000.000, 135.56, 100, 100, 100, 'kit_kuat.png', 'kit_kuat', 42, NULL, '00191', NULL, 'SIM', 'NAO', 'Kit 12 Litros Refrigerante Guaraná Kuat Garrafa'),
(105, 4, 'Kit 6 Kuat 220ml', 'Refrigerante Guaraná  Kuat 6 Unidade - 220ml Cada', 400.000, 14.40, 100, 100, 100, 'kuat_latas.png', 'kuat_latas', 513, NULL, '00192', NULL, 'SIM', 'NAO', 'Refrigerante Guaraná  Kuat 6 Unidade - 220ml Cada'),
(106, 4, 'Fanta Laranja 2L', '<b>Refrigerante Fanta</b><br/>\r\nRefrigerante Fanta geladíssimo!', 600.000, 8.59, 100, 100, 100, 'fanta_laranja.png', 'fanta_laranja', 485, NULL, '00193', NULL, 'SIM', 'NAO', 'Refrigerante Fanta 2L'),
(107, 4, 'Fanta Uva 2L', 'REFRI FANTA UVA PET 2L', 600.000, 8.59, 100, 100, 100, 'fanta_uva.png', 'fanta_uva', 441, NULL, '00194', NULL, 'SIM', 'NAO', 'Refrigerante Uva Fanta Garrafa 2L'),
(108, 4, 'Fanta Mistério Azul 350ml', 'Fanta Mistério Edição Azul Para Halloween 350ml', 500.000, 6.64, 100, 100, 100, 'fanta_azul_misterio.png', 'fanta_azul_misterio', 33, NULL, '00195', NULL, 'SIM', 'NAO', 'Refrigerante Fanta Mistério Edição Azul 350ml'),
(109, 4, 'Fanta Berry Mirtilo 355ml', 'Origem: Estados Unidos <br/><br/>\r\n\r\nAgora você não precisa mais ir até outro país para saborear um refrigerante importado. A incrível Fanta Blueberry possui coloração fluorescente, sendo autêntica, saborosa e fundamental para maior refrescância nos dias mais calorosos.\r\n<br/><br/>\r\nA Fanta Blueberry é produzida por meio da fruta mirtilo, este componente é bastante rico em nutrientes e proporciona diversos benefícios à saúde.\r\n<br/><br/>\r\nNesta edição de Fanta, o refrigerante vem com em sua embalagem única, mas o diferencial é que o líquido é apresentado em cor azul fluorescente. Para quem deseja matar a sede, experimentar esta bebida refrescante e bem gelada é fundamental.\r\n<br/>\r\nNão deixe de experimentar este sabor com toque especial de frutas. Além disso, que tal surpreender a todos com esta bebida que tem cor azul? A Fanta Blueberry, assim como outros refrigerantes, são ideias para os dias mais quentes e até mesmo nos frios. Experimente.\r\n<br/>\r\nA Fanta Blueberry não possui cafeína e sua origem é da Coca Cola Company. Com aspecto brilhante e borbulhante (gás), o produto deve ser consumido bem gelado. Para o público fã de refrigerante, esta bebida é ideal.\r\n<br/><br/>\r\nContem: 1 Unidade Fanta Cherry 355 ml', 500.000, 23.90, 100, 100, 100, 'fanta_berry.png', 'fanta_berry', 45, NULL, '00196', NULL, 'SIM', 'NAO', 'Refrigerante Fanta Berry Mirtilo Importado EUA Exclusivo 350ml'),
(110, 4, 'Fanta Mistério Lata 310ml', 'Refrigerante Fanta Mistério Lata 310ml.\r\n<br/><br/>\r\nFanta Mistério\r\n<br/><br/>\r\nOs consumidores são desafiados a experimentar a bebida e descobrir o sabor enigmático. A Fanta Mistério traz líquido e embalagem pretos e prova que nem tudo é o que parece. Um fantasma está estampado na embalagem, para completar a experiência. A novidade está disponível somente até o Halloween. ', 500.000, 3.49, 100, 100, 100, 'fanta_misterio_black.png', 'fanta_misterio_black', 41, NULL, '00197', NULL, 'SIM', 'NAO', 'Refrigerante Fanta Mistério Lata 310Ml'),
(111, 4, 'Kit 10 Fanta Berry 355ml', '<b>Kit Refrigerante Fanta sabor Berry (Mirtilo). Produto importado diretamente dos Estados Unidos, em uma lata única e exclusiva. Se refresque com um sabor exótico e diferente de tudo que você ja experimentou!</b>\r\n<br><br>\r\nSabor: Berry (Mirtilo)<br/>\r\nPaís de Origem: Estados Unidos<br/>\r\nMarca: Fanta<br/>\r\nPeso: 355ml cada unidade<br/>\r\nKit com: 10 unidades<br/>\r\n<br/><br/> \r\nNÃO CONTÉM GLÚTEN<br/>\r\nContém Aromatizante.', 700.000, 194.29, 100, 100, 100, 'fanta_10_berry.png', 'fanta_10_berry', 50, NULL, '00198', NULL, 'SIM', 'NAO', '10 Refrigerante Fanta Berry 355ml'),
(112, 4, 'Fanta Tutti-frutti 2L', 'Refrigerante Tutti-Frutti Fanta Garrafa 2L', 400.000, 8.59, 100, 100, 100, 'fanta_tutti_fruti.png', 'fanta_tutti_fruti', 38, NULL, '00199', NULL, 'SIM', 'NAO', 'Refrigerante Tutti-Frutti Fanta Garrafa 2L'),
(113, 4, 'Fanta Strawberry 355ml', 'Acaba de desembarcar dos eua a Fanta Morango! Brilhante, borbulhante e instantaneamente refrescante, o refrigerante Fanta é feito com 100% de sabores naturais e é livre de cafeína. Experimente!\r\n<br/><br/>\r\nInformações Adicionais:\r\n<br/><br/>\r\nOrigem: Estados Unidos<br/>\r\nMarca: The Coca-Cola Company<br/>\r\nDescrição: Água carbonatada, xarope de milho rico em frutose, ácido cítrico, sabores naturais, benzoato de sódio (para proteger sabor), Vermelho 40.<br/>\r\n<br/><br/>\r\nManter em local limpo, fresco, seco e sem cheiro. Não Alcóolico.', 600.000, 45.41, 100, 100, 100, 'fanta_strawberry_morango.png', 'fanta_strawberry_morango', 25, NULL, '00200', NULL, 'SIM', 'NAO', 'Refrigerante fanta strawberry morango 3 latas 355ML'),
(114, 4, 'Kit 6 Fanta Uva 350ml', 'O delicioso refrigerante de fruta feito com 5,5% de suco de uva e limão.', 400.000, 14.94, 100, 100, 100, 'fanta_uva_latas.png', 'fanta_uva_latas', 45, NULL, '00201', NULL, 'SIM', 'NAO', 'Refrigerante Fanta Uva Lata Pack com 6 unidades 350ml cada'),
(115, 4, 'Fanta Guaraná 220ml', 'Com sabor irresistível e único, o Refrigerante FANTA Guaraná é sucesso no mercado entre os refrigerantes nacionais e internacionais. Produzido com água gaseificada, açúcar e guaraná é uma excelente opção para matar a sede! Compre Refrigerante FANTA Guaraná Garrafa e experimente esse sabor inconfundível! Compartilhe com amigos e familiares!', 500.000, 1.99, 100, 100, 100, 'fanta_guarana_d.png', 'fanta_guarana_d', 56, NULL, '00202', NULL, 'SIM', 'NAO', 'Refrigerante Fanta Guanará Mini 220ml'),
(116, 4, 'Kit 12 Fanta Guaraná 200ml', 'Refrigerante FANTA Guaraná Garrafa 200ml\r\n<br/><br/>\r\nPack com 12 unidades\r\n<br/>\r\nCom sabor irresistível e único, Fanta Guaraná é o acompanhamento perfeito para sua lanche e seus momentos de diversão, tornando deliciosos aqueles momentos entre amigos, família, ou só você. O único feito com 100% guaraná do Amazonas. É mais sabor, é nível Fanta!', 300.000, 47.00, 100, 100, 100, 'kit_fanta_12_uni.png', 'kit_fanta_12_uni', 40, NULL, '00203', NULL, 'SIM', 'NAO', 'Kit Com 12 Refrigerante Fanta Guaraná 200ml Pack Garrafinha'),
(117, 4, 'Fanta Mistério 600ml', 'Que tal desvendar este mistério? Este novo e intrigante sabor de fanta, já é um sucesso e você não pode ficar de fora. Experimente e descubra! Alérgicos: Não Contém Glúten.', 500.000, 4.59, 100, 100, 100, 'fanta_misterio_600.png', 'fanta_misterio_600', 31, NULL, '00204', NULL, 'SIM', 'NAO', 'Refrigerante Fanta Mistério 600ml'),
(118, 4, 'Fanta Guaraná 2L', '\r\nREFRI FANTA GUARANA PET 2L', 423.000, 6.29, 100, 100, 100, 'fanta_guaranas.png', 'fanta_guaranas', 599, NULL, '00205', NULL, 'SIM', 'NAO', 'Fanta Guaraná Original PET 2L\r\n\r\n'),
(119, 4, 'Kit 3 Fanta Guaraná 2L', '3 Unidades de Fanta Guaraná 2 Litros', 600.000, 32.07, 100, 100, 100, 'fanta_guarana_kit_3.png', 'fanta_guarana_kit_3', 700, NULL, '00206', NULL, 'SIM', 'NAO', 'Kit 3 Refrigerante Fanta Guaraná Pet 2 Litros'),
(120, 4, 'Frutuba Guaraná 2L', 'Refrigerante Guaraná Frutuba 2L: Frutuba chegou para inovar a mesa dos Brasileiros, desenvolvido para fazer parte dos seus dias felizes, sua sofisticação no design, sua mesa irá ficar mais charmosa com as cores vibrantes das embalagens, ideal para degustar no com amigos e familiares, no almoço, café da tarde e jantares.', 500.000, 3.29, 100, 100, 100, 'frutuba.png', 'frutuba', 400, NULL, '00207', NULL, 'SIM', 'NAO', 'Refrigerante Guaraná Frutuba 2L'),
(121, 4, 'Frutuba Laranja 2L', 'Refrigerante Laranja Frutuba 2L: Frutuba chegou para inovar a mesa dos Brasileiros, desenvolvido para fazer parte dos seus dias felizes, sua sofisticação no design, sua mesa irá ficar mais charmosa com as cores vibrantes das embalagens, ideal para degustar no com amigos e familiares, no almoço, café da tarde e jantares.', 500.000, 3.29, 100, 100, 100, 'frutuba_laranja.png', 'frutuba_laranja', 500, NULL, '00208', NULL, 'SIM', 'NAO', 'Refrigerante Laranja Frutuba 2L'),
(122, 4, 'Frutuba Limão 2L', 'Refrigerante Limão Frutuba 2L: Frutuba chegou para inovar a mesa dos Brasileiros, desenvolvido para fazer parte dos seus dias felizes, sua sofisticação no design, sua mesa irá ficar mais charmosa com as cores vibrantes das embalagens, ideal para degustar no com amigos e familiares, no almoço, café da tarde e jantares.', 500.000, 3.29, 100, 100, 100, 'frutuba_limao.png', 'frutuba_limao', 500, NULL, '00209', NULL, 'SIM', 'NAO', 'Refrigerante Limão Frutuba 2L'),
(123, 4, 'Frutuba Tubaína 2L', 'Refrigerante Tuibaína Frutuba 2L: Frutuba chegou para inovar a mesa dos Brasileiros, desenvolvido para fazer parte dos seus dias felizes, sua sofisticação no design, sua mesa irá ficar mais charmosa com as cores vibrantes das embalagens, ideal para degustar no com amigos e familiares, no almoço, café da tarde e jantares.', 500.000, 3.29, 100, 100, 100, 'frutuba_tubaina.png', 'frutuba_tubaina', 400, NULL, '00210', NULL, 'SIM', 'NAO', 'Refrigerante Frutuba Tubaina 2L'),
(124, 4, 'Guaraná Funada', 'REFRIGERANTE GUARANÁ PET 2 LITROS - FUNADA', 400.000, 7.99, 100, 100, 100, 'guarana_funada.png', 'guarana_funada', 400, NULL, '00211', NULL, 'SIM', 'NAO', 'Refrigerante Guaraná 2 Litros - Funada'),
(125, 4, 'Tobi Uva 2L', 'Refrigerante Tobi sabor uva 2 Litros', 400.000, 3.25, 100, 100, 100, 'refri_tobi.png', 'refri_tobi', 300, NULL, '00212', NULL, 'SIM', 'NAO', 'Refrigerante Tobi Uva 2 Litros'),
(126, 9, 'Locação de narguile', '<h3>Valores a combinar</h3>', 400.000, 0.00, 100, 100, 100, 'narguiles.png', 'narguiles', 500, NULL, '00213', NULL, 'SIM', 'NAO', 'Locação de narguile'),
(127, 11, 'Vinho Chileno 750ml', 'Vinho Chileno Reservado Cabernet Sauvignon 750ml', 100.000, 29.90, 100, 100, 100, 'vinho_chileno.png', 'vinho_chileno', 700, NULL, '00214', NULL, 'SIM', 'NAO', 'Vinho Chileno Reservado Cabernet Sauvignon 750ml'),
(128, 11, 'Vinho Del Diablo 750ml', 'Vinho Chileno Casillero Del Diablo Cabernet Sauvignon 750ml', 100.000, 48.99, 100, 100, 100, 'vinho_chileno_casillero.png', 'vinho_chileno_casillero', 900, NULL, '00215', NULL, 'SIM', 'NAO', 'Vinho Chileno Casillero Del Diablo Cabernet Sauvignon 750ml'),
(129, 11, 'Vinho Pergola Tinto 1L', 'Ingredientes\r\n<br/>\r\nFermentado de uvas e conservantes INS 220.\r\n<br/>\r\nAviso legal\r\n<br/>\r\nProibida a venda para menores de 18 anos', 100.000, 34.88, 100, 100, 100, 'vinho_pergola_tinto.png', 'vinho_pergola_tinto', 400, NULL, '00216', NULL, 'SIM', 'NAO', 'Vinho Pergola Tinto Suave Pergola'),
(130, 11, 'Vinho Adega Mayor 750ml', 'O seu clima, o mar e história fazem de Portugal um ponto de encontro de sabores, ponto de partida para descobertas e o ponto de referência para quem gosta de saborear a vida e um bom vinho.\r\nO Vinho Adega Mayor Caiado Branco 2018 possui aspecto límpido e cor citrina. No nariz mostra a irreverência da sua juventude, sugerindo notas de limão e ananás maduro, complementadas por um toque floral e uma agradável sensação de mineralidade. Na boca surpreende pela frescura e harmonia, terminando longo e cheio de garra. Um vinho versátil e cheio de personalidade para os bons momentos da vida.\r\nEspecificações Técnicas\r\nMarca: Adega Mayor\r\nTipo: Branco\r\nLinha: Caiado\r\nOrigem: Alentejo, Portugal\r\nCasta: Antão Vaz, Arinto e Roupeiro\r\nSafra: 2018\r\nCor: Citrina\r\nVolume: 750ml\r\nSobre a Adega Mayor\r\nDiretamente do Alentejo, Portugal, chegam ao Brasil os vinhos da Adega Mayor. Dentro de cada garrafa engarrafamos parte de nós, guardando o respeito pelo que a terra nos oferece. Sempre que abrimos uma garrafa de vinho, abrimos um mundo de possibilidades e sentidos.', 100.000, 49.90, 100, 100, 100, 'vinho_adega_mayor.png', 'vinho_adega_mayor', 300, NULL, '00217', NULL, 'SIM', 'NAO', 'Vinho Adega Mayor Caiado Branco 2018 750ml'),
(131, 11, 'Vinho Adega da Vila 750ml', 'Tejo, Vem Se Tornando Cada Vez Mais Famosa Por Aliar O Avanço Tecnologico Aplicado A Agricultura, Além Da Valorização Das Castas Autóctones, Que Se Demonstra Através Deste Corte. Espere Um Vinho Com Ótimo Corpo E Taninos Marcantes, Além De Aromáticos.', 100.000, 59.30, 100, 100, 100, 'vinho_adega_da_vila.png', 'vinho_adega_da_vila', 500, NULL, '00218', NULL, 'SIM', 'NAO', 'Vinho Português Adega Da Vila Regional Tejo'),
(132, 11, 'Vinho Bordô Seco 750ml', 'Vinho Tinto de Mesa Seco Bordô 750ml Tradição Kit 6\r\n<br/><br/>\r\n\r\nCONTEÚDO DA EMBALAGEM:\r\n6 garrafa de Vinho Tinto de Mesa Seco Bordô 750ml elaborado por Vinhos Tradição  \r\n<br/><br/>\r\nCARACTERÍSTICAS DO VINHO\r\n<br/>\r\nVisual: Cor extremamente violácea, límpida e brilhante<br/>\r\nOlfato: Própria da Uva Bordô, frutado<br/>\r\nPaladar: Encorpado com toque aveludado, equilibrado e harmônico<br/>\r\nHarmonização: Carnes e queijos médios<br/>\r\nGraduação Alcoólica: 10.6% Vol.<br/>\r\nTemperatura de Serviço: 10 °C<br/>\r\nUvas: Bordô<br/>\r\nProdutor: Vinhos Tradição<br/>\r\nOrigem: Caxias do Sul – RS / Serra Gaúcha<br/>\r\n<br/><br/>\r\nA HISTÓRIA DA VINÍCOLA<br/>\r\n<br/>\r\nA coragem de Luis Sirtoli, filho de imigrantes italianos, foi de grande expressão com o plantio e cultivo de videiras, inicialmente vindas da Itália com seus avós. Sua dedicação e perseverança fez brotar nas férteis terras da “Serra Gaúcha” a personalidade e a “TRADIÇÃO” de seus antepassados italianos. Com conhecimento e muito trabalho, Luis Sirtoli, começa produzir uvas de excelente qualidade, que por sua vez, originam vinhos de alto nível, sabor e paladar. Após muito anos, através de seu filho Clelio Sirtoli, o trabalho se renova, seus vinhedos se ampliam e a Vinícola se consolida com sucesso. Através da Vinícola Grutinha, localizada no travessão Santa Rita, em Caxias do Sul descendentes de Clelio Sirtoli continuam a arte da produção de vinhos com dedicação e qualidade destacadas.\r\n<br/>\r\nBebida proibida para menores de 18 anos.\r\n<br/>\r\n', 100.000, 177.92, 100, 100, 100, 'vinho_duplo.png', 'vinho_duplo', 200, NULL, '00219', NULL, 'SIM', 'NAO', 'Vinho Bordô Seco Adega Tradição Da Grutinha Kit 6'),
(133, 11, 'Vinho Tannat Fausto 750ml', 'Vinho Nacional Tannat Fausto 750ml', 100.000, 78.90, 100, 100, 100, 'vinho_fausto.png', 'vinho_fausto', 500, NULL, '00220', NULL, 'SIM', 'NAO', 'Vinho Nacional Tannat Fausto 750ml'),
(134, 11, 'Vinho Chardonnay 750ml', 'Vinho branco meio seco Chardonnay, Pedro Jiménez Reservado Reservado 2019 adega Concha y Toro 750 ml', 100.000, 28.91, 100, 100, 100, 'vinho_branco.png', 'vinho_branco', 400, NULL, '00221', NULL, 'SIM', 'NAO', 'Vinho branco meio seco Chardonnay, Pedro Jiménez Reservado Reservado 2019 adega Concha y Toro 750 ml'),
(135, 11, 'Vinho Tinto Gran 750ml', 'O Vinho Tinto Gran Bodega Malbec/Bonarda, um vinho seco feito com as uvas Malbec e Bonarda pela vinícola Argentina Amadeo Marañon, na região de Mendoza. Gran Bodega é um vinho que apresenta uma cor vermelha, com aromas frutados. Na boca é suave, fresco e fácil de beber. Harmoniza perfeitamente com pratos que acompanham carnes vermelhas e massas.\r\n<br/><br/>\r\nEstilo do vinho: Tinto de corpo médio<br/>\r\nHarmonizações: Carnes vermelhas e Massas<br/>\r\n<br/><br/>\r\n\r\nRegião: Mendoza<br/>\r\nTipo: Tinto Seco<br/>\r\nUva: Malbec e Bonarda<br/>\r\nProdutor: Amadeo Marañon<br/>\r\nVolume: 750 ml<br/>\r\nGraduação Alcoólica: 13,1%<br/>\r\nFechamento: Rolha<br/>', 100.000, 19.48, 100, 100, 100, 'vinho_tinto_gran.png', 'vinho_tinto_gran', 600, NULL, '00222', NULL, 'SIM', 'NAO', 'Vinho Argentino Tinto Gran Bodega Blend Malbec E Bonarda 750ml'),
(136, 11, 'Vinho Cabernet 750ml', 'Vinho Chileno Cabernet Sauvignon Chilano 750ml', 100.000, 21.85, 100, 100, 100, 'chilano.png', 'vinho_chilano', 600, NULL, '00223', NULL, 'SIM', 'NAO', 'Vinho Chileno Cabernet Sauvignon Chilano 750ml'),
(137, 11, 'Vingo The Master 750ml', 'Malbec feito para um bom Grill!\r\n<br/>\r\nBom corpo e boa acidez que vai combinar super com carnes e massas!\r\n<br/><br/>\r\nOrigem: Argentina;<br/>\r\nUva: Malbec;<br/>\r\nTeor Alcoólico: 12,5%<br/>\r\nTipo: Tinto Seco.<br/>\r\n<br/><br/>\r\nHarmonização: Churrasco, Chilli com carne, Espaguete com Almondegas, Massas à Bolonhesa e carnes vermelhas.', 100.000, 22.70, 100, 100, 100, 'master_club.png', 'master_club', 700, NULL, '00224', NULL, 'SIM', 'NAO', 'Vinho Argentino Tinto The Grill Master Malbec 750ml'),
(138, 11, 'Vinho Combo Malbec 750ml', 'Este vinho harmoniza perfeitamente com carne vermelha, massas e queijos. Visualmente apresenta coloração vermelho rubi intenso. Na boca apresenta corpo médio, taninos moderados e acidez equilibrada. No nariz apresenta notas de frutas vermelhas e pimenta preta\r\n<br/><br/>\r\nEstilo do vinho: Tinto de corpo médio<br/>\r\nHarmonizações: Carne vermelha, massas e queijos<br/>\r\n<br/><br/>\r\nRegião: Mendoza<br/>\r\nTipo: Tinto Seco<br/>\r\nUva: 50% Malbec, 50% Shiraz<br/>\r\nProdutor: San Telmo<br/>\r\nEnvelhecimento: Em tanques de aço inox<br/>\r\nVolume: 750 ml<br/>\r\nGraduação Alcoólica: 13.5%\r\n', 100.000, 22.05, 100, 100, 100, 'vinho_combo_malbec.png', 'vinho_combo_malbec', 600, NULL, '00225', NULL, 'SIM', 'NAO', 'Vinho Argentino Combo Malbec Syrah Special Seletion 750ml Amadeo Maranon'),
(139, 11, 'Vinho Malbec Trivento 750ml', 'Vinho branco meio seco White Malbec Trivento Reserve 2019 750 ml', 100.000, 49.90, 100, 100, 100, 'vinho_branco_meio_seco.png', 'vinho_branco_meio_seco', 200, NULL, '00226', NULL, 'SIM', 'NAO', 'Vinho branco meio seco White Malbec Trivento Reserve 2019 750 ml'),
(140, 11, 'Vinho Perez Cruz 750ml', 'Vinho Chileno Tinto Reserva Perez Cruz Cabernet Sauvignon Valle del Maipo Andes Garrafa 750ml', 100.000, 61.90, 100, 100, 100, 'vinho_perez_cruz.png', 'vinho_perez_cruz', 500, NULL, '00227', NULL, 'SIM', 'NAO', 'Vinho Chileno Tinto Reserva Perez Cruz Cabernet Sauvignon Valle del Maipo Andes Garrafa 750ml'),
(141, 11, 'Vinho Tinto Esporão 750ml', 'Vinho Tinto Esporão Pe 2020 Adega 750 Ml', 100.000, 37.79, 100, 100, 100, 'vinho_pe_tinto.png', 'vinho_pe_tinto', 300, NULL, '00228', NULL, 'SIM', 'NAO', 'Vinho Tinto Esporão Pe 2020 Adega 750ml'),
(142, 11, 'Vinho Santa Rita 750ml', 'Vinho representativo da variedade emblemática do Chile. De intensa e profunda cor vermelho-rubi com suaves tons violáceos. Em seu aroma predominam diversas frutas vermelhas e negras como morango, cereja e mirtilo, as quais combinam com delicados toques de baunilha, cassis e especiarias. Em boca mostra grande potência. Porém, por ser suculento e longo, a sedosidade e profundidade de seus taninos o tornam muito amigável para beber. Isso resulta também em grande versatilidade para acompanhar diversos tipos de comidas.\r\n<br/><br/>\r\nEstilo do vinho: Tinto leve de médio corpo.<br/>\r\nHarmonizações: Vinho ideal para acompanhar massas, queijos maduros, carnes vermelhas como cordeiro e coelho. Também pode ser saboreado com sobremesas doces com chocolate e/ou doce de leite.<br/>\r\n<br/>\r\nPaís: Chile<br/>\r\nTipo: Tinto<br/>\r\nUva: Carmenere<br/>\r\nProdutor: Santa Rita<br/>\r\nVolume: 750ml', 100.000, 29.90, 100, 100, 100, 'vinho_santa_rita.png', 'vinho_santa_rita', 700, NULL, '00229', NULL, 'SIM', 'NAO', 'Vinho Chileno Santa Rita 3 Medallas Carmenere 750ml'),
(143, 11, 'Vinho Country Wine 750ml', 'Características<br/>\r\nAromas frescos, típicos das variedades americanas, e sabor encorpado, para ser consumido ainda jovem. Uvas Americanas, seco.<br/>\r\n<br/>\r\nHarmonizações<br/>\r\nMassas com molhos médios, de carne, frango, churrasco e queijos médios.', 100.000, 13.90, 100, 100, 100, 'vinho_country_wine.png', 'vinho_country_wine', 200, NULL, '00230', NULL, 'SIM', 'NAO', 'Vinho Country Wine Tinto Seco 750ml'),
(144, 11, 'Kit 3 Vinho Country 750ml', 'Kit contendo 03 unidades de Vinho Branco Suave Country Wine 750 ml.\r\n<br/><br/>\r\nOlfato<br/>\r\nAromas frescos, típicos das variedades Americanas<br/>\r\n<br/>\r\nPaladar<br/>\r\nPara ser consumido ainda jovem<br/>\r\n\r\nHarmonização<br/>\r\nMassas com molhos médios, frango, peixes e queijos frescos.', 100.000, 47.40, 100, 100, 100, 'vinho_country_wine_01.png', 'vinho_country_wine_01', 100, NULL, '00231', NULL, 'SIM', 'NAO', 'Vinho Country Wine Branco Suave/doce 750ml Kit C/ 3 Und'),
(145, 7, 'Antarctica Lata 350ml', 'A água Tônica Antarctica foi a primeira água tônica do Brasil e até hoje é referência no mercado. Seu amargor é irresistível e sua refrescância combina com todos os momentos. ', 100.000, 3.69, 100, 100, 100, 'tonica_antarctica.png', 'tonica_antarctica', 500, NULL, '00232', NULL, 'SIM', 'NAO', 'Água Tônica ANTARCTICA Lata 350ml'),
(146, 7, 'Anarctica 3 Limões 269ml', 'Água Tônica Antarctica Sem Açúcar 3 Limões Lata 269ml', 100.000, 2.49, 100, 100, 100, 'antarctica_limoes.png', 'antarctica_limoes', 600, NULL, '00233', NULL, 'SIM', 'NAO', 'Água Tônica Antarctica Sem Açúcar 3 Limões Lata 269ml'),
(147, 7, 'FYs Zero Lata 350ml', 'FYs Tônica Zero com toque de limão siciliano 350ml é a Tônica do Grupo Heineken. Com todo o sabor com zero açúcar e calorias, é a combinação ideal para o seu drink com Gin e outros destilados.', 100.000, 2.45, 100, 100, 100, 'fys_agua.png', 'fys_agua', 40, NULL, '00234', NULL, 'SIM', 'NAO', 'Água Tônica com toque de Limão Siciliano FYs Zero Lata 350ml'),
(148, 7, 'Antárctica Lata 269ml', 'A água Tônica Antarctica foi a primeira água tônica do Brasil e até hoje é referência no mercado. Seu amargor é irresistível e sua refrescância combina com todos os momentos. ', 100.000, 2.55, 100, 100, 100, 'agua_tonica_antarctica.png', 'agua_tonica_antarctica', 500, NULL, '00235', NULL, 'SIM', 'NAO', 'Água Tônica Antárctica Lata 269ml\r\n\r\n\r\n'),
(149, 7, 'Dillar´S Classic  1,5L', 'Gelada, refrescante, uma delicia leve.', 100.000, 7.40, 100, 100, 100, 'class_tonica_diet.png', 'class_tonica_diet', 700, NULL, '00236', NULL, 'SIM', 'NAO', 'Dillar´S Classic Agua Tonica Diet'),
(150, 7, 'Schweppes Tônica 350ml', 'TONICA SCHWEPPES 350ML <br/> Schweppes é uma linha premium de bebidas, desenvolvida na inglaterra em 1783 por jacob schweppe, um cientista amador que descobriu um método de produzir água carbonatada em escala comercial.', 100.000, 3.89, 100, 100, 100, 'schweppes.png', 'schweppes', 400, NULL, '00237', NULL, 'SIM', 'NAO', 'Schweppes Tônica 350ml'),
(151, 7, 'Mineiro Zero 269ml', '<br/><b>Água Tónica de Quinino Mineiro Zero Açúcar Lata de 269ml</b><br/>\r\nContém:<br/>\r\n01 Lata de Água Tônica Zero Açúcar<br/>\r\n269ml<br/>\r\n\r\nÁgua tónica ou tônica é um refrigerante que originalmente continha apenas soda, açúcar e quinina. A água tônica é feita com um pó branco extraído da casca da árvore de cinchona que dá o gosto amargo ao produto.\r\n<br/><br/>\r\nElaborada a partir de água gaseificada e extrato vegetal de quinino. O quinino é extraído da casca de uma planta denominada chichona ou quina, conhecida por suas qualidades medicinais, como auxiliar no processo digestivo. Sabor natural e leve.', 100.000, 3.70, 100, 100, 100, 'agua_tonica_mineiro_zero.png', 'agua_tonica_mineiro_zero', 600, NULL, '00238', NULL, 'SIM', 'NAO', 'Água Tónica de Quinino Mineiro Zero Açúcar Lata de 269ml'),
(152, 7, 'Riverside Sicilian 269ml', '<br/>É a tradicional água tônica da Riverside com a adição de aroma natural de limão siciliano. Elaborada somente com ingredientes naturais, sem a adição de conservantes ou adoçantes sintéticos. A agradável e leve acidez do limão sicliano dá um toque cítrico e refrescante a bebida. packing: Lata', 100.000, 7.49, 100, 100, 100, 'riverside_agua_tonica.png', 'riverside_agua_tonica', 700, NULL, '00239', NULL, 'SIM', 'NAO', 'Riverside Tônica Sicilian Tonic Water'),
(153, 7, 'Antárctica rctica Garrafa 1L', '<br/> Água Tônica Antarctiva Garrafa 1L', 100.000, 6.99, 100, 100, 100, 'agua_tonica_antarctica_1l.png', 'agua_tonica_antarctica_1l', 100, NULL, '00240', NULL, 'SIM', 'NAO', 'Água Tônica Antarctica Garrafa 1L'),
(154, 7, 'Kit 6 Água Tônica 270ml', '6x Água Tônica ST PIERRE Tradicional 270ml<br/>\r\nDurante dois anos de estudos e pesquisas, e inspirados na qualidade das melhores tônicas fabricadas na Europa, chegamos ao equilíbrio perfeito entre os ingredientes somados a alta qualidade de extrato natural de quinino foi criado uma bebida com sabor e aroma incomparável a qualquer no mercado nacional. Quando comparada às outras marcas duas características marcantes distinguem St. Pierre das demais: seu sabor único, mantém-se fiel à essência de tônica, ou seja, é neutro.\r\n<br/><br/>\r\n<b>CARACTERÍSTICAS</b>\r\nPaís Brasil<br/>\r\nVolume 200 ml<br/>\r\nTipo de Produto Água Tônica / Mixer<br/>\r\nGraduação Alcoólica 0%', 100.000, 29.90, 100, 100, 100, 'st_pierre_270.png', 'st_pierre_270', 199, NULL, '00241', NULL, 'SIM', 'NAO', '6x Água Tônica ST PIERRE Tradicional 270ml'),
(155, 7, 'Kit 12 Fys 350ml', 'Fys Tônica Lata 350ml É Produzida A Partir De Água Gaseificada E Extrato Vegetal De Quinino. O Pó De Quinino É Uma Substância Natural Que Interfere Positivamente No Organismo E Na Saúde. O Gosto Levemente Amargo É Um Dos Atrativos Da Água Tônica. Com Todo O Sabor Com 45* Menos Açúcar, É A Combinação Ideal Para O Seu Drink Com Gin E Outros Destilados. Ingredientes: Água Carbonatada, Açúcar, Quinino, Aromatizante, Acidulantes: Ácido Tartárico E Ácido Cítrico, Conservador Benzoato De Sódio E Edulcorantes: Sucralose (1mg) E Ciclamento De Sódio (9mg) Por 100ml. Sugestão De Consumo: Água Tônica Com Limão Fys Lata 350ml Pack - 12 Unidades Características Gerais: Apenas 66 Calorias Por Porção 30 Menos Calorias Do Que A Média Do Mercado País De Origem: Brasil Nome Original: Fys Tônica Tipo De Embalagem: Lata Volume (ml): 350 Observações: Comparado A Média De Mercado.', 100.000, 28.90, 100, 100, 100, 'fys_kit.png', 'fys_kit', 540, NULL, '00242', NULL, 'SIM', 'NAO', 'Água Tônica Com Limão Lata 350ml Pack 12 Unidades Fys'),
(156, 7, 'Tônica Mineiro 269ml', '<b>Mineiro Lata de Agua Tonica de Quinino 269ml</b>\r\n<br/>\r\nContém:<br/>\r\n01 Lata de Água Tônica 269ml\r\n<br/><br/>\r\nÁgua tónica ou tônica é um refrigerante que originalmente continha apenas soda, açúcar e quinina. A água tônica é feita com um pó branco extraído da casca da árvore de cinchona que dá o gosto amargo ao produto.\r\n<br/>\r\nElaborada a partir de água gaseificada e extrato vegetal de quinino. O quinino é extraído da casca de uma planta denominada chichona ou quina, conhecida por suas qualidades medicinais, como auxiliar no processo digestivo. Sabor natural e leve.', 100.000, 3.70, 100, 100, 100, 'mineiro_lata_tonica.png', 'mineiro_lata_tonica', 600, NULL, '00243', NULL, 'SIM', 'NAO', 'Mineiro Lata de Agua Tonica de Quinino 269ml'),
(157, 7, 'Dillar´S Classic 1,5L', 'Sabor refrescante que você vai adorar. packing: Garrafa', 100.000, 6.29, 100, 100, 100, 'citrus_dillar.png', 'citrus_dillar', 700, NULL, '00244', NULL, 'SIM', 'NAO', 'Dillar´S Classic Agua Tonica Citrus 1,5L'),
(158, 7, 'St. Pierre 270ml', 'Resultado de mais de 2 anos de pesquisa, a tônica St. Pierre traz um ótimo equilibrio entre os ingredientes utilizados e a alta quantidade de extrato de quinino, proporcionando uma experiência única ao seu drink.', 100.000, 4.60, 100, 100, 100, 'st_pierre_sem_acuca_270ml.png', 'st_pierre_sem_acuca_270ml', 100, NULL, '00245', NULL, 'SIM', 'NAO', 'Água tônica St. Pierre sem açucar 270ml'),
(159, 7, 'Schweppes 0 Açúcar 220ml', 'É perfeita para todos os momentos! Com sabor único e irresistível é ideal para quem precisa uma tônica de alta qualidade.', 100.000, 1.35, 100, 100, 100, 'shweppes_sem_acucar.png', 'shweppes_sem_acucar', 100, NULL, '00246', NULL, 'SIM', 'NAO', 'Schweppes Água Tônica Sem Açúcar 220ml'),
(160, 7, 'Antarctica 0 Açúcar 1L', 'A água Tônica Antarctica Zero com a mesma autenticidade da Tônica Antarctica Tradicional com a vantagem de ser zero calorias, combinando com uma rotina mais leve, refrescante e saborosa.', 100.000, 6.99, 100, 100, 100, 'tonico_zero_acuca.png', 'tonico_zero_acuca', 100, NULL, '00247', NULL, 'SIM', 'NAO', 'Água Tônica Antarctica Zero Açúcar Garrafa 1L'),
(161, 7, 'Kit 12 Antárctica 350ml', '<br/> A Água Tônica Que Todo Mundo Já Conhece, Agora Em Lata De 350ml! Elaborada A Partir De Água Gaseificada E Extrato Vegetal De Quinino. O Quinino É Extraído Da Casca De Uma Planta Denominada Chichona Ou Quina, Conhecida Por Suas Qualidades Medicinais, Como Auxiliar No Processo Digestivo. Com Sabor Natural E Leve, A Tônica Antarctica É Líder Absoluta Em Seu Segmento. Ingredientes: Água Gaseificada, Açúcar, Quinino, Aromatizante, Acidulantes: Ácido Cítrico E Ácido Tartárico E Conservadores: Benzoato De Sódio E Sorbato De Potássio. Características: País De Origem: Brasil Tipo De Embalagem: Lata Volume (ml): 350ml Conteúdo Da Embalagem: 12 Unidades De Água Tônica Antarctica Lata 350ml\r\n', 100.000, 28.90, 100, 100, 100, 'kit_12_antarctica.png', 'kit_12_antarctica', 100, NULL, '00248', NULL, 'SIM', 'NAO', 'Água Tônica Lata 350ml 12 Unidades Antarctica'),
(162, 7, 'WEWI 255ml', 'ORG AGUA TONICA WEWI 255 ML\r\n\r\n', 100.000, 5.99, 100, 100, 100, 'agua_tonica_organico.png', 'agua_tonica_organico', 100, NULL, '00249', NULL, 'SIM', 'NAO', 'Água Tônica Orgânico WEWI Garrafa 255ml'),
(163, 7, 'Kit 6 Tônica Mineiro 269ml', '<br/>\r\n\r\nContém:<br/>\r\n06 Lata de Água Tônica 269ml\r\n<br/>\r\n\r\nÁgua tónica ou tônica é um refrigerante que inicialmente continha apenas soda, açúcar e quinina. A água tônica é feita com um pó branco extraído da casca da árvore de cinchona que dá o gosto amargo ao produto.\r\n<br/>\r\nElaborada a partir de água gaseificada e extrato vegetal de quinino. O quinino é extraído da casca de uma planta denominada chichona ou quina, conhecida por suas qualidades medicinais, como auxiliar no processo digestivo. Sabor natural e leve.', 100.000, 28.00, 100, 100, 100, 'kit_6_tonica_mineiro.png', 'kit_6_tonica_mineiro', 100, NULL, '00250', NULL, 'SIM', 'NAO', 'Fardo Com 6 Latas De Água Tônica De Quinino Mineiro 269ml'),
(164, 7, 'Kit 12 Bellfrut 450', '<br/>\r\nA Água Tônica Bellfrut é leve, deliciosa e refrescante! Experimente mais esse sucesso de vendas da Bellpar com o maior custo benefício do mercado e surpreenda seu paladar!\r\n<br/><br/>\r\nO PRODUTO É RETIRADO DIRETAMENTE DA FÁBRICA NO DIA DO ENVIO, EVITANDO ASSIM VALIDADE BAIXA.\r\n<br/><br/>\r\nFabricada pela empresa Bellpar que foi fundada em 1990, na cidade de Conchas/SP, traz em sua essência o know - how adquirido ao longo de décadas de aperfeiçoamento e atualizações na fabricação e distribuição de refrigerantes: sempre norteando-se pela alta performance de seus produtos, cujo controle de qualidade evidencia-se desde a seleção da matéria-prima até o transporte do produto final, mantendo sua integridade até a gôndola do varejo.\r\n<br/><br/>\r\nA Agua Tonica Bellfrut pode ser ingerida acompanhada com frutas, sucos, refrigerantes, bebidas alcoólicas, como vodca e Gin. Quando fizer o Gin tonica vc pode colocar alguns ingredientes e frutas para potencializar seu sabor.\r\n<br/><br/>\r\nQue tal algumas receitas deliciosas e refrescantes para seu final de semana?\r\n<br/><br/>\r\nMimosa Tônica:<br/>\r\n- 200 ml de suco de laranja;<br/>\r\n- 75 ml de Bellpar Tônica<br/>\r\n- 50 ml de espumante<br/>\r\n- uma fatia de laranja<br/><br/>\r\n\r\n\r\nSoda Italiana, nessa deliciosa combinação:<br/>\r\n- 20 folhas de hortelã;<br/>\r\n- 40 ml de limão siciliano;<br/>\r\n- 2 colheres de açúcar;<br/>\r\n- pedras de gelo;<br/>\r\n- Tônica Bellfrut!<br/><br/>\r\n\r\n\r\nTônica com Gin e Hortelã<br/>\r\n- 10 folhas de hortelã;<br/>\r\n- 50mL de gin;<br/>\r\n- 25mL de suco de limão;<br/>\r\n- 15mL de suco de maracujá adoçado;<br/>\r\n- 30mL de água tônica Bellfrut<br/><br/>\r\n\r\n\r\nProntinho, agora só se deliciar!', 100.000, 39.90, 100, 100, 100, 'kit_12_Bellfrut.png', 'kit_12_Bellfrut', 100, NULL, '00251', NULL, 'SIM', 'NAO', 'Água Tônica Bellfrut 450ml Kit Com 12 Aguas Tonicas'),
(165, 7, 'Kit 6 St Pierre Mint 270ml', '<br/>6x Agua Tônica St Pierre Red Mint Lata 270ml<br/><br/>\r\nA Água Tônica St. Pierre Red Mint é o mais novo lançamento da marca. Uma bebida 100% original da St Pierre que proporciona uma experiência diferente dos padrões de mercado, trazendo componentes de olfato e paladar de frutas vermelhas com melancia e um toque refrescante de hortelã\r\n<br/>\r\nAs embalagem de 270ml (lata) da linha St. Pierre também têm a medida certa, evitando desperdícios e oferecendo o que há de melhor em sabor.\r\n<br/>\r\nEntenda por que fará uma grande diferença na hora de criar uma bebida.', 100.000, 35.35, 100, 100, 100, 'st_pierre_Red_mint.png', 'st_pierre_Red_mint', 100, NULL, '00252', NULL, 'SIM', 'NAO', '6x Agua Tônica St Pierre Red Mint Lata 270ml'),
(166, 7, 'Kit 12 Antárctica 0 350ml', 'Água Tônica Antarctica - Sem Açucares 350ml - Fardo c/ 12 unidades - 1 fardo', 100.000, 46.80, 100, 100, 100, 'antarctica_0_acucar_12.png', 'antarctica_0_acucar_12', 100, NULL, '00253', NULL, 'SIM', 'NAO', 'Água Tônica Antarctica - Sem Açucares 350ml - Fardo c/ 12 unidades'),
(167, 7, 'Kit 6 ST PIERRE 200ml', '<br/>\r\nDurante dois anos de estudos e pesquisas, com inspiração nas águas tônicas da Europa e de outros lugares do mundo, eles conseguiram um resultado perfeito. Uma bebida com sabor e aroma incomparável a qualquer outra.<br/>\r\nIngredientes: Água gaseificada, açúcar, extrato vegetal aromático e quinino, acidulante ácido cítrico, conservador benzoato de sódio, antioxidante ácido ascórbico, seuqestrante EDTA cálcio dissódico.<br/> Não contém glúten. \r\n <br/><br/>\r\nCARACTERÍSTICAS<br/>\r\nPaís Brasil<br/>\r\nVolume 200 ml<br/>\r\nTipo de Produto Água Tônica / Mixer<br/>\r\nGraduação Alcoólica 0%', 100.000, 29.90, 100, 100, 100, 'st_pierre_6.png', 'st_pierre_6', 100, NULL, '00254', NULL, 'SIM', 'NAO', '6x Água Tônica ST PIERRE Tradicional 200ml'),
(168, 7, 'Antárctica Diet 350ml', 'Água Tônica Antárctica Diet Lata 350ml', 100.000, 3.19, 100, 100, 100, 'antarctica_diet.png', 'antarctica_diet', 100, NULL, '00255', NULL, 'SIM', 'NAO', 'Água Tônica Antárctica Diet Lata 350ml'),
(169, 7, 'Kit 12 WEWI Rose 255ml', 'Wewi! Um refri livre de conservantes, sódio e qualquer ingrediente artificial, orgânico e 100% natural.\r\n<br/>\r\nKit com 12 unidades Rose em garrafa de 255 ml cada', 100.000, 149.80, 100, 100, 100, 'wew_rose.png', 'wew_rose', 100, NULL, '00256', NULL, 'SIM', 'NAO', 'Água Tônica Orgânica Wewi Rose 12 Un 255 Ml'),
(170, 7, 'Kit 12 Dillar´s 350ml', '<br/>ÁGUA TÔNICA NORMAL - CLASSIC DILLAR\'S 350ML\r\n<br/><br/>\r\nDESCRIÇÃO: A TRADICIONAL LINHA DE TÔNICAS CLASSIC DILLAR\'S É A MAIS COMPLETA DA CATEGORIA . MANTENDO A FÓRMULA ORIGINAL E CONCENTRAÇÃO DE QUININO (CINCHONA PUBESCENS) EXTRAÍDO DA RAIZ DE UMA ÁRVORE AMAZÔNICA COM PROPRIEDADES MEDICINAIS.<br/>\r\nADSTRINGENTE, ANTITÉRMICA, CICATRIZANTE, VULNERÁRIA, FEBRÍFUGA, ANTIMALÁRICA, DIGESTIVA E O MELHOR, EXTREMAMENTE REFRESCANTE.\r\n', 100.000, 31.20, 100, 100, 100, 'kit_12_dillar.png', 'kit_12_dillar', 100, NULL, '00257', NULL, 'SIM', 'NAO', 'Kit Água Tônica Classic Dillar\'s 350ml (12 Un)'),
(171, 7, 'Schweppes 1,5L', 'Água Tônica Schweppes Tônica 1,5L', 100.000, 25.00, 100, 100, 100, 'schweppes_tonica_1_5L.png', 'schweppes_tonica_1_5L', 100, NULL, '00258', NULL, 'SIM', 'NAO', 'Água Tônica Schweppes Tônica 1,5l'),
(172, 3, 'Kit 6 Everlast 473ml', '<b>6 Energético Everlast 473ml</b><br/>\r\nBebida Energética zero sódio e com excelente sabor.', 100.000, 32.94, 100, 100, 100, 'energetico_everlast.png', 'energetico_everlast', 100, NULL, '00259', NULL, 'SIM', 'NAO', 'Kit 6 Energético Everlast 473ml\r\n'),
(173, 3, 'Kit 12 Ziggy 269ml', 'Fardo com 12 latas de energético Ziggy Session <br/>\r\nPrepare-se para a Energia!', 100.000, 108.48, 100, 100, 100, 'ziggy_269.png', 'ziggy_269', 10, NULL, '00260', NULL, 'SIM', 'NAO', 'Fardo 12 Ziggy Bebida Energético Drink Session Energy 269ml'),
(174, 3, 'Monster 473ml', 'Energético Monster 473ml', 100.000, 7.49, 100, 100, 100, 'monster_473_ml.png', 'monster_473_ml', 100, NULL, '00261', NULL, 'SIM', 'NAO', 'Energético Monster Lata 473ml'),
(175, 3, 'Vibe 2L', 'Energético Vibe Garrafa 2 Litros', 100.000, 12.90, 100, 100, 100, 'energetico_vibe.png', 'energetico_vibe', 100, NULL, '00262', NULL, 'SIM', 'NAO', 'Energético Vibe Garrafa 2l'),
(176, 3, 'Tsunami 2L', 'Energético Tsunami Garrafa 2 Litros', 100.000, 7.65, 100, 100, 100, 'energetico_tsunami.png', 'energetico_tsunami', 100, NULL, '00263', NULL, 'SIM', 'NAO', 'Energético Tsunami Garrafa 2l'),
(177, 3, 'Red Nose 2L', 'Bebida Energética Pronta Para Consumo Red Nose 2 Litros', 100.000, 8.79, 100, 100, 1000, 'red_rose_2l.png', 'red_rose_2l', 100, NULL, '00264', NULL, 'SIM', 'NAO', 'Bebida Energética Pronta Para Consumo Red Nose 2 Litros'),
(178, 3, 'Monster Khaos 473ml', 'Energético Juice Monster Khaos Lata 473ml', 100.000, 9.35, 100, 100, 1000, 'energetico_monster_khaos.png', 'energetico_monster_khaos', 100, NULL, '00265', NULL, 'SIM', 'NAO', 'Energético Juice Monster Khaos Lata 473ml'),
(179, 3, 'Juice Monster 473ml', 'Energético Juice Monster Mango Loco Lata 473ml', 100.000, 9.16, 100, 100, 100, 'juice_monster_473ml.png', 'juice_monster_473ml', 100, NULL, '00266', NULL, 'SIM', 'NAO', 'Energético Juice Monster Mango Loco Lata 473ml'),
(180, 3, 'Monster Ultra 473ml', 'Energético Monster Ultra Lata 473ml', 100.000, 8.99, 100, 100, 100, 'monster_ultra.png', 'monster_ultra', 100, NULL, '00267', NULL, 'SIM', 'NAO', 'Energético Monster Ultra Lata 473ml'),
(181, 3, 'Moster Ultra Violet 437ml', 'Energético Ultra Violet Zero Açúcar Monster Lata 473ml', 100.000, 9.35, 100, 100, 100, 'monster_violet.png', 'monster_violet', 100, NULL, '00268', NULL, 'SIM', 'NAO', 'Energético Ultra Violet Zero Açúcar Monster Lata 473ml'),
(182, 13, 'Alambique 750 mL', 'Cachaça de Alambique HB Premium 750 mL Carvalho<br/>\r\nCachaça deAlambique HB Premium 750 mL – Carvalho<br/>\r\n\r\nTambém conhecida como Pinga ou Caninha, a cachaça sempre foiconsiderada uma bebida popular, mas hoje é conhecida pelo consumo cada vez maissofisticado, com sabores únicos e deliciosos. Obtida através da fermentação edestilação do caldo de cana, a cachaça é o ingrediente essencial para vocêdesfrutar de momentos mais prazerosos.\r\n\r\nAroma, Cor e Sabor<br/>\r\n\r\nSeus diferentes sabores e aromas deve-se a forma de seuarmazenamento, o tempo de envelhecimento e o resultado final dependem damadeira escolhida para armazená-la. Podendo ser armazenada em barris de Amendoim,Jequitibá ou Carvalho, materiais que vão deixar a cachaça com sabor e coloraçãodiferenciados. Deixando a cachaça mais suave e adocicada, com um aromaincrível.<br/>\r\n\r\nDrinks<br/>\r\n\r\nQuem resiste a famosa Caipirinha de Limão? Ninguém, não émesmo. Mas não para por aí, a versatilidade da cachaça trás consigo inúmerasopões de bebidas saborosas, podendo ir de coquetéis até às mais variadascaipiras. Leve essa combinação maravilhosa para sua casa e impressione suafamília e amigos!<br/>\r\n\r\nEspecificações Técnicas<br/>\r\n\r\n-Linha: HB Premium<br/>\r\n\r\nSabor:Carvalho<br/>\r\n\r\nGraduaçãoAlcoólica: 39 %<br/>\r\n\r\n-Volume: 750 mL<br/>\r\n\r\n-Envelhecido: Sim<br/>\r\n\r\n-Armazenada 1 ano<br/>\r\n\r\n-Filtrada 3 vezes<br/>\r\n\r\n-Marca: Heats Brazil<br/>\r\n\r\nOBS: Proibida a venda de bebidas alcoólicas paramenores de 18 anos.\r\n', 100.000, 41.99, 100, 100, 100, 'cachaca_1.png', 'cachaca', 100, NULL, '00269', NULL, 'SIM', 'NAO', 'Cachaça de Alambique HB Premium 750 mL Carvalho - Heats Brazil'),
(183, 14, 'Ypióca Limão 960ml', 'Caipirinha Ypióca Limão 960ml', 100.000, 24.04, 100, 100, 100, 'ypioca.png', 'ypioca', 100, NULL, '00270', NULL, 'SIM', 'NAO', 'Caipirinha Ypióca Limão 960ml');

-- --------------------------------------------------------

--
-- Estrutura da tabela `as_user`
--

CREATE TABLE `as_user` (
  `user_id` int(11) NOT NULL,
  `user_nome` varchar(30) DEFAULT NULL,
  `user_email` varchar(60) DEFAULT NULL,
  `user_pw` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `as_categorias`
--
ALTER TABLE `as_categorias`
  ADD PRIMARY KEY (`cate_id`);

--
-- Índices para tabela `as_clientes`
--
ALTER TABLE `as_clientes`
  ADD PRIMARY KEY (`cli_id`);

--
-- Índices para tabela `as_estados`
--
ALTER TABLE `as_estados`
  ADD PRIMARY KEY (`estado_id`);

--
-- Índices para tabela `as_imagens`
--
ALTER TABLE `as_imagens`
  ADD PRIMARY KEY (`img_id`);

--
-- Índices para tabela `as_pedidos`
--
ALTER TABLE `as_pedidos`
  ADD PRIMARY KEY (`ped_id`);

--
-- Índices para tabela `as_pedidos_itens`
--
ALTER TABLE `as_pedidos_itens`
  ADD PRIMARY KEY (`item_id`);

--
-- Índices para tabela `as_produtos`
--
ALTER TABLE `as_produtos`
  ADD PRIMARY KEY (`pro_id`);

--
-- Índices para tabela `as_user`
--
ALTER TABLE `as_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `as_categorias`
--
ALTER TABLE `as_categorias`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4214244;

--
-- AUTO_INCREMENT de tabela `as_clientes`
--
ALTER TABLE `as_clientes`
  MODIFY `cli_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `as_estados`
--
ALTER TABLE `as_estados`
  MODIFY `estado_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `as_imagens`
--
ALTER TABLE `as_imagens`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3321323;

--
-- AUTO_INCREMENT de tabela `as_pedidos`
--
ALTER TABLE `as_pedidos`
  MODIFY `ped_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `as_pedidos_itens`
--
ALTER TABLE `as_pedidos_itens`
  MODIFY `item_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `as_produtos`
--
ALTER TABLE `as_produtos`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT de tabela `as_user`
--
ALTER TABLE `as_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
