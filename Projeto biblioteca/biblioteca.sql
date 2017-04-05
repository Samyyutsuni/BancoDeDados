-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26-Mar-2017 às 00:54
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `idaluno` int(11) NOT NULL,
  `RGA` int(11) DEFAULT NULL,
  `user_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`idaluno`, `RGA`, `user_user_id`) VALUES
(1, 2147483647, 1),
(2, 2147483647, 2),
(3, 2147483647, 3),
(4, 2147483647, 4),
(5, 2147483647, 5),
(6, 2147483647, 6),
(7, 2147483647, 7),
(8, 2147483647, 8),
(9, 2147483647, 9),
(10, 2147483647, 10),
(11, 2147483647, 11),
(12, 2147483647, 12),
(13, 2147483647, 13),
(14, 2147483647, 14),
(15, 2147483647, 15),
(16, 2147483647, 16),
(17, 2147483647, 17),
(18, 2147483647, 18),
(19, 2147483647, 19),
(20, 2147483647, 20),
(21, 2147483647, 21),
(22, 2147483647, 22),
(23, 2147483647, 23),
(24, 2147483647, 24),
(25, 2147483647, 25),
(26, 2147483647, 26),
(27, 2147483647, 27),
(28, 2147483647, 28),
(29, 2147483647, 29),
(30, 2147483647, 30),
(31, 2147483647, 31),
(32, 2147483647, 32),
(33, 2147483647, 33),
(34, 2147483647, 34),
(35, 2147483647, 35),
(36, 2147483647, 36),
(37, 2147483647, 37),
(38, 2147483647, 38),
(39, 2147483647, 39),
(40, 2147483647, 40),
(41, 2147483647, 41),
(42, 2147483647, 42),
(43, 2147483647, 43),
(44, 2147483647, 44),
(45, 2147483647, 45),
(46, 2147483647, 46),
(47, 2147483647, 47),
(48, 2147483647, 48),
(49, 2147483647, 49),
(50, 2147483647, 50);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_has_curso`
--

CREATE TABLE `aluno_has_curso` (
  `aluno_idaluno` int(11) NOT NULL,
  `curso_curso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno_has_curso`
--

INSERT INTO `aluno_has_curso` (`aluno_idaluno`, `curso_curso_id`) VALUES
(2, 2),
(3, 2),
(4, 3),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 3),
(9, 2),
(10, 2),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 3),
(14, 1),
(16, 2),
(16, 3),
(17, 2),
(19, 3),
(20, 1),
(21, 3),
(22, 1),
(24, 2),
(27, 1),
(27, 3),
(29, 2),
(30, 1),
(31, 2),
(33, 2),
(33, 3),
(35, 2),
(37, 1),
(39, 3),
(41, 3),
(43, 1),
(45, 3),
(46, 1),
(47, 2),
(48, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `autor_id` int(11) NOT NULL,
  `autor_nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`autor_id`, `autor_nome`) VALUES
(1, 'Ruby Myers'),
(2, 'Norma Austin'),
(3, 'Rebecca Morgan'),
(4, 'Margaret West'),
(5, 'Bruce Nelson'),
(6, 'Linda Mitchell'),
(7, 'Heather Johnson'),
(8, 'Carolyn Washington'),
(9, 'John Knight'),
(10, 'Rachel Mcdonald'),
(11, 'Juan Allen'),
(12, 'Bonnie Burns'),
(13, 'Irene Phillips'),
(14, 'Christopher Reynolds'),
(15, 'Randy Carpenter'),
(16, 'Frances Dunn'),
(17, 'Peter Knight'),
(18, 'Evelyn Carter'),
(19, 'Christine Black'),
(20, 'Karen Fields'),
(21, 'Eric Kim'),
(22, 'Beverly Mccoy'),
(23, 'Roger Lawson'),
(24, 'Nancy Webb'),
(25, 'Janice Mason'),
(26, 'Brian Gutierrez'),
(27, 'Margaret Cox'),
(28, 'Sarah Kelly'),
(29, 'Gerald Reyes'),
(30, 'Howard Rice'),
(31, 'Albert Clark'),
(32, 'Wanda Schmidt'),
(33, 'Christina Perkins'),
(34, 'Timothy Long'),
(35, 'Carolyn Torres'),
(36, 'Laura Griffin'),
(37, 'Henry Vasquez'),
(38, 'Johnny Riley'),
(39, 'Judy Reynolds'),
(40, 'Julie Fisher'),
(41, 'Sandra Arnold'),
(42, 'Beverly Hawkins'),
(43, 'Frank Nelson'),
(44, 'Deborah Mcdonald'),
(45, 'Ralph Lewis'),
(46, 'Paul Burns'),
(47, 'Julie Hunter'),
(48, 'Paula Stewart'),
(49, 'Kathryn Hanson'),
(50, 'Dennis Murphy'),
(51, 'Janet Baker'),
(52, 'Jesse Greene'),
(53, 'John Clark'),
(54, 'Bruce Moore'),
(55, 'Wayne Schmidt'),
(56, 'Timothy Olson'),
(57, 'Scott King'),
(58, 'Harry Clark'),
(59, 'Andrea Simpson'),
(60, 'Stephen Reed'),
(61, 'Wayne Adams'),
(62, 'Scott Bryant'),
(63, 'Kenneth Perry'),
(64, 'George Foster'),
(65, 'Phillip Mills'),
(66, 'Sara Adams'),
(67, 'Henry Ross'),
(68, 'Jacqueline Ramirez'),
(69, 'Frank Sullivan'),
(70, 'Joseph Webb'),
(71, 'Ralph Nichols'),
(72, 'Martha Jackson'),
(73, 'Heather Bennett'),
(74, 'Donna Morris'),
(75, 'Paul Davis'),
(76, 'Kelly Patterson'),
(77, 'Tina Gordon'),
(78, 'Michelle Watson'),
(79, 'Joan Webb'),
(80, 'Victor Porter'),
(81, 'Nancy Medina'),
(82, 'Doris Mills'),
(83, 'Rose Burke'),
(84, 'Jack Walker'),
(85, 'Tina Dixon'),
(86, 'Adam Johnston'),
(87, 'Susan Andrews'),
(88, 'Jason West'),
(89, 'Tammy Perkins'),
(90, 'Gary Morris'),
(91, 'Eric Ryan'),
(92, 'Paul Rogers'),
(93, 'Sean Riley'),
(94, 'Harry Fox'),
(95, 'Sandra Kelly'),
(96, 'Cynthia Black'),
(97, 'Howard Taylor'),
(98, 'Cynthia Armstrong'),
(99, 'Stephen Kennedy'),
(100, 'Janet Henderson');

-- --------------------------------------------------------

--
-- Estrutura da tabela `biblioteca`
--

CREATE TABLE `biblioteca` (
  `Biblioteca_nome` varchar(45) NOT NULL,
  `biblioteca_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `biblioteca`
--

INSERT INTO `biblioteca` (`Biblioteca_nome`, `biblioteca_id`) VALUES
('Lanlacuni Bajo', 1),
('Kota Kinabalu', 2),
('Tanakawu Dua', 3),
('Novi Sad', 4),
('Kapyl’', 5),
('Jing’an', 6),
('Dobrošte', 7),
('Datong', 8),
('Hoolt', 9),
('Waldbillig', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `biblioteca_has_livro`
--

CREATE TABLE `biblioteca_has_livro` (
  `biblioteca_biblioteca_id` int(11) NOT NULL,
  `livro_livro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `biblioteca_has_livro`
--

INSERT INTO `biblioteca_has_livro` (`biblioteca_biblioteca_id`, `livro_livro_id`) VALUES
(1, 52),
(1, 53),
(1, 57),
(1, 62),
(1, 63),
(1, 66),
(1, 76),
(1, 78),
(1, 82),
(1, 83),
(1, 84),
(1, 88),
(1, 89),
(1, 93),
(1, 95),
(1, 98),
(2, 54),
(2, 60),
(2, 62),
(2, 68),
(2, 71),
(2, 76),
(2, 86),
(2, 90),
(2, 94),
(2, 96),
(2, 97),
(2, 98),
(3, 55),
(3, 56),
(3, 58),
(3, 59),
(3, 61),
(3, 62),
(3, 71),
(3, 82),
(3, 85),
(3, 87),
(3, 90),
(3, 91),
(3, 95),
(3, 98),
(3, 99),
(4, 54),
(4, 55),
(4, 58),
(4, 61),
(4, 67),
(4, 69),
(4, 78),
(4, 84),
(4, 88),
(4, 92),
(5, 53),
(5, 54),
(5, 58),
(5, 62),
(5, 63),
(5, 69),
(5, 74),
(5, 87),
(5, 89),
(5, 92),
(5, 94),
(5, 97),
(6, 72),
(6, 78),
(6, 79),
(6, 88),
(7, 54),
(7, 59),
(7, 62),
(7, 64),
(7, 68),
(7, 76),
(7, 82),
(7, 86),
(7, 89),
(7, 94),
(8, 53),
(8, 57),
(8, 58),
(8, 59),
(8, 62),
(8, 63),
(8, 64),
(8, 65),
(8, 66),
(8, 73),
(8, 80),
(8, 86),
(8, 87),
(8, 95),
(9, 60),
(9, 62),
(9, 65),
(9, 67),
(9, 71),
(9, 81),
(9, 97);

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `curso_id` int(11) NOT NULL,
  `curso_nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`curso_id`, `curso_nome`) VALUES
(1, 'sistemas de informação'),
(2, 'letras'),
(3, 'enfermagem');

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `editora_nome` varchar(70) NOT NULL,
  `editora_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`editora_nome`, `editora_id`) VALUES
('Howell, Halvorson and Luettgen', 1),
('Hyatt, Wyman and Baumbach', 2),
('Hermiston, Bogan and Leuschke', 3),
('Kreiger Group', 4),
('Crist Group', 5),
('Feil Group', 6),
('Ratke-Hintz', 7),
('Luettgen and Sons', 8),
('Conroy-Jast', 9),
('Lemke, Collins and Rice', 10),
('Friesen-Lynch', 11),
('Hirthe-Borer', 12),
('Cruickshank, Dickens and Connelly', 13),
('Lehner, Casper and Barrows', 14),
('Dickinson and Sons', 15),
('Conn and Sons', 16),
('Gusikowski Inc', 17),
('Bartoletti LLC', 18),
('Zulauf, Wisozk and McKenzie', 19),
('Kassulke-Grimes', 20),
('Hoeger, Jones and Lockman', 21),
('Grady, Batz and Miller', 22),
('Daniel, Feil and O\'Connell', 23),
('Jacobi, Denesik and Leannon', 24),
('Johns, Romaguera and Hickle', 25),
('Muller-Balistreri', 26),
('Zboncak, Klocko and Monahan', 27),
('Rempel-Hegmann', 28),
('Dare and Sons', 29),
('Herzog, Cronin and Rempel', 30),
('Bartell-Hartmann', 31),
('Dare, Kihn and Morissette', 32),
('Mosciski Group', 33),
('Cronin Inc', 34),
('Klocko and Sons', 35),
('Romaguera Group', 36),
('MacGyver Group', 37),
('Homenick-Bergnaum', 38),
('Kutch-Kuvalis', 39),
('Sauer-Zieme', 40),
('Streich, Dickinson and Cormier', 41),
('O\'Hara Group', 42),
('Klein, Renner and McKenzie', 43),
('Kris-Herzog', 44),
('Ullrich, Buckridge and Rowe', 45),
('Schuster-Jenkins', 46),
('Moore, Hand and Legros', 47),
('Murphy LLC', 48),
('Bahringer, Lakin and Zboncak', 49),
('Grant-Mraz', 50),
('Leannon, Murazik and Walsh', 51),
('Fahey-Mraz', 52),
('McGlynn, Blanda and Ferry', 53),
('Deckow-Predovic', 54),
('Gottlieb Group', 55),
('Langworth, Braun and Rempel', 56),
('Stamm-Hills', 57),
('Emard, West and McCullough', 58),
('Champlin, Rodriguez and Jacobson', 59),
('Stehr, McDermott and Kovacek', 60),
('Schowalter Group', 61),
('Oberbrunner and Sons', 62),
('Miller, Lowe and Jacobs', 63),
('Bruen, Schumm and Mante', 64),
('Yundt-Upton', 65),
('Hermann-Purdy', 66),
('Graham, Reichel and Lockman', 67),
('Muller, Dicki and Bartell', 68),
('Gerhold-Nitzsche', 69),
('Swaniawski, Borer and Hand', 70),
('Gerhold-Hauck', 71),
('Simonis-Kirlin', 72),
('Deckow, Blick and Satterfield', 73),
('Hintz-Kozey', 74),
('Feest-Cremin', 75),
('Cummings-Gerlach', 76),
('Gusikowski, Harber and Okuneva', 77),
('Green, Ryan and Roberts', 78),
('Wiza-Altenwerth', 79),
('Jenkins, Skiles and Larson', 80),
('Boehm-Anderson', 81),
('Rosenbaum Group', 82),
('Daugherty, Blanda and Spencer', 83),
('Terry, Wehner and Bernhard', 84),
('Quitzon, Gibson and Waelchi', 85),
('Kozey, Bauch and Dicki', 86),
('Abbott Group', 87),
('Pagac Group', 88),
('Brown LLC', 89),
('Tillman-Rath', 90),
('Bosco-Schiller', 91),
('O\'Hara Inc', 92),
('Effertz-Klocko', 93),
('Barrows-Thompson', 94),
('Schultz Group', 95),
('Halvorson, Boyle and Roberts', 96),
('Pacocha, Bechtelar and Johnston', 97),
('Reichel and Sons', 98),
('Kutch-Kertzmann', 99),
('Beer, Walter and Reinger', 100);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `idendereco_id` int(11) NOT NULL,
  `endereco_logadouro` varchar(45) DEFAULT NULL,
  `endereco_cidade` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`idendereco_id`, `endereco_logadouro`, `endereco_cidade`) VALUES
(1, '9 Upham Lane', 'Caieiras'),
(2, '60 Lotheville Center', 'Gaomiaoji'),
(3, '51301 Starling Pass', 'Petrivka'),
(4, '57564 Dexter Parkway', 'Arlington'),
(5, '28105 Sunnyside Trail', 'Nuoxizhi'),
(6, '5 Moland Trail', 'Zamość'),
(7, '2 Northfield Park', 'Ōdachō-ōda'),
(8, '545 Melody Point', 'Shunling'),
(9, '924 Green Terrace', 'Shenavan'),
(10, '341 Pennsylvania Park', 'Tuojiang'),
(11, '01617 Golf Course Parkway', 'Aragarças'),
(12, '441 Hoffman Way', 'Buzdyak'),
(13, '9445 Spaight Way', 'Mieścisko'),
(14, '544 Hovde Place', 'Cuiabá'),
(15, '3091 Twin Pines Alley', 'Dingbao'),
(16, '2 Grim Point', 'Ketapang'),
(17, '89980 Granby Terrace', 'La Rioja'),
(18, '248 School Way', 'Brunflo'),
(19, '28301 Merrick Point', 'Chikwawa'),
(20, '21789 Mcbride Crossing', 'Parakanpanjang'),
(21, '769 Loomis Trail', 'Jujur'),
(22, '84943 Kedzie Avenue', 'Khadīr'),
(23, '15612 Eastlawn Circle', 'San Bernardino'),
(24, '4 Chinook Terrace', 'Kosum Phisai'),
(25, '75048 Marquette Road', 'Quilmaná'),
(26, '7 Summit Hill', 'Nizao'),
(27, '4622 Farwell Street', 'Janas'),
(28, '2 Sycamore Court', 'Mendenrejo'),
(29, '5705 Schurz Street', 'Ashtarak'),
(30, '57646 Paget Avenue', 'Popielów'),
(31, '808 6th Plaza', 'Nizhniy Bestyakh'),
(32, '77958 Macpherson Alley', 'Altanbulag'),
(33, '58326 North Road', 'Jianping'),
(34, '19478 Blue Bill Park Place', 'Pevek'),
(35, '65752 Kim Crossing', 'Boleszkowice'),
(36, '65160 Brown Junction', 'Babakan'),
(37, '79 Trailsway Point', 'Kiangan'),
(38, '91442 Hazelcrest Park', 'Qianpai'),
(39, '276 Scott Lane', 'Skópelos'),
(40, '84 Alpine Center', 'Phu Kradueng'),
(41, '1704 Tony Pass', 'Hanna'),
(42, '23 Forest Dale Alley', 'New Cebu'),
(43, '253 Elgar Avenue', 'Arras'),
(44, '55345 Pierstorff Crossing', 'Yingwusitang'),
(45, '76854 Brown Street', 'Kibuku'),
(46, '4244 Saint Paul Alley', 'Huipinggeng'),
(47, '5 Clove Junction', 'Stockholm'),
(48, '662 David Drive', 'Bukal Sur'),
(49, '326 Burning Wood Parkway', 'George Town'),
(50, '9 Derek Pass', 'Olleros'),
(51, '704 Northview Drive', 'Lingkou'),
(52, '65 Chinook Center', 'Vostryakovo'),
(53, '726 Fairview Alley', 'Tchintabaraden'),
(54, '36313 Roth Place', 'Vannes'),
(55, '1701 Valley Edge Road', 'Kujama'),
(56, '97473 Emmet Alley', 'Maradi'),
(57, '147 Arkansas Hill', 'Tam Kỳ'),
(58, '41 Buena Vista Trail', 'Mampong'),
(59, '7 Larry Street', 'José de Freitas'),
(60, '14848 Crescent Oaks Court', 'Shizi'),
(61, '6781 Eagle Crest Avenue', 'Gaogu'),
(62, '88074 Grasskamp Terrace', 'Hat Yai'),
(63, '97970 Oxford Crossing', 'Huambo'),
(64, '22 Forest Run Lane', 'Gongpo'),
(65, '94996 Fairfield Crossing', 'Londrina'),
(66, '768 8th Court', 'Fuzihe'),
(67, '3 Melrose Alley', 'Zhangxiang'),
(68, '443 Bayside Terrace', 'Los Angeles'),
(69, '87498 Redwing Lane', 'Cachada'),
(70, '61848 Hollow Ridge Lane', 'Xicheng'),
(71, '7 Hoard Trail', 'Aioi'),
(72, '6 Transport Lane', 'Xilinji'),
(73, '62802 Ilene Circle', 'Foz Giraldo'),
(74, '8 American Parkway', 'Krajan Puru'),
(75, '00 Sullivan Road', 'Osby'),
(76, '407 Armistice Drive', 'Zhongwei'),
(77, '6 Graceland Point', 'Juexi'),
(78, '60899 Stang Street', 'Alvaro Obregon'),
(79, '4491 Haas Pass', 'Tianta'),
(80, '711 Crescent Oaks Point', 'Mingshan'),
(81, '1 Vahlen Drive', 'Detroit'),
(82, '974 5th Road', 'Saint-Marcellin'),
(83, '4 Little Fleur Pass', 'Kimry'),
(84, '87 Packers Pass', 'Olsztynek'),
(85, '49289 Hollow Ridge Road', 'Ferraria'),
(86, '860 Surrey Road', 'San Roque'),
(87, '30 Northland Place', 'Arnhem'),
(88, '566 Swallow Crossing', 'La Tebaida'),
(89, '80 Westerfield Place', 'Youxi'),
(90, '554 Forest Run Parkway', 'Aubervilliers'),
(91, '10411 Memorial Way', 'Hulitu'),
(92, '3 Swallow Parkway', 'Coroico'),
(93, '572 Bartillon Avenue', 'San Isidro'),
(94, '494 Old Gate Pass', 'Ansermanuevo'),
(95, '40947 Briar Crest Plaza', 'Rulong'),
(96, '61774 Lindbergh Place', 'Krasnogvardeyets'),
(97, '8670 Kennedy Center', 'Tatuí'),
(98, '3254 Division Parkway', 'Aţ Ţafīlah'),
(99, '223 Namekagon Drive', 'Xiangshan'),
(100, '1 Morrow Road', 'Pokhvistnevo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `livro_id` int(11) NOT NULL,
  `livro_nome` varchar(45) NOT NULL,
  `livro_idioma` varchar(45) NOT NULL,
  `livro_qt_pag` int(11) DEFAULT NULL,
  `editora_editora_id` int(11) NOT NULL,
  `ano_plublic` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`livro_id`, `livro_nome`, `livro_idioma`, `livro_qt_pag`, `editora_editora_id`, `ano_plublic`) VALUES
(52, 'Schultz Inc', 'Malay', 141, 27, '2014-08-28'),
(53, 'Corwin LLC', 'Northern Sotho', 378, 89, '2015-12-21'),
(54, 'Johns-Haley', 'Dzongkha', 830, 63, '2014-10-23'),
(55, 'Lind, Hodkiewicz and Altenwerth', 'Italian', 729, 3, '2017-02-20'),
(56, 'Okuneva-Haag', 'Bengali', 386, 47, '2015-03-12'),
(57, 'Klocko, Grady and Sawayn', 'Macedonian', 511, 37, '2015-03-23'),
(58, 'Boyer-Bartell', 'Hiri Motu', 555, 64, '2015-09-08'),
(59, 'Tromp and Sons', 'Azeri', 373, 38, '2016-06-20'),
(60, 'Walsh, Leuschke and Torphy', 'Norwegian', 754, 90, '2016-12-21'),
(61, 'Ondricka-Wintheiser', 'Bosnian', 536, 22, '2015-04-02'),
(62, 'West, Sauer and Muller', 'Japanese', 205, 99, '2016-07-08'),
(63, 'Russel, Hane and Strosin', 'Tamil', 421, 52, '2015-10-06'),
(64, 'Greenfelder, Johnson and Sipes', 'West Frisian', 834, 41, '2014-12-21'),
(65, 'Von and Sons', 'Bislama', 258, 76, '2014-04-30'),
(66, 'Thiel-Lesch', 'Icelandic', 862, 96, '2016-02-17'),
(67, 'Carter-Johnston', 'Greek', 131, 82, '2015-02-10'),
(68, 'Bergnaum, Gleichner and Shanahan', 'Sotho', 868, 98, '2016-04-06'),
(69, 'Bergstrom-Upton', 'Japanese', 305, 68, '2015-05-15'),
(70, 'Oberbrunner-Morar', 'Czech', 695, 49, '2014-12-24'),
(71, 'Green-Collier', 'Polish', 564, 25, '2016-09-09'),
(72, 'Spinka, Wilkinson and Labadie', 'Gagauz', 256, 9, '2014-09-27'),
(73, 'Corwin-Nitzsche', 'Punjabi', 643, 57, '2016-04-02'),
(74, 'Feeney, Mayer and Braun', 'Tsonga', 553, 33, '2014-09-20'),
(75, 'Reilly Group', 'Georgian', 161, 64, '2014-10-02'),
(76, 'Ruecker LLC', 'Swahili', 457, 70, '2017-02-17'),
(77, 'Mosciski-Adams', 'Ndebele', 198, 49, '2016-04-16'),
(78, 'Gerlach LLC', 'Icelandic', 599, 98, '2016-07-19'),
(79, 'Blanda-Sauer', 'Danish', 859, 90, '2015-11-18'),
(80, 'Gibson, Mueller and Gleason', 'Burmese', 249, 12, '2015-05-09'),
(81, 'Durgan, Krajcik and Glover', 'Czech', 610, 41, '2015-06-22'),
(82, 'Bergnaum-Bergstrom', 'Icelandic', 484, 94, '2014-08-17'),
(83, 'Grady-Bashirian', 'Quechua', 618, 31, '2015-04-06'),
(84, 'Walter-Quitzon', 'Portuguese', 629, 80, '2014-08-19'),
(85, 'Goodwin LLC', 'Burmese', 803, 34, '2017-01-24'),
(86, 'Hammes Group', 'Arabic', 125, 49, '2015-05-05'),
(87, 'Becker and Sons', 'Portuguese', 954, 81, '2016-06-24'),
(88, 'Dibbert Inc', 'Portuguese', 392, 20, '2016-03-08'),
(89, 'Fisher-Senger', 'Malagasy', 920, 34, '2015-11-07'),
(90, 'Watsica-Stanton', 'Fijian', 624, 80, '2017-03-20'),
(91, 'Will-Jenkins', 'Norwegian', 492, 63, '2016-03-11'),
(92, 'Willms LLC', 'German', 865, 3, '2017-01-22'),
(93, 'Keeling, Treutel and Jenkins', 'Marathi', 358, 61, '2014-04-14'),
(94, 'Spinka and Sons', 'Bosnian', 977, 39, '2015-11-15'),
(95, 'Larson LLC', 'Northern Sotho', 770, 96, '2016-11-08'),
(96, 'Wiegand, Rempel and White', 'Gagauz', 983, 18, '2015-02-24'),
(97, 'Rice-Larkin', 'Azeri', 645, 50, '2014-07-03'),
(98, 'Maggio Inc', 'Kannada', 180, 85, '2016-08-13'),
(99, 'Romaguera and Sons', 'German', 312, 18, '2014-04-24'),
(100, 'Williamson and Sons', 'Lithuanian', 434, 25, '2016-03-18'),
(101, 'Stamm, Littel and Hagenes', 'Gagauz', 310, 56, '2015-09-24'),
(102, 'Herzog and Sons', 'Montenegrin', 785, 59, '2015-05-17'),
(103, 'Lueilwitz, Cormier and Keeling', 'Khmer', 814, 1, '2014-09-02'),
(104, 'Kuhic-Connelly', 'Fijian', 676, 2, '2016-02-04'),
(105, 'Boehm, Cassin and Marks', 'Tajik', 799, 72, '2014-05-17'),
(106, 'Raynor Inc', 'Korean', 392, 70, '2014-08-08'),
(107, 'Purdy LLC', 'Tsonga', 637, 16, '2016-09-29'),
(108, 'Kris, Ziemann and Kuhic', 'Northern Sotho', 658, 5, '2015-12-15'),
(109, 'Keeling, Durgan and Hodkiewicz', 'Polish', 465, 71, '2015-10-27'),
(110, 'Tillman, Langosh and Homenick', 'Japanese', 615, 20, '2016-10-25'),
(111, 'Mosciski Group', 'German', 955, 44, '2015-02-21'),
(112, 'Schiller, McKenzie and Heathcote', 'West Frisian', 690, 78, '2014-11-24'),
(113, 'Abshire and Sons', 'Somali', 415, 91, '2014-11-26'),
(114, 'Gibson-Reichel', 'Kannada', 870, 19, '2015-03-29'),
(115, 'Schmeler Inc', 'Haitian Creole', 553, 4, '2015-04-10'),
(116, 'Boyle, Stanton and Luettgen', 'Hindi', 318, 54, '2015-10-16'),
(117, 'O\'Kon-Rau', 'Azeri', 634, 84, '2014-05-29'),
(118, 'Purdy-Tillman', 'Sotho', 241, 96, '2016-01-18'),
(119, 'Eichmann Group', 'Korean', 427, 34, '2016-03-21'),
(120, 'Smitham, DuBuque and Hills', 'Nepali', 938, 79, '2016-06-30'),
(121, 'Heaney Inc', 'Tswana', 126, 67, '2015-03-18'),
(122, 'Kilback Inc', 'Afrikaans', 991, 46, '2016-05-18'),
(123, 'Bruen and Sons', 'Dari', 768, 84, '2016-06-27'),
(124, 'McGlynn, Kassulke and Purdy', 'Northern Sotho', 948, 53, '2016-05-29'),
(125, 'Zulauf, Brekke and Russel', 'Malagasy', 796, 27, '2016-08-12'),
(126, 'Konopelski-Walsh', 'Tetum', 561, 60, '2015-07-04'),
(127, 'Beatty Group', 'Sotho', 311, 87, '2014-12-10'),
(128, 'Torphy-Haley', 'Bosnian', 258, 17, '2016-03-01'),
(129, 'Schumm, Bernhard and Denesik', 'Gujarati', 177, 26, '2016-05-26'),
(130, 'Hoeger-Larkin', 'Assamese', 648, 25, '2015-11-15'),
(131, 'Reynolds Group', 'Montenegrin', 198, 23, '2015-10-01'),
(132, 'Nienow Inc', 'Thai', 726, 43, '2016-08-23'),
(133, 'Schulist-Hyatt', 'Greek', 596, 71, '2014-10-19'),
(134, 'Breitenberg-Berge', 'Estonian', 201, 39, '2014-10-20'),
(135, 'Dickinson Inc', 'Thai', 207, 53, '2014-09-06'),
(136, 'Stoltenberg-Hartmann', 'Fijian', 583, 45, '2016-06-19'),
(137, 'Nikolaus-Sawayn', 'Tamil', 899, 70, '2015-06-29'),
(138, 'Kulas-Schuster', 'Malagasy', 944, 37, '2017-03-17'),
(139, 'Lubowitz-Sporer', 'Haitian Creole', 839, 28, '2014-11-01'),
(140, 'Trantow LLC', 'Macedonian', 927, 90, '2015-10-30'),
(141, 'Hauck-Yost', 'Hungarian', 437, 74, '2016-02-26'),
(142, 'Kovacek-Hills', 'Filipino', 893, 81, '2014-12-06'),
(143, 'Schinner-Bauch', 'Thai', 148, 73, '2014-05-13'),
(144, 'Schulist-VonRueden', 'Latvian', 362, 39, '2017-03-06'),
(145, 'Johns-Strosin', 'Aymara', 328, 82, '2016-01-29'),
(146, 'Windler LLC', 'Dari', 538, 54, '2015-11-24'),
(147, 'Kertzmann and Sons', 'Dari', 985, 86, '2015-11-05'),
(148, 'Reilly, Emard and McGlynn', 'Hiri Motu', 460, 38, '2016-06-17'),
(149, 'O\'Hara-Skiles', 'English', 249, 3, '2015-09-20'),
(150, 'Yundt-Berge', 'Norwegian', 992, 80, '2014-04-27'),
(151, 'Franecki Group', 'Kazakh', 913, 86, '2014-04-03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro_has_autor`
--

CREATE TABLE `livro_has_autor` (
  `livro_livro_id` int(11) NOT NULL,
  `autor_autor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `livro_has_autor`
--

INSERT INTO `livro_has_autor` (`livro_livro_id`, `autor_autor_id`) VALUES
(52, 6),
(52, 27),
(52, 33),
(53, 17),
(53, 19),
(54, 83),
(55, 46),
(57, 27),
(57, 80),
(58, 20),
(58, 30),
(58, 69),
(58, 89),
(59, 23),
(60, 19),
(60, 34),
(60, 42),
(61, 70),
(62, 26),
(62, 78),
(62, 80),
(62, 85),
(63, 53),
(63, 54),
(63, 94),
(64, 10),
(64, 41),
(64, 60),
(65, 9),
(66, 83),
(66, 98),
(67, 58),
(67, 96),
(68, 6),
(68, 35),
(68, 56),
(69, 32),
(69, 43),
(69, 53),
(70, 53),
(70, 58),
(71, 14),
(72, 45),
(73, 21),
(73, 28),
(73, 51),
(75, 53),
(76, 32),
(76, 98),
(77, 47),
(77, 74),
(78, 26),
(78, 92),
(78, 99),
(79, 17),
(79, 23),
(80, 49),
(80, 72),
(80, 97),
(81, 5),
(82, 15),
(83, 1),
(83, 2),
(83, 50),
(84, 71),
(85, 24),
(85, 32),
(85, 47),
(85, 83),
(86, 3),
(86, 83),
(86, 90),
(87, 19),
(87, 64),
(87, 98),
(88, 88),
(89, 47),
(89, 50),
(89, 63),
(90, 40),
(90, 41),
(90, 96),
(91, 11),
(91, 12),
(91, 31),
(91, 55),
(91, 74),
(92, 34),
(92, 38),
(92, 57),
(93, 30),
(93, 94),
(94, 34),
(94, 58),
(94, 96),
(95, 10),
(96, 14),
(96, 66),
(96, 75),
(97, 97),
(97, 99),
(98, 36),
(99, 8),
(99, 15),
(99, 71),
(99, 77);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `professor_id` int(11) NOT NULL,
  `Siape` varchar(45) NOT NULL,
  `user_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`professor_id`, `Siape`, `user_user_id`) VALUES
(1, '5173060159952799', 51),
(2, '4911176255472738', 52),
(3, '3585275149372687', 53),
(4, '3536020036217888', 54),
(5, '337941844412766', 55),
(6, '3561105908665930', 56),
(7, '3589981513372718', 57),
(8, '201464084797161', 58),
(9, '30120680276623', 59),
(10, '5038375790488713', 60),
(11, '3581007467422586', 61),
(12, '5100149141210842', 62),
(13, '3539707018696181', 63),
(14, '4405460606684479', 64),
(15, '5602249920454216', 65),
(16, '6706349217142970', 66),
(17, '3574510448698470', 67),
(18, '374283416316966', 68),
(19, '630457901456683599', 69),
(20, '3555047647267479', 70),
(21, '3545812264145818', 71),
(22, '3584927802674806', 72),
(23, '201491108056167', 73),
(24, '3548271416013555', 74),
(25, '5038368335101705821', 75),
(26, '3536626968795202', 76),
(27, '374288960185279', 77),
(28, '36027701438948', 78),
(29, '3567673781188209', 79),
(30, '493612512907400080', 80),
(31, '56022234415043026', 81),
(32, '5007665593373196', 82),
(33, '3541202435190527', 83),
(34, '3575004609209490', 84),
(35, '5893895585332100982', 85),
(36, '3530826764992286', 86),
(37, '5602230081831970', 87),
(38, '5602236550944210', 88),
(39, '3589358405868790', 89),
(40, '3562359772314872', 90),
(41, '5007666934104902', 91),
(42, '374622406545102', 92),
(43, '3578907867004881', 93),
(44, '490503377644699545', 94),
(45, '4508590035984060', 95),
(46, '3588661240581101', 96),
(47, '630440305290038715', 97),
(48, '5602223402713761', 98),
(49, '3585216465140035', 99),
(50, '337941804150497', 100);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor_has_curso`
--

CREATE TABLE `professor_has_curso` (
  `professor_professor_id` int(11) NOT NULL,
  `curso_curso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professor_has_curso`
--

INSERT INTO `professor_has_curso` (`professor_professor_id`, `curso_curso_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 2),
(6, 3),
(7, 1),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(9, 3),
(10, 2),
(11, 1),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(15, 2),
(15, 3),
(16, 2),
(16, 3),
(17, 2),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 2),
(22, 2),
(23, 1),
(23, 2),
(23, 3),
(24, 1),
(24, 2),
(24, 3),
(26, 2),
(26, 3),
(27, 1),
(29, 1),
(29, 2),
(29, 3),
(30, 1),
(30, 2),
(30, 3),
(31, 1),
(32, 1),
(32, 2),
(32, 3),
(33, 1),
(33, 2),
(34, 2),
(35, 1),
(36, 2),
(36, 3),
(37, 1),
(38, 2),
(39, 1),
(39, 2),
(41, 1),
(42, 2),
(44, 2),
(44, 3),
(45, 1),
(45, 2),
(45, 3),
(46, 1),
(46, 2),
(46, 3),
(47, 1),
(47, 2),
(49, 2),
(49, 3),
(50, 1),
(50, 2),
(50, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nome` varchar(45) NOT NULL,
  `endereco_idendereco_id` int(11) NOT NULL,
  `user_idade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`user_id`, `user_nome`, `endereco_idendereco_id`, `user_idade`) VALUES
(1, 'Carinha', 1, 16),
(2, '964 Dwight Terrace', 65, 20),
(3, '2 High Crossing Crossing', 3, 35),
(4, '818 Eliot Park', 34, 20),
(5, '3025 Union Road', 69, 40),
(6, '9 Morrow Street', 20, 45),
(7, '18724 Columbus Drive', 100, 30),
(8, '788 Pine View Parkway', 82, 48),
(9, '0799 Cody Parkway', 96, 15),
(10, '5254 Eastlawn Center', 19, 24),
(11, '912 Porter Plaza', 63, 19),
(12, '549 Elka Parkway', 36, 22),
(13, '61668 Holy Cross Plaza', 52, 47),
(14, '070 Cascade Plaza', 23, 30),
(15, '27588 Westport Place', 99, 33),
(16, '7 Luster Court', 67, 21),
(17, '46808 Bunting Crossing', 22, 45),
(18, '5377 Leroy Terrace', 56, 21),
(19, '807 Dahle Hill', 81, 45),
(20, '433 Elmside Way', 5, 38),
(21, '88299 Sachs Place', 55, 45),
(22, '1965 Meadow Valley Junction', 58, 30),
(23, '5 Banding Crossing', 41, 38),
(24, '21901 International Avenue', 14, 24),
(25, '50 Grasskamp Parkway', 66, 40),
(26, '1969 Norway Maple Crossing', 64, 28),
(27, '75855 Westerfield Pass', 79, 34),
(28, '17 Mcbride Street', 34, 32),
(29, '73514 Prentice Lane', 76, 37),
(30, '431 Tony Plaza', 87, 27),
(31, '43275 Trailsway Pass', 48, 41),
(32, '13 Judy Park', 61, 28),
(33, '7944 Steensland Way', 77, 45),
(34, '6 Schlimgen Lane', 65, 21),
(35, '679 Thompson Park', 46, 44),
(36, '324 Ridgeview Crossing', 13, 15),
(37, '152 Corben Plaza', 25, 25),
(38, '835 West Terrace', 92, 22),
(39, '08181 Valley Edge Avenue', 31, 19),
(40, '9 Eagle Crest Pass', 81, 48),
(41, '7 Oneill Trail', 53, 48),
(42, '7 Bluestem Pass', 92, 29),
(43, '5 Anzinger Drive', 48, 15),
(44, '8588 Lakewood Gardens Way', 83, 19),
(45, '47 Warrior Terrace', 36, 32),
(46, '85759 Washington Junction', 25, 34),
(47, '5193 Mifflin Trail', 70, 46),
(48, '48210 Larry Point', 61, 15),
(49, '9740 Twin Pines Terrace', 100, 41),
(50, '3 Russell Crossing', 8, 38),
(51, '653 Bashford Plaza', 68, 36),
(52, '12763 Coleman Way', 53, 36),
(53, '34 Hayes Center', 53, 34),
(54, '41310 Forest Lane', 5, 47),
(55, '025 Fairfield Alley', 32, 50),
(56, '74 Prairie Rose Terrace', 92, 15),
(57, '29527 Iowa Junction', 63, 21),
(58, '9 Forest Crossing', 32, 30),
(59, '36 Sycamore Point', 30, 30),
(60, '53085 Reinke Trail', 63, 43),
(61, '25402 Bartillon Lane', 48, 15),
(62, '7218 Sherman Road', 76, 28),
(63, '677 Eggendart Way', 38, 26),
(64, '41 Union Terrace', 70, 43),
(65, '2 Pepper Wood Circle', 50, 24),
(66, '25680 Saint Paul Avenue', 32, 30),
(67, '7 Paget Pass', 6, 25),
(68, '48 Macpherson Way', 15, 21),
(69, '707 Westend Point', 96, 28),
(70, '438 Anzinger Circle', 2, 28),
(71, '1621 Stang Hill', 88, 42),
(72, '59484 Shopko Point', 12, 27),
(73, '491 Waxwing Terrace', 82, 45),
(74, '6723 Barnett Street', 59, 29),
(75, '1 Paget Terrace', 25, 15),
(76, '30 Hoepker Place', 6, 28),
(77, '1 Ridge Oak Parkway', 87, 50),
(78, '7 Sunnyside Circle', 81, 37),
(79, '25153 Oak Valley Center', 71, 48),
(80, '9 Mallard Way', 50, 49),
(81, '24 Victoria Plaza', 44, 50),
(82, '76 Daystar Circle', 88, 31),
(83, '18 Memorial Lane', 38, 35),
(84, '7 Bultman Court', 99, 22),
(85, '59 Westend Pass', 50, 39),
(86, '05434 Wayridge Pass', 81, 22),
(87, '8 Luster Point', 60, 44),
(88, '2 Weeping Birch Crossing', 28, 28),
(89, '78286 Vera Park', 13, 31),
(90, '4 Dryden Parkway', 96, 33),
(91, '603 Westerfield Alley', 59, 37),
(92, '99 Burning Wood Terrace', 51, 15),
(93, '613 Welch Junction', 73, 26),
(94, '9 Dayton Pass', 8, 36),
(95, '3 Kim Plaza', 42, 28),
(96, '47346 6th Alley', 36, 19),
(97, '8016 Bashford Parkway', 74, 45),
(98, '87 Express Alley', 89, 40),
(99, '1132 Village Crossing', 24, 48),
(100, '78 Saint Paul Alley', 64, 41),
(101, '1394 1st Junction', 84, 39);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_has_livro`
--

CREATE TABLE `user_has_livro` (
  `user_user_id` int(11) NOT NULL,
  `livro_livro_id` int(11) NOT NULL,
  `estado` varchar(45) DEFAULT 'ativo',
  `data_reti` date DEFAULT NULL,
  `data_devo` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user_has_livro`
--

INSERT INTO `user_has_livro` (`user_user_id`, `livro_livro_id`, `estado`, `data_reti`, `data_devo`) VALUES
(1, 72, 'ativo', '2014-05-14', NULL),
(2, 77, 'ativo', '2014-11-29', '2016-10-08'),
(3, 62, 'ativo', '2015-02-04', '2016-12-27'),
(3, 97, 'ativo', '2014-11-25', '2017-01-09'),
(4, 78, 'ativo', '2014-06-15', NULL),
(5, 80, 'ativo', '2016-04-27', '2017-02-21'),
(5, 84, 'ativo', '2014-08-06', NULL),
(5, 87, 'ativo', '2015-07-01', NULL),
(6, 62, 'ativo', '2015-03-05', '2016-12-29'),
(6, 73, 'ativo', '2017-01-20', NULL),
(9, 56, 'ativo', '2014-12-10', NULL),
(9, 74, 'ativo', '2015-03-15', NULL),
(9, 97, 'ativo', '2016-03-18', NULL),
(10, 72, 'ativo', '2014-09-11', '2016-05-01'),
(10, 86, 'ativo', '2015-11-27', '2016-08-26'),
(11, 68, 'ativo', '2017-02-08', NULL),
(13, 73, 'ativo', '2016-09-11', '2016-10-23'),
(14, 59, 'ativo', '2016-03-29', '2016-08-27'),
(15, 55, 'ativo', '2014-05-23', '2016-11-28'),
(15, 59, 'ativo', '2015-02-16', '2016-11-30'),
(15, 68, 'ativo', '2017-01-15', NULL),
(16, 65, 'ativo', '2016-03-12', NULL),
(17, 59, 'ativo', '2016-09-02', '2016-07-27'),
(19, 73, 'ativo', '2016-05-09', '2017-01-05'),
(20, 82, 'ativo', '2016-02-01', '2016-07-23'),
(20, 95, 'ativo', '2015-08-23', NULL),
(21, 68, 'ativo', '2015-06-19', '2016-05-21'),
(21, 78, 'ativo', '2015-06-28', '2016-10-02'),
(22, 74, 'ativo', '2014-10-11', '2016-05-28'),
(22, 84, 'ativo', '2015-09-10', '2016-11-27'),
(24, 73, 'ativo', '2015-02-18', '2016-12-27'),
(26, 62, 'ativo', '2015-07-22', NULL),
(27, 57, 'ativo', '2014-09-04', '2016-03-28'),
(28, 73, 'ativo', '2015-09-07', '2016-12-08'),
(28, 96, 'ativo', '2014-11-20', '2017-02-20'),
(28, 97, 'ativo', '2016-06-25', '2016-10-05'),
(29, 52, 'ativo', '2015-01-06', '2016-04-24'),
(30, 75, 'ativo', '2014-09-01', '2016-07-20'),
(30, 80, 'ativo', '2014-04-18', '2016-04-07'),
(31, 59, 'ativo', '2016-06-22', '2016-09-22'),
(31, 97, 'ativo', '2015-07-17', '2016-04-26'),
(32, 54, 'ativo', '2016-12-28', '2016-09-26'),
(34, 60, 'ativo', '2017-02-19', '2016-10-20'),
(34, 66, 'ativo', '2014-06-11', NULL),
(36, 92, 'ativo', '2016-11-21', '2016-09-25'),
(36, 99, 'ativo', '2016-03-09', '2016-08-08'),
(37, 89, 'ativo', '2015-08-03', NULL),
(37, 92, 'ativo', '2014-07-31', '2016-04-16'),
(38, 83, 'ativo', '2015-09-19', '2017-02-14'),
(39, 80, 'ativo', '2016-11-28', '2016-05-13'),
(40, 52, 'ativo', '2014-08-26', '2016-10-02'),
(40, 62, 'ativo', '2016-03-15', '2016-07-25'),
(41, 63, 'ativo', '2015-07-15', NULL),
(41, 78, 'ativo', '2014-06-06', NULL),
(41, 87, 'ativo', '2015-04-14', '2016-05-11'),
(43, 53, 'ativo', '2015-02-10', '2016-10-09'),
(43, 57, 'ativo', '2015-10-18', '2016-03-29'),
(43, 64, 'ativo', '2016-04-04', '2016-06-20'),
(43, 68, 'ativo', '2015-09-05', '2016-06-29'),
(43, 74, 'ativo', '2015-08-25', '2017-01-14'),
(44, 67, 'ativo', '2015-11-21', '2016-08-12'),
(44, 83, 'ativo', '2016-10-21', '2016-08-23'),
(44, 100, 'ativo', '2015-08-09', '2017-01-17'),
(45, 94, 'ativo', '2016-06-13', '2016-06-22'),
(46, 74, 'ativo', '2015-05-27', NULL),
(46, 80, 'ativo', '2016-08-22', NULL),
(47, 57, 'ativo', '2015-06-13', '2016-03-29'),
(47, 75, 'ativo', '2016-01-07', NULL),
(47, 88, 'ativo', '2014-10-18', '2016-11-25'),
(48, 92, 'ativo', '2015-09-05', NULL),
(50, 91, 'ativo', '2015-04-02', '2016-05-17'),
(51, 69, 'ativo', '2014-12-22', '2016-04-04'),
(51, 85, 'ativo', '2015-09-04', '2016-08-18'),
(52, 57, 'ativo', '2017-01-17', NULL),
(52, 72, 'ativo', '2016-12-27', '2017-03-24'),
(52, 94, 'ativo', '2016-07-12', '2017-02-27'),
(54, 62, 'ativo', '2014-06-01', NULL),
(55, 96, 'ativo', '2017-01-29', NULL),
(56, 85, 'ativo', '2014-10-25', '2016-11-19'),
(57, 57, 'ativo', '2015-04-16', '2016-07-13'),
(58, 59, 'ativo', '2014-05-26', '2017-02-28'),
(58, 67, 'ativo', '2014-11-29', '2016-10-27'),
(58, 72, 'ativo', '2016-07-15', '2016-06-19'),
(58, 96, 'ativo', '2016-01-26', '2016-03-26'),
(59, 91, 'ativo', '2015-12-18', NULL),
(61, 75, 'ativo', '2015-07-01', NULL),
(62, 80, 'ativo', '2017-03-14', '2017-01-29'),
(62, 91, 'ativo', '2014-04-06', '2016-10-30'),
(66, 71, 'ativo', '2015-08-10', NULL),
(67, 53, 'ativo', '2016-01-11', '2016-10-07'),
(69, 54, 'ativo', '2014-04-14', NULL),
(71, 58, 'ativo', '2016-09-20', '2016-08-21'),
(72, 59, 'ativo', '2016-04-07', '2016-06-27'),
(73, 69, 'ativo', '2014-09-10', '2016-04-16'),
(73, 90, 'ativo', '2017-01-12', '2016-12-06'),
(75, 73, 'ativo', '2015-03-30', '2016-09-29'),
(76, 80, 'ativo', '2016-11-04', '2016-10-03'),
(76, 100, 'ativo', '2015-03-12', '2017-01-21'),
(77, 70, 'ativo', '2015-02-04', NULL),
(77, 80, 'ativo', '2016-05-30', '2016-08-21'),
(78, 62, 'ativo', '2014-10-18', '2016-06-28'),
(79, 56, 'ativo', '2014-06-14', '2016-11-14'),
(79, 65, 'ativo', '2014-11-03', '2016-08-08'),
(80, 64, 'ativo', '2014-05-08', '2016-11-25'),
(80, 74, 'ativo', '2016-01-31', '2016-09-06'),
(80, 77, 'ativo', '2015-06-23', NULL),
(82, 69, 'ativo', '2014-10-21', '2016-07-11'),
(83, 58, 'ativo', '2015-02-13', '2016-07-04'),
(83, 79, 'ativo', '2016-07-21', '2016-09-19'),
(83, 86, 'ativo', '2014-08-09', '2016-04-06'),
(83, 89, 'ativo', '2015-08-03', '2016-06-09'),
(84, 52, 'ativo', '2016-04-27', '2016-05-30'),
(84, 91, 'ativo', '2015-12-18', '2017-02-02'),
(84, 96, 'ativo', '2014-09-26', '2017-01-13'),
(85, 63, 'ativo', '2014-07-23', '2016-07-14'),
(86, 81, 'ativo', '2017-01-15', NULL),
(86, 93, 'ativo', '2016-09-18', '2017-02-20'),
(87, 95, 'ativo', '2017-02-01', '2016-12-28'),
(87, 99, 'ativo', '2014-09-28', '2016-05-28'),
(88, 72, 'ativo', '2015-06-15', NULL),
(89, 76, 'ativo', '2014-09-01', '2016-06-21'),
(89, 81, 'ativo', '2015-10-02', '2016-07-10'),
(91, 62, 'ativo', '2016-07-20', '2017-02-03'),
(92, 63, 'ativo', '2015-02-21', NULL),
(92, 95, 'ativo', '2015-04-01', '2017-01-22'),
(93, 53, 'ativo', '2016-11-03', NULL),
(93, 83, 'ativo', '2016-10-08', '2016-12-11'),
(94, 52, 'ativo', '2016-10-25', NULL),
(94, 61, 'ativo', '2015-11-15', '2016-10-16'),
(94, 64, 'ativo', '2015-02-26', NULL),
(95, 74, 'ativo', '2017-03-04', NULL),
(95, 93, 'ativo', '2014-06-20', '2016-07-20'),
(96, 84, 'ativo', '2015-10-21', NULL),
(97, 52, 'ativo', '2015-04-26', '2017-03-12'),
(98, 82, 'ativo', '2017-03-05', '2017-01-12'),
(100, 56, 'ativo', '2016-12-01', '2016-09-02'),
(100, 70, 'ativo', '2016-12-23', '2016-09-16'),
(100, 76, 'ativo', '2015-11-01', NULL),
(100, 83, 'ativo', '2015-12-10', '2017-03-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`idaluno`),
  ADD KEY `fk_aluno_user1` (`user_user_id`);

--
-- Indexes for table `aluno_has_curso`
--
ALTER TABLE `aluno_has_curso`
  ADD PRIMARY KEY (`aluno_idaluno`,`curso_curso_id`),
  ADD KEY `fk_aluno_has_curso_curso1` (`curso_curso_id`);

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`autor_id`);

--
-- Indexes for table `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD PRIMARY KEY (`biblioteca_id`);

--
-- Indexes for table `biblioteca_has_livro`
--
ALTER TABLE `biblioteca_has_livro`
  ADD PRIMARY KEY (`biblioteca_biblioteca_id`,`livro_livro_id`),
  ADD KEY `fk_biblioteca_has_livro_livro1` (`livro_livro_id`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`curso_id`);

--
-- Indexes for table `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`editora_id`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idendereco_id`);

--
-- Indexes for table `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`livro_id`),
  ADD KEY `fk_livro_editora1` (`editora_editora_id`);

--
-- Indexes for table `livro_has_autor`
--
ALTER TABLE `livro_has_autor`
  ADD PRIMARY KEY (`livro_livro_id`,`autor_autor_id`),
  ADD KEY `fk_livro_has_autor_autor1` (`autor_autor_id`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`professor_id`),
  ADD KEY `fk_professor_user2` (`user_user_id`);

--
-- Indexes for table `professor_has_curso`
--
ALTER TABLE `professor_has_curso`
  ADD PRIMARY KEY (`professor_professor_id`,`curso_curso_id`),
  ADD KEY `fk_professor_has_curso_curso1` (`curso_curso_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_User_endereco1` (`endereco_idendereco_id`);

--
-- Indexes for table `user_has_livro`
--
ALTER TABLE `user_has_livro`
  ADD PRIMARY KEY (`user_user_id`,`livro_livro_id`),
  ADD KEY `fk_user_has_livro_livro1` (`livro_livro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `idaluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `autor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `biblioteca`
--
ALTER TABLE `biblioteca`
  MODIFY `biblioteca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `curso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `editora`
--
ALTER TABLE `editora`
  MODIFY `editora_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idendereco_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `livro`
--
ALTER TABLE `livro`
  MODIFY `livro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `professor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `fk_aluno_user1` FOREIGN KEY (`user_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `aluno_has_curso`
--
ALTER TABLE `aluno_has_curso`
  ADD CONSTRAINT `fk_aluno_has_curso_aluno1` FOREIGN KEY (`aluno_idaluno`) REFERENCES `aluno` (`idaluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aluno_has_curso_curso1` FOREIGN KEY (`curso_curso_id`) REFERENCES `curso` (`curso_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `biblioteca_has_livro`
--
ALTER TABLE `biblioteca_has_livro`
  ADD CONSTRAINT `fk_biblioteca_has_livro_biblioteca1` FOREIGN KEY (`biblioteca_biblioteca_id`) REFERENCES `biblioteca` (`biblioteca_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_biblioteca_has_livro_livro1` FOREIGN KEY (`livro_livro_id`) REFERENCES `livro` (`livro_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `fk_livro_editora1` FOREIGN KEY (`editora_editora_id`) REFERENCES `editora` (`editora_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `livro_has_autor`
--
ALTER TABLE `livro_has_autor`
  ADD CONSTRAINT `fk_livro_has_autor_autor1` FOREIGN KEY (`autor_autor_id`) REFERENCES `autor` (`autor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_livro_has_autor_livro1` FOREIGN KEY (`livro_livro_id`) REFERENCES `livro` (`livro_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `professor`
--
ALTER TABLE `professor`
  ADD CONSTRAINT `fk_professor_user2` FOREIGN KEY (`user_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `professor_has_curso`
--
ALTER TABLE `professor_has_curso`
  ADD CONSTRAINT `fk_professor_has_curso_curso1` FOREIGN KEY (`curso_curso_id`) REFERENCES `curso` (`curso_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_professor_has_curso_professor1` FOREIGN KEY (`professor_professor_id`) REFERENCES `professor` (`professor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_User_endereco1` FOREIGN KEY (`endereco_idendereco_id`) REFERENCES `endereco` (`idendereco_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `user_has_livro`
--
ALTER TABLE `user_has_livro`
  ADD CONSTRAINT `fk_user_has_livro_livro1` FOREIGN KEY (`livro_livro_id`) REFERENCES `livro` (`livro_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_has_livro_user1` FOREIGN KEY (`user_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
