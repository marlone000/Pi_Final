-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/07/2024 às 03:23
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pi_anime`
--
CREATE DATABASE IF NOT EXISTS `pi_anime` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pi_anime`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `animes`
--

CREATE TABLE `animes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `nome_jap` varchar(150) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `capitulos` int(11) NOT NULL,
  `qtd_eps` int(11) NOT NULL,
  `sinopse` text NOT NULL,
  `img` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `animes`
--

INSERT INTO `animes` (`id`, `nome`, `nome_jap`, `autor`, `capitulos`, `qtd_eps`, `sinopse`, `img`) VALUES
(6, 'Bleach', '(ブリーチ)\r\nBrīchi', 'Tite Kubo', 685, 366, 'Ichigo Kurosaki é um estudante de ensino médio incomum desde pequeno, ele consegue ver fantasmas. Sua vida muda completamente quando ele e suas duas irmãs são atacados por um espírito maligno e recebem ajuda de uma shinigami, chamada Rukia Kuchiki.\r\n\r\n', 'IMG/Bleach.jpg'),
(7, 'Villand Saga', '(ヴィンランド・サガ) Vinrando Saga', 'Makoto Yukimura', 55, 24, 'Quando Thors é convocado para mais uma batalha, o antigo guerreiro é encurralado em uma armadilha para pagar por ter desertado tantos anos antes. Quando o plano é posto em ação, em meio a confusão, Thorfinn é feito refém e seu pai acaba morto. Thorfinn se vê obrigado a unir-se aos seus sequestradores.', 'IMG/viland_saga.jpg'),
(8, 'One Piece', '(ワンピース) Wan Pīsu', 'Eiichiro Oda', 1095, 1088, '  Monkey D. Luffy, um jovem que tem a ambição de se tornar o Rei dos Piratas – aquele que consegue todas as coisas do mundo. Para isso, ele precisa encontrar o One Piece, o tesouro lendário deixado por Gol D. Roger, o primeiro Rei da pirataria.', 'IMG/one_piece.jpg'),
(9, 'Naruto', '(ナルト) Naruto', 'Masashi Kishimato', 700, 500, 'Naruto Uzumaki, um jovem órfão habitante da Aldeia da Folha que sonha em se tornar o quinto Hokage, o maior guerreiro e governante da vila. Ao se graduar como ninja, Naruto descobre que tem um demônio raposa selado dentro de si.', 'IMG/Naruto.jpg'),
(10, 'Evangelion', 'Shin Seiki Evangerion (新世紀エヴァンゲリオン)', 'Hideaki Anno', 96, 26, 'Em um mundo pós-apocalíptico, uma organização paramilitar chamada NERV é criada para combater monstros chamados Anjos, utilizando seres gigantes chamados Unidades Evangelion (ou EVAs). Estes seres são controlados por adolescentes, recrutados pelo ano em que nasceram, quando ocorreu o Segundo Impacto.', 'IMG/evangelion.jpg'),
(11, 'HunterXHunter', '(ハンター×ハンタ) Hantā × Hantā', 'Yoshihiro Togashi', 401, 148, 'Gon Freecss é um garoto que descobre que seu pai, Ging, foi um Caçador e que, ao contrário do que Gon pensava, ele está vivo. Ao descobrir a verdade, o protagonista decide participar do teste para ser um Caçador e planeja usar as habilidades para localizar seu pai.', 'IMG/HxH.jpg'),
(12, 'Dragon Ball', '(ドラゴンボール) Doragon Bōru', 'Akira Toriyama e Takao Koyama', 519, 153, 'Dragon Ball conta a história de Son Goku, uma criança que aparentemente veio do espaço e é encontrada por um senhor de idade, Son Gohan, que o adota e o cria como neto. Com o tempo, o jovem cresce e se torna um exímio lutador de artes marciais, com força e habilidades sobre-humanas.', 'IMG/dragonball.jpg'),
(13, 'Cavaleiros(Saint Seiya)', '( 聖闘士星矢 セイントセイヤ) Seinto Seiya', 'Masami Kurumada', 46, 114, 'um órfão chamado Seiya, forçado a ir ao Santuário na Grécia para obter a Armadura de Bronze de Pégaso, uma veste usada pelos 88 guerreiros da deusa grega Athena, conhecidos como Cavaleiros. Após despertar o poder dos Cavaleiros, que é uma essência espiritual chamada de Cosmo (que se originou com o Big Bang), Seiya rapidamente se torna o Cavaleiro de Pégaso e retorna ao Japão para encontrar sua irmã mais velha, pois esta havia desaparecido no mesmo dia em que ele foi ao Santuário. Saori Kido - a neta do homem responsável por enviar os órfãos para o treinamento - fez um trato com Seiya, pedindo para que participe de um torneio chamado de Guerra Galática, onde o vencedor dentre os cavaleiros de bronze receberia a Armadura de Ouro de Sagitário. O trato era que se Seiya vencesse o torneio, Saori ajudaria na busca por sua irmã.', 'IMG/cavaleiros.jpg'),
(14, 'Tokyo Ghoul', '(東京喰種 トーキョーグール) Tōkyō Gūru', 'Sui Ishida', 143, 12, 'A história de Tokyo Ghoul gira em torno de Ken Kaneki, um estudante que mal sobrevive a um encontro mortal com Rize Kamishiro, uma mulher que se revela um ghoul; ghoul são criaturas semelhantes a humanos que caçam e devoram carne humana, com essa revelação Rize ataca Kaneki que é ferido gravemente, tentando fugir desesperadamente Rize o encurrala até que vários canos de metal caem em Rize aparentemente a matando, logo após isso Kaneki desmaia devido aos ferimentos e é levado para o hospital em estado crítico. Depois de recuperado, ele descobre que, de alguma forma, foi submetido a uma cirurgia que o transformou em meio-ghoul, e que, assim como eles, deverá consumir carne humana para poder sobreviver. Sem ninguém pra recorrer, ele é levado pelo gerente (Kuzen) de uma cafeteria chamada \"Anteiku\", onde lhe ensinam a viver como meio-humano e meio-ghoul e a interagir com a sociedade dos ghouls e as suas facções, enquanto se esforça para conviver com os humanos.', 'IMG/tokyoghoul.jpg'),
(15, 'Tokyo Revengers', ' (東京卍リベンジャーズ) Tōkyō Ribenjāzu', 'Ken Wakui', 278, 24, 'Tokyo Revengers gira em torno de Takemichi Hanagaki, um jovem de 26 anos malsucedido na vida, profissionalmente e em relações amorosas. Vive com problemas financeiros e ainda descobre que sua ex-namorada foi assassinada por uma gangue de Tóquio.', 'IMG/tokyo_revengers.jpg'),
(16, 'Jujutsu Kaisen', '(呪術廻戦) Jujutsu Kaisen', 'Gege Akutami', 236, 24, 'O adolescente Yuuji Itadori participa de um clube de ocultismo e acaba se envolvendo com um item perigoso, um dedo amaldiçoado. Para proteger seus colegas de um ataque das Maldições, ele engole o dedo e se torna o receptáculo do Rei das Maldições.', 'IMG/jujutsu.jpg'),
(17, 'Demon slayer', '(鬼滅 きめつ の 刃 やいば) Kimetsu no Yaiba', 'Koyoharu Gotouge', 205, 26, 'A história conta sobre um jovem chamado Tanjirō Kamado que ganha a vida vendendo carvão até descobrir que sua família foi massacrada por um demônio, restando apenas sua irmã, Nezuko, que foi infectada e está se tornando um oni. O protagonista, então, decide virar um caçador de demônios e buscar vingança.', 'IMG/kimetsu.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_animes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `senha`) VALUES
(1, 'marlon salvino dos pacos', 'marlone_du-creu', 'senacamericana'),
(2, 'marlon salvino dos pacos', 'marlone_du-creu', 'senacamericana'),
(3, 'leonardo pola', 'senacaluno123', 'senac123');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `animes`
--
ALTER TABLE `animes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_animes` (`id_animes`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `animes`
--
ALTER TABLE `animes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`id_animes`) REFERENCES `animes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
