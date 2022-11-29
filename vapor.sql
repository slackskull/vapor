-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 28-Nov-2022 às 23:02
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
-- Banco de dados: `vapor`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `administrador`
--

INSERT INTO `administrador` (`id`, `nome`, `cpf`, `email`, `senha`) VALUES
(9, 'Matheus barros', '42381546812', 'mdbf42@gmail.com', '$2y$10$8DtuGZByYaC6rLQKOZDNueSA4d1OsCCtv.MwXlns5SbdqLdqKST12'),
(10, 'Ruan bertin', '22255588896', 'ruan@gmail.com', '$2y$10$Cn7IzldjbgBHMWWq0ON9CeAhOap8p9Zy0HX3JWL4ZtWiOgIXNTNO6'),
(12, 'Alexandre guadagnini', '41585016870', 'xndera@gmail.com', '$2y$10$/Ca9Njx4yzqkjeRtjw0D5exr0A2A7SzGMF7t2avB.0la95XkP.3jC');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id`, `nome`) VALUES
(29, 'AÇÃO'),
(18, 'AMIZADE'),
(17, 'ARCADE'),
(15, 'AVENTURA'),
(16, 'CORRIDA'),
(19, 'ESPORTES'),
(23, 'FPS'),
(26, 'LUTA'),
(24, 'MOBA'),
(20, 'PESCARIA'),
(14, 'PUZZLE'),
(25, 'RPG'),
(21, 'SIMULADOR'),
(22, 'SUSPENSE'),
(13, 'TERROR');

-- --------------------------------------------------------

--
-- Estrutura da tabela `idioma`
--

CREATE TABLE `idioma` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `idioma`
--

INSERT INTO `idioma` (`id`, `nome`) VALUES
(2, 'Espanhol'),
(3, 'Italiano'),
(4, 'Chines'),
(5, 'Romeno'),
(6, 'Português'),
(7, 'Egipcio'),
(8, 'Alemão'),
(10, 'Ingles'),
(11, 'Japonês');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogo`
--

CREATE TABLE `jogo` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `valor` int(11) NOT NULL,
  `descricao` longtext DEFAULT NULL,
  `imagem_url` varchar(200) NOT NULL,
  `video_url` varchar(200) DEFAULT NULL,
  `data_lancamento` date NOT NULL,
  `desenvolvedora` varchar(100) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogo`
--

INSERT INTO `jogo` (`id`, `nome`, `valor`, `descricao`, `imagem_url`, `video_url`, `data_lancamento`, `desenvolvedora`, `id_categoria`) VALUES
(1, 'MINECRAFT', 29, 'Jogo Quadrado', 'https://files.tecnoblog.net/wp-content/uploads/2019/09/minecraft-001.jpg', 'https://www.youtube.com/watch?v=jMe3tdyjouM', '2022-09-09', 'Mojang', 15),
(2, 'THE LAST OF US', 30, 'Jogo de Zumbi', 'https://upload.wikimedia.org/wikipedia/pt/b/be/The_Last_of_Us_capa.png', 'https://www.youtube.com/watch?v=IpjRuuFEPMk', '2022-10-09', 'Naughty Dog', 13),
(3, 'ELDEN RING', 300, 'Jogo Maluco', 'https://files.tecnoblog.net/wp-content/uploads/2022/03/elden-ring-4-700x394.jpg', 'https://www.youtube.com/watch?v=gUPUI4NqQHc', '2022-10-13', 'FromSoftware', 14),
(4, 'VALORANT', 0, 'Jogo de Tiro e Poderzinho', 'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt3f072336e3f3ade4/63096d7be4a8c30e088e7720/Valorant_2022_E5A2_PlayVALORANT_ContentStackThumbnail_1200x625_MB01.png', 'https://www.youtube.com/watch?v=0qhHKedfvkg', '2021-05-03', 'Riot', 23),
(5, 'LEAGUE OF LEGENDS', 0, 'Jogo de Torres e Poderzinho', 'https://s2.glbimg.com/M4Df2YVeiwElmr4cqNv1J_-gVgQ=/800x0/smart/filters:strip_icc()/s.glbimg.com/po/tt2/f/original/2014/04/03/league-of-legends-10.jpg', 'https://www.youtube.com/watch?v=aR-KAldshAE', '2015-05-03', 'Riot', 24),
(7, 'THE LEGEND OF ZELDA: BREATH OF THE WILD', 300, 'Jogo do Link', 'https://cdn.pocket-lint.com/r/s/970x/assets/images/137952-games-review-the-legend-of-zelda-breath-of-the-wild-review-image1-tbvqza2wel-jpg.webp', 'https://www.youtube.com/watch?v=zw47_q9wbBE', '2017-05-03', 'Nintendo', 15),
(8, 'CUPHEAD', 40, 'Jogo das Xicrina', 'https://conteudo.imguol.com.br/c/entretenimento/fd/2022/02/23/the-cuphead-show-personagem-diabo-1645649422377_v2_900x506.jpg.webp', 'https://www.youtube.com/watch?v=NN-9SQXoi50', '2018-05-03', 'Studio MDHR', 17),
(9, 'BATTLEFIELD 4', 299, 'Melhor FPS que tem', 'https://uploads.jovemnerd.com.br/wp-content/uploads/2021/06/battlefield-4-esta-gratuito-para-pc-no-amazon-prime-gaming.jpg', 'https://www.youtube.com/watch?v=hl-VV9loYLw', '2016-05-03', 'DICE', 23),
(10, 'BATTLEFIELD 2042', 150, 'Tiro, porrada e bomba', 'https://uploads.jovemnerd.com.br/wp-content/uploads/2021/11/Battlefield-2042-review.jpg', 'https://www.youtube.com/watch?v=eiAGqqSUqQY', '2021-09-03', 'DICE', 23),
(17, 'GOD OF WAR - RAGNAROK', 236, 'Jogo de matar Deuses cuzões! ', 'https://upload.wikimedia.org/wikipedia/pt/a/a5/God_of_War_Ragnar%C3%B6k_capa.jpg', 'https://youtu.be/0N4J-7gsaGc', '2022-11-09', 'Santa Monica', 29);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogo_idioma`
--

CREATE TABLE `jogo_idioma` (
  `id` int(11) NOT NULL,
  `id_jogo` int(11) NOT NULL,
  `id_idioma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogo_idioma`
--

INSERT INTO `jogo_idioma` (`id`, `id_jogo`, `id_idioma`) VALUES
(2, 1, 2),
(3, 1, 4),
(6, 2, 3),
(8, 3, 2),
(9, 3, 3),
(12, 8, 3),
(15, 9, 2),
(27, 17, 2),
(28, 17, 10),
(29, 17, 6),
(31, 10, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogo_plataforma`
--

CREATE TABLE `jogo_plataforma` (
  `id` int(11) NOT NULL,
  `id_jogo` int(11) NOT NULL,
  `id_plataforma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogo_plataforma`
--

INSERT INTO `jogo_plataforma` (`id`, `id_jogo`, `id_plataforma`) VALUES
(1, 1, 1),
(4, 2, 1),
(7, 3, 1),
(10, 1, 4),
(11, 2, 4),
(12, 3, 4),
(13, 7, 8),
(14, 8, 8),
(18, 7, 7),
(19, 7, 8),
(20, 7, 1),
(21, 5, 1),
(22, 9, 1),
(26, 9, 4),
(27, 9, 5),
(28, 9, 6),
(29, 9, 7),
(30, 9, 8),
(31, 4, 1),
(42, 10, 8),
(43, 10, 7),
(47, 17, 1),
(48, 17, 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens_banco`
--

CREATE TABLE `mensagens_banco` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `assunto` varchar(20) NOT NULL,
  `mensagem` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mensagens_banco`
--

INSERT INTO `mensagens_banco` (`id`, `nome`, `email`, `assunto`, `mensagem`) VALUES
(1, 'Alexandre Guadagnini', 'xndera@gmail.com', 'elogio', 'site foda'),
(2, 'Lucas Forti', 'lucasf@gmail.com', 'sugestao', 'adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós adiciona tetris pra nós '),
(3, 'Breno Forti', 'brenof@gmail.com', 'sugestao', '=-098756!@#$%¨&*()'),
(4, 'Alexandre Guadagnini', 'xndera@gmail.com', 'Duvida', 'parcela os jogos em 48x?'),
(5, 'Douglas', 'doug@gmail.com', 'Outros', 'Aqui é Body Builder Ipsum PORRA! Boraaa, Hora do Show Porra. Vo derrubar tudo essas árvore do parque ibirapuera. Sai filho da puta! Bora caralho, você quer ver essa porra velho. AHHHHHHHHHHHHHHHHHHHHHH..., porra! Tá comigo porra.\r\n\r\n Não vai dá não. Boraaa, Hora do Show Porra. Eu quero esse 13 daqui a pouquinho aí. É 13 porra! Boraaa, Hora do Show Porra. Vo derrubar tudo essas árvore do parque ibirapuera. Eita porra!, tá saindo da jaula o monstro!\r\n\r\n Eu quero esse 13 daqui a pouquinho aí. Eu quero esse 13 daqui a pouquinho aí. Sabe o que é isso daí? Trapézio descendente é o nome disso aí. Birl! Eita porra!, tá saindo da jaula o monstro!\r\n\r\n Bora caralho, você quer ver essa porra velho. Vamo monstro! Aqui é bodybuilder porra! Ajuda o maluco que tá doente. Vem porra! Eita porra!, tá saindo da jaula o monstro! Sai de casa comi pra caralho porra.\r\n\r\n Ele tá olhando pra gente. Sai filho da puta! Vo derrubar tudo essas árvore do parque ibirapuera. É nóis caraio é trapezera buscando caraio!\r\n\r\n Ó o homem ali porra!, é 13 porra! Vem porra! Ele tá olhando pra gente. Vai subir árvore é o caralho porra! Vo derrubar tudo essas árvore do parque ibirapuera.\r\n\r\n Sabe o que é isso daí? Trapézio descendente é o nome disso aí. Aqui nóis constrói fibra, não é água com músculo.\r\n\r\n Aqui é Body Builder Ipsum PORRA! É nóis caraio é trapezera buscando caraio! Não vai dá não. Aqui nóis constrói fibra, não é água com músculo. Ele tá olhando pra gente.\r\n\r\n Não vai dá não. É esse que a gente quer, é ele que nóis vamo buscar.\r\n\r\n Boraaa, Hora do Show Porra. É verão o ano todo vem cumpadi. Ele tá olhando pra gente. Vai subir árvore é o caralho porra!\r\n\r\n'),
(6, 'doug', 'ksaks@gmail.com', 'Sugestao', ' '),
(7, 'Alexandre Guadagnini', 'xndera@gmail.com', 'Sugestao', 'adiciona jogo da cobrinha ai'),
(8, 'Lucas Forti', 'lucasf@gmail.com', 'Critica', 'o God of War nao esta funcionando'),
(9, 'Alexandre', 'ale@gmail.com', 'Sugestao', 'oi'),
(10, 'Alexandre', 'xnd@gmail.com', 'Critica', 'budega de site'),
(11, 'Matheus de Barros', 'matheusb@gmail.com', 'Critica', 'site bosta'),
(12, 'Mauricio', 'maumau@gmail.com', 'Elogio', 'Aqui é Body Builder Ipsum PORRA! AHHHHHHHHHHHHHHHHHHHHHH..., porra! Vo derrubar tudo essas árvore do parque ibirapuera. É 37 anos caralho! Negativa Bambam negativa. Sai filho da puta! Aqui nóis constrói fibra, não é água com músculo.\r\n\r\n Aqui é Body Builder Ipsum PORRA! Sai de casa comi pra caralho porra. Vai subir árvore é o caralho porra! Ó o homem ali porra!, é 13 porra!\r\n\r\n Vamo monstro! É 13 porra! Birl! É esse que a gente quer, é ele que nóis vamo buscar. Que não vai dá rapaiz, não vai dá essa porra. Boraaa, Hora do Show Porra.\r\n\r\n Boraaa, Hora do Show Porra. Aqui nóis constrói fibra, não é água com músculo.\r\n\r\n Bora caralho, você quer ver essa porra velho. Sai filho da puta! Não vai dá não.\r\n\r\n Sai de casa comi pra caralho porra. Sai filho da puta! Não vai dá não. Aqui nóis constrói fibra, não é água com músculo. Sai filho da puta!\r\n\r\n Negativa Bambam negativa. Boraaa, Hora do Show Porra. Sai filho da puta! Que não vai dá rapaiz, não vai dá essa porra. Ajuda o maluco que tá doente. Não vai dá não. Tá comigo porra. Aqui é Body Builder Ipsum PORRA!\r\n\r\n Ó o homem ali porra!, é 13 porra! É verão o ano todo vem cumpadi. Vem porra!\r\n\r\n Aqui é bodybuilder porra! Negativa Bambam negativa. Sabe o que é isso daí? Trapézio descendente é o nome disso aí.\r\n\r\n Ó o homem ali porra!, é 13 porra! Negativa Bambam negativa. Bora caralho, você quer ver essa porra velho. Eita porra!, tá saindo da jaula o monstro!\r\n\r\n Ó o homem ali porra!, é 13 porra! Sai de casa comi pra caralho porra. Vo derrubar tudo essas árvore do parque ibirapuera. É 37 anos caralho! Ele tá olhando pra gente. Que não vai dá rapaiz, não vai dá essa porra.\r\n\r\n Vo derrubar tudo essas árvore do parque ibirapuera. Aqui nóis constrói fibra, não é água com músculo. Boraaa, Hora do Show Porra. Vai subir árvore é o caralho porra!\r\n\r\n Sabe o que é isso daí? Trapézio descendente é o nome disso aí. Tá comigo porra.\r\n\r\n Ele tá olhando pra gente. É verão o ano todo vem cumpadi. Aqui nóis constrói fibra, não é água com músculo.\r\n\r\n Boraaa, Hora do Show Porra. Não vai dá não. Sai de casa comi pra caralho porra. Sai filho da puta! É 13 porra! Eu quero esse 13 daqui a pouquinho aí.\r\n\r\n Ó o homem ali porra!, é 13 porra! Eita porra!, tá saindo da jaula o monstro! Tá comigo porra. Eu quero esse 13 daqui a pouquinho aí. É 37 anos caralho! Sabe o que é isso daí? Trapézio descendente é o nome disso aí.\r\n\r\n Sai de casa comi pra caralho porra. Ele tá olhando pra gente. Sabe o que é isso daí? Trapézio descendente é o nome disso aí. Eu quero esse 13 daqui a pouquinho aí. É 37 anos caralho! Eu quero esse 13 daqui a pouquinho aí.\r\n\r\n Bora caralho, você quer ver essa porra velho. É nóis caraio é trapezera buscando caraio! É verão o ano todo vem cumpadi. Ajuda o maluco que tá doente.\r\n\r\n Vo derrubar tudo essas árvore do parque ibirapuera. Negativa Bambam negativa. Aqui nóis constrói fibra, não é água com músculo. Sai de casa comi pra caralho porra. Sabe o que é isso daí? Trapézio descendente é o nome disso aí.\r\n\r\n Bora caralho, você quer ver essa porra velho. Negativa Bambam negativa. Vem porra! Aqui é bodybuilder porra! Aqui é bodybuilder porra! Sai de casa comi pra caralho porra. Tá comigo porra. Aqui nóis constrói fibra, não é água com músculo.\r\n\r\n Aqui é Body Builder Ipsum PORRA! Vem porra! Vo derrubar tudo essas árvore do parque ibirapuera. Sabe o que é isso daí? Trapézio descendente é o nome disso aí. Sabe o que é isso daí? Trapézio descendente é o nome disso aí.\r\n\r\n AHHHHHHHHHHHHHHHHHHHHHH..., porra! É nóis caraio é trapezera buscando caraio! É 37 anos caralho!\r\n\r\n Sai filho da puta! Ó o homem ali porra!, é 13 porra! É verão o ano todo vem cumpadi. Sai filho da puta! É esse que a gente quer, é ele que nóis vamo buscar.\r\n\r\n Tá comigo porra. Vo derrubar tudo essas árvore do parque ibirapuera. Não vai dá não. Aqui nóis constrói fibra, não é água com músculo. É 13 porra! Sabe o que é isso daí? Trapézio descendente é o nome disso aí.\r\n\r\n Sabe o que é isso daí? Trapézio descendente é o nome disso aí. É 37 anos caralho! Vem porra! Aqui é Body Builder Ipsum PORRA! Boraaa, Hora do Show Porra.\r\n\r\n Bora caralho, você quer ver essa porra velho. Aqui é bodybuilder porra! Eita porra!, tá saindo da jaula o monstro! Não vai dá não. Eu quero esse 13 daqui a pouquinho aí.\r\n\r\n Aqui nóis constrói fibra, não é água com músculo. Sabe o que é isso daí? Trapézio descendente é o nome disso aí.\r\n\r\n Boraaa, Hora do Show Porra. Ajuda o maluco que tá doente. Boraaa, Hora do Show Porra.\r\n\r\n Vamo monstro! Eita porra!, tá saindo da jaula o monstro! Birl! Aqui nóis constrói fibra, não é água com músculo. Vamo monstro! Aqui nóis constrói fibra, não é água com músculo.\r\n\r\n É 13 porra! Tá comigo porra. Ajuda o maluco que tá doente. Ó o homem ali porra!, é 13 porra! Negativa Bambam negativa. Eu quero esse 13 daqui a pouquinho aí.\r\n\r\n Vamo monstro! É nóis caraio é trapezera buscando caraio! Sai de casa comi pra caralho porra. Ele tá olhando pra gente. É 37 anos caralho! Vai subir árvore é o caralho porra!\r\n\r\n Birl! É 13 porra! Aqui nóis constrói fibra, não é água com músculo. Birl! Sabe o que é isso daí? Trapézio descendente é o nome disso aí. Vem porra!\r\n\r\n Aqui é bodybuilder porra! Ó o homem ali porra!, é 13 porra! Vo derrubar tudo essas árvore do parque ibirapuera. AHHHHHHHHHHHHHHHHHHHHHH..., porra! Aqui é bodybuilder porra! AHHHHHHHHHHHHHHHHHHHHHH..., porra! É 37 anos caralho! Sabe o que é isso daí? Trapézio descendente é o nome disso aí.\r\n\r\n É nóis caraio é trapezera buscando caraio! Vo derrubar tudo essas árvore do parque ibirapuera. Ele tá olhando pra gente. Vamo monstro! Eita porra!, tá saindo da jaula o monstro!\r\n\r\n É verão o ano todo vem cumpadi. Não vai dá não. Aqui nóis constrói fibra, não é água com músculo.\r\n\r\n Sabe o que é isso daí? Trapézio descendente é o nome disso aí. Sai de casa comi pra caralho porra.\r\n\r\n AHHHHHHHHHHHHHHHHHHHHHH..., porra! É 37 anos caralho! É nóis caraio é trapezera buscando caraio! Sai filho da puta! Vamo monstro! Eita porra!, tá saindo da jaula o monstro! Sabe o que é isso daí? Trapézio descendente é o nome disso aí.\r\n\r\n Tá comigo porra. Bora caralho, você quer ver essa porra velho. Vem porra! Birl! É esse que a gente quer, é ele que nóis vamo buscar.\r\n\r\n Ajuda o maluco que tá doente. AHHHHHHHHHHHHHHHHHHHHHH..., porra! Ó o homem ali porra!, é 13 porra! Tá comigo porra. É 13 porra! É esse que a gente quer, é ele que nóis vamo buscar.\r\n\r\n Birl! Eu quero esse 13 daqui a pouquinho aí. Bora caralho, você quer ver essa porra velho. Vamo monstro! Ajuda o maluco que tá doente. Aqui nóis constrói fibra, não é água com músculo.\r\n\r\n Sabe o que é isso daí? Trapézio descendente é o nome disso aí. Birl! AHHHHHHHHHHHHHHHHHHHHHH..., porra! Bora caralho, você quer ver essa porra velho.\r\n\r\n Tá comigo porra. Tá comigo porra. Vai subir árvore é o caralho porra!\r\n\r\n É nóis caraio é trapezera buscando caraio! Vo derrubar tudo essas árvore do parque ibirapuera. É 37 anos caralho! Aqui é bodybuilder porra! Vamo monstro! Boraaa, Hora do Show Porra. Eita porra!, tá saindo da jaula o monstro!\r\n\r\n Não vai dá não. Que não vai dá rapaiz, não vai dá essa porra. Negativa Bambam negativa. É 37 anos caralho! É verão o ano todo vem cumpadi. Sai filho da puta!\r\n\r\n Ajuda o maluco que tá doente. Vamo monstro! Ele tá olhando pra gente. Eita porra!, tá saindo da jaula o monstro! Aqui é Body Builder Ipsum PORRA! É esse que a gente quer, é ele que nóis vamo buscar.\r\n\r\n Sabe o que é isso daí? Trapézio descendente é o nome disso aí. É verão o ano todo vem cumpadi. É 37 anos caralho! Boraaa, Hora do Show Porra.\r\n\r\n Boraaa, Hora do Show Porra. Ó o homem ali porra!, é 13 porra! Não vai dá não. Sabe o que é isso daí? Trapézio descendente é o nome disso aí. Que não vai dá rapaiz, não vai dá essa porra.\r\n\r\n Ó o homem ali porra!, é 13 porra! Ele tá olhando pra gente. Aqui é Body Builder Ipsum PORRA! Sai filho da puta!\r\n\r\n Tá comigo porra. Ó o homem ali porra!, é 13 porra! É esse que a gente quer, é ele que nóis vamo buscar.\r\n\r\n Vamo monstro! Tá comigo porra. Ele tá olhando pra gente. Aqui é Body Builder Ipsum PORRA!\r\n'),
(13, 'hacker', 'hacker@mail.com', 'Elogio', '\r\n \r\n'),
(14, 'ale', 'ale@mail.com', 'Critica', 'Eiiitaaa Mainhaaa!! Esse Lorem ipsum é só na sacanageeem!! E que abundância meu irmão viuu!! Assim você vai matar o papai. Só digo uma coisa, Domingo ela não vai! Danadaa!! Vem minha odalisca, agora faz essa cobra coral subir!!! Pau que nasce torto, Nunca se endireita. Tchannn!! Tchannn!! Tu du du pááá! Eu gostchu muitchu, heinn! danadinha! Mainhaa! Agora use meu lorem ipsum ordinária!!! Olha o quibeee! rema, rema, ordinária!.\r\n \r\nVocê usa o Lorem Ipsum tradicional? Sabe de nada inocente!! Conheça meu lorem que é Tchan, Tchan, Tchannn!! Txu Txu Tu Paaaaa!! Vem, vem ordinária!! Venha provar do meu dendê que você não vai se arrepender. Só na sacanageeem!! Eu gostchu muitchu, heinn! Eitchaaa template cheio de abundância danadaaa!! Assim você mata o papai hein!? Etâaaa Mainhaaaaa...me abusa nesse seu layout, me gera, me geraaaa ordinária!!! Só na sacanagem!!!! Venha provar do meu dendê Tu du du pááá!.\r\n \r\nMas que abundância meu irmãooo!!! Esse é seu Layout danadaaa!??? Sabe de nada inocente!! Vem, vem, vem ordinária, provar do meu dendê!! Eu gostxuu muitxuu desse seu Layout!! Etâ danadaaaa!! Tá tão lindo que vou falar em inglês só pra você mainhaaa!! Know nothing innocent. Ordinary!! Txhann Txhann, Txu txu tu paaa!! Damned. Only in Slutty!! Abundance that my borther!! Tchan, Tchan, Tchan...Tu tu tu pa!!!!  .\r\n \r\nChama, Chama, Chama ordinária!!!! Tu du du pááá! rema, rema, ordinária! olha o quibe! eu gostchu muitchu, heinn! ordinária!! Domingo ela não vai. Tchannn!! Tchannn!! danadinha! Mainhaa! Eiiitaaa Mainhaaa!! Assim você mata o papai , viuu!! Danadaa!! Vem, vem ordinária!! Ahh mainhaa!! venha provar do meu dendê. Só na sacanageeem!! Sabe de nada inocente! que abundânciaaaa meu irmão!! Pau que nasce torto, Nunca se endireita....\r\n \r\nVem minha odalisca, agora faz essa cobra coral subir!!! que abundânciaaaa meu irmão!! Sabe de nada inocente! Só na sacanageeem!! venha provar do meu dendê. Ahh mainhaa!! Vem, vem ordinária!! Danadaa!! Assim você mata o papai , viuu!! Eiiitaaa Mainhaaa!! danadinha! Mainhaa! Tchannn!! Tchannn!! Domingo ela não vai. Sunday she won\'t go!! ordinária!! eu gostchu muitchu, heinn! olha o quibe! rema, rema, ordinária! Tu du du pááá!.\r\n \r\nAgora sim Mainhaaa!!! Me preencha nesse seu layout danadaaa!! Etâaaa mainhaaa!! danadaaa! Tu tu tu paa!!! Mas que abundância meu irmãooo!!! Esse é seu Layout danadaaa!??? Sabe de nada inocente!! Vem, vem, vem ordinária, provar do meu dendê!! Eu gostxuu muitxuu desse seu Layout!! Assim você mata o papai , viuu!! Eiiitaaa Mainhaaa!! danadinha! Mainhaa! Tchannn!! Tchannn!! Domingo ela não vai. Sunday she won\'t go!! ordinária!! .\r\n \r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens_site`
--

CREATE TABLE `mensagens_site` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `assunto` varchar(20) NOT NULL,
  `mensagem` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mensagens_site`
--

INSERT INTO `mensagens_site` (`id`, `nome`, `email`, `assunto`, `mensagem`) VALUES
(11, 'Matheus de Barros', 'matheusb@gmail.com', 'Critica', 'site bosta'),
(12, 'Mauricio', 'maumau@gmail.com', 'Elogio', 'Aqui é Body Builder Ipsum PORRA! AHHHHHHHHHHHHHHHHHHHHHH..., porra! Vo derrubar tudo essas árvore do parque ibirapuera. É 37 anos caralho! Negativa Bambam negativa. Sai filho da puta! Aqui nóis constrói fibra, não é água com músculo.\r\n\r\n Aqui é Body Builder Ipsum PORRA! Sai de casa comi pra caralho porra. Vai subir árvore é o caralho porra! Ó o homem ali porra!, é 13 porra!\r\n\r\n Vamo monstro! É 13 porra! Birl! É esse que a gente quer, é ele que nóis vamo buscar. Que não vai dá rapaiz, não vai dá essa porra. Boraaa, Hora do Show Porra.\r\n\r\n Boraaa, Hora do Show Porra. Aqui nóis constrói fibra, não é água com músculo.\r\n\r\n Bora caralho, você quer ver essa porra velho. Sai filho da puta! Não vai dá não.\r\n\r\n Sai de casa comi pra caralho porra. Sai filho da puta! Não vai dá não. Aqui nóis constrói fibra, não é água com músculo. Sai filho da puta!\r\n\r\n Negativa Bambam negativa. Boraaa, Hora do Show Porra. Sai filho da puta! Que não vai dá rapaiz, não vai dá essa porra. Ajuda o maluco que tá doente. Não vai dá não. Tá comigo porra. Aqui é Body Builder Ipsum PORRA!\r\n\r\n Ó o homem ali porra!, é 13 porra! É verão o ano todo vem cumpadi. Vem porra!\r\n\r\n Aqui é bodybuilder porra! Negativa Bambam negativa. Sabe o que é isso daí? Trapézio descendente é o nome disso aí.\r\n\r\n Ó o homem ali porra!, é 13 porra! Negativa Bambam negativa. Bora caralho, você quer ver essa porra velho. Eita porra!, tá saindo da jaula o monstro!\r\n\r\n Ó o homem ali porra!, é 13 porra! Sai de casa comi pra caralho porra. Vo derrubar tudo essas árvore do parque ibirapuera. É 37 anos caralho! Ele tá olhando pra gente. Que não vai dá rapaiz, não vai dá essa porra.\r\n\r\n Vo derrubar tudo essas árvore do parque ibirapuera. Aqui nóis constrói fibra, não é água com músculo. Boraaa, Hora do Show Porra. Vai subir árvore é o caralho porra!\r\n\r\n Sabe o que é isso daí? Trapézio descendente é o nome disso aí. Tá comigo porra.\r\n\r\n Ele tá olhando pra gente. É verão o ano todo vem cumpadi. Aqui nóis constrói fibra, não é água com músculo.\r\n\r\n Boraaa, Hora do Show Porra. Não vai dá não. Sai de casa comi pra caralho porra. Sai filho da puta! É 13 porra! Eu quero esse 13 daqui a pouquinho aí.\r\n\r\n Ó o homem ali porra!, é 13 porra! Eita porra!, tá saindo da jaula o monstro! Tá comigo porra. Eu quero esse 13 daqui a pouquinho aí. É 37 anos caralho! Sabe o que é isso daí? Trapézio descendente é o nome disso aí.\r\n\r\n Sai de casa comi pra caralho porra. Ele tá olhando pra gente. Sabe o que é isso daí? Trapézio descendente é o nome disso aí. Eu quero esse 13 daqui a pouquinho aí. É 37 anos caralho! Eu quero esse 13 daqui a pouquinho aí.\r\n\r\n Bora caralho, você quer ver essa porra velho. É nóis caraio é trapezera buscando caraio! É verão o ano todo vem cumpadi. Ajuda o maluco que tá doente.\r\n\r\n Vo derrubar tudo essas árvore do parque ibirapuera. Negativa Bambam negativa. Aqui nóis constrói fibra, não é água com músculo. Sai de casa comi pra caralho porra. Sabe o que é isso daí? Trapézio descendente é o nome disso aí.\r\n\r\n Bora caralho, você quer ver essa porra velho. Negativa Bambam negativa. Vem porra! Aqui é bodybuilder porra! Aqui é bodybuilder porra! Sai de casa comi pra caralho porra. Tá comigo porra. Aqui nóis constrói fibra, não é água com músculo.\r\n\r\n Aqui é Body Builder Ipsum PORRA! Vem porra! Vo derrubar tudo essas árvore do parque ibirapuera. Sabe o que é isso daí? Trapézio descendente é o nome disso aí. Sabe o que é isso daí? Trapézio descendente é o nome disso aí.\r\n\r\n AHHHHHHHHHHHHHHHHHHHHHH..., porra! É nóis caraio é trapezera buscando caraio! É 37 anos caralho!\r\n\r\n Sai filho da puta! Ó o homem ali porra!, é 13 porra! É verão o ano todo vem cumpadi. Sai filho da puta! É esse que a gente quer, é ele que nóis vamo buscar.\r\n\r\n Tá comigo porra. Vo derrubar tudo essas árvore do parque ibirapuera. Não vai dá não. Aqui nóis constrói fibra, não é água com músculo. É 13 porra! Sabe o que é isso daí? Trapézio descendente é o nome disso aí.\r\n\r\n Sabe o que é isso daí? Trapézio descendente é o nome disso aí. É 37 anos caralho! Vem porra! Aqui é Body Builder Ipsum PORRA! Boraaa, Hora do Show Porra.\r\n\r\n Bora caralho, você quer ver essa porra velho. Aqui é bodybuilder porra! Eita porra!, tá saindo da jaula o monstro! Não vai dá não. Eu quero esse 13 daqui a pouquinho aí.\r\n\r\n Aqui nóis constrói fibra, não é água com músculo. Sabe o que é isso daí? Trapézio descendente é o nome disso aí.\r\n\r\n Boraaa, Hora do Show Porra. Ajuda o maluco que tá doente. Boraaa, Hora do Show Porra.\r\n\r\n Vamo monstro! Eita porra!, tá saindo da jaula o monstro! Birl! Aqui nóis constrói fibra, não é água com músculo. Vamo monstro! Aqui nóis constrói fibra, não é água com músculo.\r\n\r\n É 13 porra! Tá comigo porra. Ajuda o maluco que tá doente. Ó o homem ali porra!, é 13 porra! Negativa Bambam negativa. Eu quero esse 13 daqui a pouquinho aí.\r\n\r\n Vamo monstro! É nóis caraio é trapezera buscando caraio! Sai de casa comi pra caralho porra. Ele tá olhando pra gente. É 37 anos caralho! Vai subir árvore é o caralho porra!\r\n\r\n Birl! É 13 porra! Aqui nóis constrói fibra, não é água com músculo. Birl! Sabe o que é isso daí? Trapézio descendente é o nome disso aí. Vem porra!\r\n\r\n Aqui é bodybuilder porra! Ó o homem ali porra!, é 13 porra! Vo derrubar tudo essas árvore do parque ibirapuera. AHHHHHHHHHHHHHHHHHHHHHH..., porra! Aqui é bodybuilder porra! AHHHHHHHHHHHHHHHHHHHHHH..., porra! É 37 anos caralho! Sabe o que é isso daí? Trapézio descendente é o nome disso aí.\r\n\r\n É nóis caraio é trapezera buscando caraio! Vo derrubar tudo essas árvore do parque ibirapuera. Ele tá olhando pra gente. Vamo monstro! Eita porra!, tá saindo da jaula o monstro!\r\n\r\n É verão o ano todo vem cumpadi. Não vai dá não. Aqui nóis constrói fibra, não é água com músculo.\r\n\r\n Sabe o que é isso daí? Trapézio descendente é o nome disso aí. Sai de casa comi pra caralho porra.\r\n\r\n AHHHHHHHHHHHHHHHHHHHHHH..., porra! É 37 anos caralho! É nóis caraio é trapezera buscando caraio! Sai filho da puta! Vamo monstro! Eita porra!, tá saindo da jaula o monstro! Sabe o que é isso daí? Trapézio descendente é o nome disso aí.\r\n\r\n Tá comigo porra. Bora caralho, você quer ver essa porra velho. Vem porra! Birl! É esse que a gente quer, é ele que nóis vamo buscar.\r\n\r\n Ajuda o maluco que tá doente. AHHHHHHHHHHHHHHHHHHHHHH..., porra! Ó o homem ali porra!, é 13 porra! Tá comigo porra. É 13 porra! É esse que a gente quer, é ele que nóis vamo buscar.\r\n\r\n Birl! Eu quero esse 13 daqui a pouquinho aí. Bora caralho, você quer ver essa porra velho. Vamo monstro! Ajuda o maluco que tá doente. Aqui nóis constrói fibra, não é água com músculo.\r\n\r\n Sabe o que é isso daí? Trapézio descendente é o nome disso aí. Birl! AHHHHHHHHHHHHHHHHHHHHHH..., porra! Bora caralho, você quer ver essa porra velho.\r\n\r\n Tá comigo porra. Tá comigo porra. Vai subir árvore é o caralho porra!\r\n\r\n É nóis caraio é trapezera buscando caraio! Vo derrubar tudo essas árvore do parque ibirapuera. É 37 anos caralho! Aqui é bodybuilder porra! Vamo monstro! Boraaa, Hora do Show Porra. Eita porra!, tá saindo da jaula o monstro!\r\n\r\n Não vai dá não. Que não vai dá rapaiz, não vai dá essa porra. Negativa Bambam negativa. É 37 anos caralho! É verão o ano todo vem cumpadi. Sai filho da puta!\r\n\r\n Ajuda o maluco que tá doente. Vamo monstro! Ele tá olhando pra gente. Eita porra!, tá saindo da jaula o monstro! Aqui é Body Builder Ipsum PORRA! É esse que a gente quer, é ele que nóis vamo buscar.\r\n\r\n Sabe o que é isso daí? Trapézio descendente é o nome disso aí. É verão o ano todo vem cumpadi. É 37 anos caralho! Boraaa, Hora do Show Porra.\r\n\r\n Boraaa, Hora do Show Porra. Ó o homem ali porra!, é 13 porra! Não vai dá não. Sabe o que é isso daí? Trapézio descendente é o nome disso aí. Que não vai dá rapaiz, não vai dá essa porra.\r\n\r\n Ó o homem ali porra!, é 13 porra! Ele tá olhando pra gente. Aqui é Body Builder Ipsum PORRA! Sai filho da puta!\r\n\r\n Tá comigo porra. Ó o homem ali porra!, é 13 porra! É esse que a gente quer, é ele que nóis vamo buscar.\r\n\r\n Vamo monstro! Tá comigo porra. Ele tá olhando pra gente. Aqui é Body Builder Ipsum PORRA!\r\n'),
(14, 'ale', 'ale@mail.com', 'Critica', 'Eiiitaaa Mainhaaa!! Esse Lorem ipsum é só na sacanageeem!! E que abundância meu irmão viuu!! Assim você vai matar o papai. Só digo uma coisa, Domingo ela não vai! Danadaa!! Vem minha odalisca, agora faz essa cobra coral subir!!! Pau que nasce torto, Nunca se endireita. Tchannn!! Tchannn!! Tu du du pááá! Eu gostchu muitchu, heinn! danadinha! Mainhaa! Agora use meu lorem ipsum ordinária!!! Olha o quibeee! rema, rema, ordinária!.\r\n \r\nVocê usa o Lorem Ipsum tradicional? Sabe de nada inocente!! Conheça meu lorem que é Tchan, Tchan, Tchannn!! Txu Txu Tu Paaaaa!! Vem, vem ordinária!! Venha provar do meu dendê que você não vai se arrepender. Só na sacanageeem!! Eu gostchu muitchu, heinn! Eitchaaa template cheio de abundância danadaaa!! Assim você mata o papai hein!? Etâaaa Mainhaaaaa...me abusa nesse seu layout, me gera, me geraaaa ordinária!!! Só na sacanagem!!!! Venha provar do meu dendê Tu du du pááá!.\r\n \r\nMas que abundância meu irmãooo!!! Esse é seu Layout danadaaa!??? Sabe de nada inocente!! Vem, vem, vem ordinária, provar do meu dendê!! Eu gostxuu muitxuu desse seu Layout!! Etâ danadaaaa!! Tá tão lindo que vou falar em inglês só pra você mainhaaa!! Know nothing innocent. Ordinary!! Txhann Txhann, Txu txu tu paaa!! Damned. Only in Slutty!! Abundance that my borther!! Tchan, Tchan, Tchan...Tu tu tu pa!!!!  .\r\n \r\nChama, Chama, Chama ordinária!!!! Tu du du pááá! rema, rema, ordinária! olha o quibe! eu gostchu muitchu, heinn! ordinária!! Domingo ela não vai. Tchannn!! Tchannn!! danadinha! Mainhaa! Eiiitaaa Mainhaaa!! Assim você mata o papai , viuu!! Danadaa!! Vem, vem ordinária!! Ahh mainhaa!! venha provar do meu dendê. Só na sacanageeem!! Sabe de nada inocente! que abundânciaaaa meu irmão!! Pau que nasce torto, Nunca se endireita....\r\n \r\nVem minha odalisca, agora faz essa cobra coral subir!!! que abundânciaaaa meu irmão!! Sabe de nada inocente! Só na sacanageeem!! venha provar do meu dendê. Ahh mainhaa!! Vem, vem ordinária!! Danadaa!! Assim você mata o papai , viuu!! Eiiitaaa Mainhaaa!! danadinha! Mainhaa! Tchannn!! Tchannn!! Domingo ela não vai. Sunday she won\'t go!! ordinária!! eu gostchu muitchu, heinn! olha o quibe! rema, rema, ordinária! Tu du du pááá!.\r\n \r\nAgora sim Mainhaaa!!! Me preencha nesse seu layout danadaaa!! Etâaaa mainhaaa!! danadaaa! Tu tu tu paa!!! Mas que abundância meu irmãooo!!! Esse é seu Layout danadaaa!??? Sabe de nada inocente!! Vem, vem, vem ordinária, provar do meu dendê!! Eu gostxuu muitxuu desse seu Layout!! Assim você mata o papai , viuu!! Eiiitaaa Mainhaaa!! danadinha! Mainhaa! Tchannn!! Tchannn!! Domingo ela não vai. Sunday she won\'t go!! ordinária!! .\r\n \r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `plataforma`
--

CREATE TABLE `plataforma` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `plataforma`
--

INSERT INTO `plataforma` (`id`, `nome`) VALUES
(8, 'Nintendo Switch'),
(7, 'Nintendo Wii'),
(1, 'PC'),
(4, 'Playstation 4'),
(12, 'Playstation 5'),
(5, 'Xbox 360'),
(6, 'Xbox One');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Índices para tabela `jogo`
--
ALTER TABLE `jogo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `nome` (`nome`),
  ADD UNIQUE KEY `imagem_url` (`imagem_url`),
  ADD UNIQUE KEY `video_url` (`video_url`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Índices para tabela `jogo_idioma`
--
ALTER TABLE `jogo_idioma`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_jogo` (`id_jogo`),
  ADD KEY `id_idioma` (`id_idioma`);

--
-- Índices para tabela `jogo_plataforma`
--
ALTER TABLE `jogo_plataforma`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_jogo` (`id_jogo`),
  ADD KEY `id_plataforma` (`id_plataforma`);

--
-- Índices para tabela `mensagens_banco`
--
ALTER TABLE `mensagens_banco`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mensagens_site`
--
ALTER TABLE `mensagens_site`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `plataforma`
--
ALTER TABLE `plataforma`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `idioma`
--
ALTER TABLE `idioma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `jogo`
--
ALTER TABLE `jogo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `jogo_idioma`
--
ALTER TABLE `jogo_idioma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `jogo_plataforma`
--
ALTER TABLE `jogo_plataforma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de tabela `mensagens_banco`
--
ALTER TABLE `mensagens_banco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `mensagens_site`
--
ALTER TABLE `mensagens_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `plataforma`
--
ALTER TABLE `plataforma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `jogo`
--
ALTER TABLE `jogo`
  ADD CONSTRAINT `jogo_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`);

--
-- Limitadores para a tabela `jogo_idioma`
--
ALTER TABLE `jogo_idioma`
  ADD CONSTRAINT `jogo_idioma_ibfk_1` FOREIGN KEY (`id_jogo`) REFERENCES `jogo` (`id`),
  ADD CONSTRAINT `jogo_idioma_ibfk_2` FOREIGN KEY (`id_idioma`) REFERENCES `idioma` (`id`);

--
-- Limitadores para a tabela `jogo_plataforma`
--
ALTER TABLE `jogo_plataforma`
  ADD CONSTRAINT `jogo_plataforma_ibfk_1` FOREIGN KEY (`id_jogo`) REFERENCES `jogo` (`id`),
  ADD CONSTRAINT `jogo_plataforma_ibfk_2` FOREIGN KEY (`id_plataforma`) REFERENCES `plataforma` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
