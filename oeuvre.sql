-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 15 fév. 2024 à 18:32
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `artbox`
--

-- --------------------------------------------------------

--
-- Structure de la table `oeuvre`
--

CREATE TABLE `oeuvre` (
  `Id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `artist` varchar(50) DEFAULT NULL,
  `image` varchar(2048) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `oeuvre`
--

INSERT INTO `oeuvre` (`Id`, `title`, `artist`, `image`, `description`) VALUES
(1, 'Dodomu', 'Mia Tozerski', 'img/clark-van-der-beken.png', 'Mia Tozerski est une artiste peintre ukrainienne r&eacute;fugi&eacute;e de la guerre. Sur cette &oelig;uvre, Dodomu (&quot;domicile&quot; en ukrainien), elle nous montre la tristesse du peuple ukrainien qu&#039;elle partage, ayant elle-m&ecirc;me d&ucirc; quitter son foyer. L&#039;&oelig;uvre &eacute;voque le drapeau liqu&eacute;fi&eacute; d&#039;une Ukraine en souffrance, pleurant la mort de ses compatriotes. Ce travail charg&eacute; d&#039;&eacute;motion est le symbole d&#039;un &eacute;v&eacute;nement qui marquera l&#039;Histoire. Cette peinture &agrave; l&#039;acrylique rayonne gr&acirc;ce &agrave; son fond lisse et ses m&eacute;langes de couleurs &eacute;clatantes.'),
(2, 'Aashaaheen Baadal', 'Anaisha Devi', 'img/pawel-czerwinski-3.png', 'Sur cette oeuvre conceptuelle &agrave; la fois organique, min&eacute;rale et liquide, Anaisha Devi nous transporte dans un nuage noir envo&ucirc;tant. Un sombre tableau qui, par son verni &eacute;clatant, rayonne tel un marbre poli. Une oeuvre &agrave; la coh&eacute;rence transcendantale, ex&eacute;cut&eacute;e &agrave; la perfection'),
(3, 'Nightlife Traffic', 'Andrew Forsythe', 'img/dan-cristian-padure.png', 'Quisque accumsan ultrices ligula vestibulum posuere. Aliquam feugiat ligula eget massa blandit condimentum. Morbi volutpat erat luctus suscipit pellentesque. Quisque cursus tempor nibh at sollicitudin. Sed blandit libero velit. Etiam tincidunt facilisis mollis. Ut mollis nunc sit amet lacinia luctus. Suspendisse volutpat enim semper arcu rutrum, et iaculis risus interdum. Duis at libero.'),
(4, 'Le refuge de l&#039;Havre', 'Simon Pelletier', 'img/steve-johnson-5.png', 'Nam tempus neque nec felis venenatis auctor. Nam velit risus, lobortis eu quam non, interdum efficitur nibh. Phasellus a augue ac orci lacinia mattis et vel lectus. Sed nec tellus urna. Donec at turpis turpis. Cras quam tellus, imperdiet vitae finibus id, varius quis felis. Maecenas blandit eleifend risus, vel hendrerit erat dignissim id. Nullam at laoreet nibh. Nulla gravida varius sollicitudin. Etiam non aliquam diam, tempor varius sapien. Aenean et velit eu nisi lobortis massa nunc.'),
(5, 'Red Washover', 'Kit Van Der Borght', 'img/steve-johnson.png', 'Nunc euismod ullamcorper tortor, id efficitur ante interdum in. Integer eu condimentum nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras viverra suscipit feugiat. Mauris vehicula luctus tellus, eu hendrerit libero laoreet ut. In tristique vehicula nisl in tempus. Morbi tempus aliquet gravida. In eget est congue, rhoncus sapien at, cursus metus.'),
(6, 'Chromatics', 'Jean-Michel Delatronchette', 'img/pawel-czerwinski.png', 'Vivamus commodo non libero at hendrerit. In lacinia dui sit amet pellentesque iaculis. Donec at ultricies sem porttitor.'),
(7, 'Digital Negative', 'Hamish McKee', 'img/jazmin-quaynor.png', 'Integer in nisl posuere, pulvinar ex ac, tincidunt risus. Nullam vel lorem et leo dignissim accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tempor, magna non consectetur dapibus, est libero iaculis lacus, eget semper turpis orci vitae felis. Fusce eget molestie.'),
(8, 'Blast from the past', 'Juliette Baskerville', 'img/steve-johnson-6.png', 'Nunc fermentum purus dapibus justo fermentum auctor. Maecenas non tincidunt leo. Morbi vitae iaculis sem. Donec quis scelerisque massa. Fusce quis accumsan diam, et interdum lectus. Suspendisse mattis pulvinar vehicula. Duis nisi.'),
(9, 'Hurricane', 'Natalie Wellington', 'img/victor-grabarczyk.png', 'Aliquam tristique tempus molestie. Nulla nisl eros, dapibus eu lectus in, cursus accumsan arcu. Suspendisse bibendum diam dignissim porta maximus. Praesent sollicitudin consectetur faucibus. Cras pulvinar massa a orci rutrum, id blandit enim viverra. Praesent sed congue augue. Suspendisse efficitur, nisl quis finibus faucibus, lacus felis bibendum leo, eu euismod lacus mauris in felis. Quisque dignissim et dui et aliquet. Donec ut lobortis eros, vitae tincidunt augue metus.'),
(10, 'La mar&eacute;e rouge', 'Martin Rodriguez', 'img/pawel-czerwinski-2.png', 'Vivamus quis odio vel ligula feugiat facilisis. Donec eleifend pellentesque massa, ut malesuada est bibendum sit amet. Morbi tincidunt nec tellus vel ornare. Mauris dolor tellus, gravida eget euismod eu, viverra eget urna. Phasellus feugiat ipsum nec lorem accumsan, sed porta quam dictum massa nunc.'),
(11, 'Asimilacion', 'Angel Sanchez-Fernandez', 'img/steve-johnson-2.png', 'Mauris ut justo ac mi pretium eleifend. Curabitur sed magna ut elit facilisis pharetra. Maecenas tincidunt fermentum ipsum ut sollicitudin. Nullam feugiat, neque vel egestas sollicitudin, quam leo mattis mauris, in lacinia sem mi id risus. Nullam ultrices quam eu leo auctor tempus. Fusce vestibulum mi ex, vel ultricies purus mollis sollicitudin. Aenean ac vehicula ipsum. Nam turpis ante, ultrices eget odio sed, luctus bibendum mauris sodales sed.'),
(12, 'La Galaxia Gialla', 'Eduardo Tancredi', 'img/fly-d.png', 'Mauris maximus, orci sollicitudin ultrices elementum, tellus neque feugiat leo, quis lobortis purus neque vel lectus. Ut sagittis eros id lectus porttitor tincidunt. Donec scelerisque diam nec felis egestas, eget finibus ante porttitor. Sed malesuada sapien ut semper accumsan. Duis tristique dui vel egestas porttitor. Nunc tristique dapibus orci a amet.'),
(13, 'Puffy Amalgamate', 'Sandro De Blasi', 'img/orfeas-green.png', 'Donec semper a massa quis congue. In malesuada lorem ligula, ut posuere magna pulvinar in. Proin vitae enim gravida, commodo odio.'),
(14, 'Mirage', 'St&eacute;phanie Kaiser', 'img/steve-johnson-4.png', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam iaculis lorem ac ex tristique egestas et nec sapien. Donec tincidunt id erat sit amet tempus. Nullam vel molestie dui. Duis a neque massa. Vivamus quis ornare lacus. Nullam eleifend condimentum egestas. Vivamus magna purus, fermentum mollis mauris sed, consectetur interdum libero. Duis interdum tortor tellus, eget sollicitudin quis.'),
(15, 'Blaue Gelbe Muster', 'Adelheid Von Schreiber', 'img/steve-johnson-3.png', 'Curabitur dui odio, porta vel tempor sed, consectetur vitae mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Orci varius natoque penatibus nec.'),
(19, 'La Grande Vague de Kanagawa', 'Katsushika Hokusai', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Tsunami_by_hokusai_19th_century.jpg/1920px-Tsunami_by_hokusai_19th_century.jpg', 'Cette estampe est l&#039;&oelig;uvre la plus connue de Hokusai et la premi&egrave;re de sa s&eacute;rie Trente-six vues du mont Fuji, dans laquelle l&#039;utilisation du bleu de Prusse renouvelait le langage de l&#039;estampe japonaise. La composition de La Vague, synth&egrave;se de l&#039;estampe japonaise traditionnelle et de la &laquo; perspective &raquo; occidentale, lui valut un succ&egrave;s imm&eacute;diat au Japon, puis en Europe, o&ugrave; elle fut une des sources d&#039;inspiration des impressionnistes. - WIKIPEDIA');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `oeuvre`
--
ALTER TABLE `oeuvre`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `oeuvre`
--
ALTER TABLE `oeuvre`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
