-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 10 jan 2022 om 20:31
-- Serverversie: 10.4.17-MariaDB
-- PHP-versie: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musix_db`
--
DROP DATABASE IF EXISTS `musix_db`;
CREATE DATABASE IF NOT EXISTS `musix_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `musix_db`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `album`
--

CREATE TABLE `album` (
  `Id` varchar(255) NOT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `album`
--

INSERT INTO `album` (`Id`, `CreationDate`, `Name`, `Image`) VALUES
('08IW6sUfN9fRYG8Xlgm4oC', '2022-01-05 16:10:56', 'Lazy Fair', 'https://i.scdn.co/image/ab67616d0000b273d67c496c586f830b6a73ea8c'),
('09Q3WwGYsQe5ognkvVkmCu', '2021-12-06 16:58:45', 'When It\'s Dark Out', 'https://i.scdn.co/image/ab67616d0000b27398acfa8c055deedc25e6081d'),
('0EomGnN4zv8AC2Zi7NL1bV', '2021-12-06 18:29:14', 'DRUGS', 'https://i.scdn.co/image/ab67616d0000b2738a72ff5c897ae0b18eb064a8'),
('0FgZKfoU2Br5sHOfvZKTI9', '2022-01-10 12:32:40', 'JESUS IS KING', 'https://i.scdn.co/image/ab67616d0000b2731bb797bbfe2480650b6c2964'),
('0fhmJYVhW0e4i33pCLPA5i', '2022-01-10 12:32:40', 'Cole World: The Sideline Story', 'https://i.scdn.co/image/ab67616d0000b27399da48a530f6ca2ef86da3cc'),
('0FSsRH1jeZqKbGcHwq3UO0', '2021-12-15 16:09:38', 'Imagination & the Misfit Kid', 'https://i.scdn.co/image/ab67616d0000b273e4c03429788f0aff263a5fc6'),
('0giyK2LuJ6wcfVN2QXDIlB', '2021-12-08 12:12:18', 'DON\'T SLEEP', 'https://i.scdn.co/image/ab67616d0000b273a1738a26c56f6f754302003c'),
('0h7Rqxud5GknQMMoLHNx80', '2022-01-05 16:10:56', 'Revenge Of The Dreamers II', 'https://i.scdn.co/image/ab67616d0000b27300dba11c081404c7d6913906'),
('0KHIH7UC8WATEByfXGfYaY', '2021-12-06 16:58:45', 'Still Be Friends (feat. Tory Lanez & Tyga)', 'https://i.scdn.co/image/ab67616d0000b2730a70f97365dec77a1a86b785'),
('0N75npNB8Wo93bY41XjHr7', '2022-01-05 16:10:56', 'Icee Pop', 'https://i.scdn.co/image/ab67616d0000b2732a393fd3499f622d56846fa8'),
('0ujHQ5WCLuKJQXOqXpGtpf', '2022-01-05 16:10:56', 'LABRINTH, SIA & DIPLO PRESENT... LSD', 'https://i.scdn.co/image/ab67616d0000b2733f159ae07dd556323f39f47b'),
('0UMMIkurRUmkruZ3KGBLtG', '2022-01-10 12:32:40', '2014 Forest Hills Drive', 'https://i.scdn.co/image/ab67616d0000b273c6e0948bbb0681ff29cdbae8'),
('0vE6mttRTBXRe9rKghyr1l', '2022-01-05 16:10:56', 'The Slim Shady LP', 'https://i.scdn.co/image/ab67616d0000b2739bef45ee387f274ea3198c55'),
('0vrKGjXSGcTsxNGxQdXT5p', '2021-12-08 12:12:18', 'AJ Tracey', 'https://i.scdn.co/image/ab67616d0000b273a61a61a007b55afc7d783fe9'),
('0VWYRbEcvJcPrqMGJirO6q', '2022-01-05 16:10:56', '#willpower (Deluxe)', 'https://i.scdn.co/image/ab67616d0000b273642efc0b3f045f34316d2cf3'),
('11Bkx3E99vf0IlYPND61LJ', '2021-12-08 12:12:18', 'Young, Wild & Free (feat. Bruno Mars)', 'https://i.scdn.co/image/ab67616d0000b2738596df2f2646ab9aba464c30'),
('1EkLZjupNkyUjcZ7aon07W', '2021-12-08 12:12:18', 'Destiny\'s Song', 'https://i.scdn.co/image/ab67616d0000b273eb0699e58e5c91b1cd2283ee'),
('1gkLMuAnI8U5z2yhyhhRQk', '2021-12-13 14:49:18', 'Us (Original Motion Picture Soundtrack)', 'https://i.scdn.co/image/ab67616d0000b273a534060dd26f19f37035a29c'),
('1HiN2YXZcc3EjmVZ4WjfBk', '2021-12-08 15:12:05', 'Everybody', 'https://i.scdn.co/image/ab67616d0000b273cfdf40cf325b609a52457805'),
('1oxxysQmylUXuxzSdHlqUc', '2021-12-15 16:09:38', 'Baby Gravy 2', 'https://i.scdn.co/image/ab67616d0000b27315f04c6e3d7c57a5a4348bca'),
('1UsmQ3bpJTyK6ygoOOjG1r', '2021-12-15 16:09:38', 'Speakerboxxx/The Love Below', 'https://i.scdn.co/image/ab67616d0000b2736a6387ab37f64034cdc7b367'),
('1VKFaHoIvkZTzsSRad2jDZ', '2021-12-15 16:09:38', 'Your Heart', 'https://i.scdn.co/image/ab67616d0000b2730ccce58d0ad92da7564800fd'),
('20r762YmB5HeofjMCiPMLv', '2022-01-10 12:32:40', 'My Beautiful Dark Twisted Fantasy', 'https://i.scdn.co/image/ab67616d0000b273d9194aa18fa4c9362b47464f'),
('270o30h7cAlEhBnbuSpFZq', '2021-12-08 12:12:18', 'El Dorado', 'https://i.scdn.co/image/ab67616d0000b27384c53fa832dfa265192419c5'),
('2bw00gRKNKbTFOqCkohbSh', '2021-12-06 18:29:13', 'Silence', 'https://i.scdn.co/image/ab67616d0000b273f33ba583059dc2f7d08bf2b8'),
('2dMzgk1yVFlOeOgZ0fC7Nt', '2021-12-15 16:09:38', 'Biggy', 'https://i.scdn.co/image/ab67616d0000b273a4fa160f5b540ce865f6c86d'),
('2DXRWlFTI8l2YvBD4iFUK8', '2021-12-08 12:12:18', 'Poke It Out (feat. J. Cole)', 'https://i.scdn.co/image/ab67616d0000b2738eafaeccd2cea429586798ea'),
('2Ek1q2haOnxVqhvVKqMvJe', '2022-01-05 16:10:56', 'ye', 'https://i.scdn.co/image/ab67616d0000b2730cd942c1a864afa4e92d04f2'),
('2kAqjStKcwlDD59H0llhGC', '2022-01-05 16:10:56', 'Shang-Chi and The Legend of The Ten Rings: The Album', 'https://i.scdn.co/image/ab67616d0000b2735843d11205f6dd6a2ab5f967'),
('2n3quCZ0anEa46j2IveacI', '2021-12-15 16:09:38', 'Revenge Of The Dreamers III', 'https://i.scdn.co/image/ab67616d0000b273c0ae820e3b64854de4642101'),
('2pFX16u42q0e5F5vRmmzYT', '2022-01-05 16:10:56', 'The Heist (Deluxe Edition)', 'https://i.scdn.co/image/ab67616d0000b273938f1c0cc7d36a671ed226a7'),
('2QgPGKzoN51qcEzGlHYk7j', '2021-12-15 16:09:38', 'Seize the Power', 'https://i.scdn.co/image/ab67616d0000b27338debe8dc40c62d7c593bed2'),
('2qLI9pIjubUQMlpdmid2sE', '2021-12-06 16:58:45', 'An Evening With Silk Sonic', 'https://i.scdn.co/image/ab67616d0000b273bd5010fd3868c08323bf6d41'),
('2QT5OxkgbFNpZXVJDEmssK', '2022-01-05 16:10:56', 'All Over The Place (Deluxe)', 'https://i.scdn.co/image/ab67616d0000b2732310b70888c02f8a807b80c5'),
('2Ti79nwTsont5ZHfdxIzAm', '2021-12-08 12:12:18', '?', 'https://i.scdn.co/image/ab67616d0000b273806c160566580d6335d1f16c'),
('2ZmDoyNYarmubD4vTfwh6g', '2022-01-05 16:10:56', 'ALL-AMERIKKKAN BADA$$', 'https://i.scdn.co/image/ab67616d0000b2733c7596dccb2aaca39e0cee3d'),
('39xhYyNNDatQtgKw2KdXMz', '2021-12-08 12:12:18', 'THE GOAT', 'https://i.scdn.co/image/ab67616d0000b273339f780dfdbc38558ea0761d'),
('3CCnGldVQ90c26aFATC1PW', '2022-01-10 12:32:40', '4 Your Eyez Only', 'https://i.scdn.co/image/ab67616d0000b273f4ca75192df162f78a24023e'),
('3cQO7jp5S9qLBoIVtbkSM1', '2021-12-08 12:12:18', 'Blurryface', 'https://i.scdn.co/image/ab67616d0000b273de03bfc2991fd5bcfde65ba3'),
('3erY5XSpTKh0GfNf5FJuT2', '2022-01-05 16:10:56', 'Evolution', 'https://i.scdn.co/image/ab67616d0000b273953123ac7505d0945553732f'),
('3fc97ZWLIMc1xawhxbKrh2', '2021-12-06 16:58:45', 'East Atlanta Love Letter', 'https://i.scdn.co/image/ab67616d0000b273e1530b42603367fdb2208d88'),
('3fi4zQJmsXI2Hw2pl89aTh', '2021-12-13 14:49:18', 'Now and Later', 'https://i.scdn.co/image/ab67616d0000b27382d22e1d83fc1045ad33444a'),
('3GU8BzFEAdFSRjc8jZkL3S', '2021-12-15 16:09:38', 'La La Land (Original Motion Picture Soundtrack)', 'https://i.scdn.co/image/ab67616d0000b2730bdf4dd39843ad48c5b66bc4'),
('3k1lFVPUbpxngCtvkB9JkA', '2022-01-05 16:10:56', 'Bad Day', 'https://i.scdn.co/image/ab67616d0000b273eaeb36403b9acd9001b6f827'),
('3lajefIuUk4SfzqVBSJy8p', '2022-01-05 16:10:56', 'Good For You', 'https://i.scdn.co/image/ab67616d0000b27360282020360f5048976275aa'),
('3LnC7gpHMt8XCxHO3TXCDp', '2021-12-15 16:09:38', 'Trap Jack 2', 'https://i.scdn.co/image/ab67616d0000b273e06d3c56b9c58b3a8b5402a7'),
('3mhZHDmHvIUAeAYH7MrXBW', '2022-01-05 16:10:56', 'Genesis', 'https://i.scdn.co/image/ab67616d0000b273085d6629aaaf7baa283d5c7d'),
('3OSeqyUWmkngEhQTTkdTSA', '2022-01-05 16:10:56', 'The Mountain Will Fall', 'https://i.scdn.co/image/ab67616d0000b2730b345678ef9735630f459341'),
('3p81zUBFZ3zdzxceXKeVSK', '2021-12-06 18:51:47', 'Magic In The Hamptons (feat. Lil Yachty)', 'https://i.scdn.co/image/ab67616d0000b273013314e9861a2c4a796b2176'),
('3r46DPIQeBQbjvjjV5mXGg', '2022-01-06 23:15:49', 'The Melodic Blue', 'https://i.scdn.co/image/ab67616d0000b2731bfa23b13d0504fb90c37b39'),
('3WFTGIO6E3Xh4paEOBY9OU', '2022-01-05 16:10:56', '808s & Heartbreak', 'https://i.scdn.co/image/ab67616d0000b273346d77e155d854735410ed18'),
('3WgAFg6y9jmNYLdC4xzHBF', '2022-01-05 16:10:56', 'All Over The Place (Platinum VIP Edition)', 'https://i.scdn.co/image/ab67616d0000b273a931e451af18a162c5fb59b8'),
('3xNkswNSrzwSAIb6qleRrA', '2022-01-05 16:10:56', 'Beautiful Girls', 'https://i.scdn.co/image/ab67616d0000b273938af0df95f45ce2d59c2d04'),
('3XzSOIE6zGLliuqsVGLmUc', '2021-12-08 12:12:18', 'MIDDLE CHILD', 'https://i.scdn.co/image/ab67616d0000b2737f37a4001ae7d8be430bd91b'),
('3YjfdLdpQcVI72uKhooZst', '2021-12-06 19:00:15', 'F*CK LOVE (SAVAGE)', 'https://i.scdn.co/image/ab67616d0000b273df16d539f508603bfb1efe02'),
('46xdC4Qcvscfs3Ai2RIHcv', '2021-12-06 18:29:14', 'The Search', 'https://i.scdn.co/image/ab67616d0000b273942a0c9ac8f1def7c8805044'),
('48ahZJLcagb8VTgRAuv6WQ', '2021-12-15 16:09:38', 'Ramen & OJ', 'https://i.scdn.co/image/ab67616d0000b2734fd8e64469ff9dd01faf50fe'),
('4eLPsYPBmXABThSJ821sqY', '2021-12-13 14:49:17', 'DAMN.', 'https://i.scdn.co/image/ab67616d0000b2738b52c6b9bc4e43d873869699'),
('4eXvekh89BNV24q87vjzGp', '2021-12-15 16:09:38', 'Are You Ready?', 'https://i.scdn.co/image/ab67616d0000b273f18370f43f2bb5f066a604e5'),
('4Fhgi0Jr4OpapEwNNSHhdK', '2022-01-05 16:10:56', 'Lighter (feat. KSI)', 'https://i.scdn.co/image/ab67616d0000b2735ea1f461a1b5a752013803e6'),
('4gaNWHu5Caj3ItkYZ5i6uh', '2021-12-06 16:58:45', 'In Colour', 'https://i.scdn.co/image/ab67616d0000b2736aa1dfa0a98baa542251df5a'),
('4JAvwK4APPArjIsOdGoJXX', '2022-01-10 19:23:24', 'The Off-Season', 'https://i.scdn.co/image/ab67616d0000b27310e6745bb2f179dd3616b85f'),
('4MZnolldq7ciKKlbVDzLm5', '2021-12-13 14:49:18', 'Meet The Woo 2', 'https://i.scdn.co/image/ab67616d0000b27362a57823eced1cb4fd93b2c1'),
('4otkd9As6YaxxEkIjXPiZ6', '2022-01-05 16:10:56', 'Music To Be Murdered By', 'https://i.scdn.co/image/ab67616d0000b2732f44aec83b20e40f3baef73c'),
('4Qe057XqKloVNhnPohj6Yo', '2021-12-15 16:09:38', 'Pirates of the Caribbean: The Curse of the Black Pearl (Original Motion Picture Soundtrack)', 'https://i.scdn.co/image/ab67616d0000b27338786c7492ac252797bb2648'),
('4Wb5bU9FkmZ84WkkL37rKA', '2022-01-05 16:10:56', 'I\'m Gone', 'https://i.scdn.co/image/ab67616d0000b27316f00890f319eaccf4dd1570'),
('4WlC4FXhonJhNTXCQPGP3r', '2021-12-06 16:58:45', 'Lalala', 'https://i.scdn.co/image/ab67616d0000b2738a6ccb507dd6a66f7f6e2440'),
('4Wv5UAieM1LDEYVq5WmqDd', '2021-12-06 19:00:15', 'KOD', 'https://i.scdn.co/image/ab67616d0000b273cf0f0affd0138a7442f13706'),
('50yFYgKdwJANZ5O9MIbMkg', '2021-12-15 16:09:38', 'Tha Carter V', 'https://i.scdn.co/image/ab67616d0000b2732cfcc913c36f0e1776f4bb65'),
('571KrRXa9nqtOUJQQOXeIz', '2021-12-15 16:09:38', 'Lesley', 'https://i.scdn.co/image/ab67616d0000b273faff2775e09d367194a2afef'),
('5FP9keIJnlSCKnkdVOf623', '2022-01-10 12:32:40', 'Born Sinner (Deluxe Version)', 'https://i.scdn.co/image/ab67616d0000b273c1bb124f993488cf21b269fc'),
('5g2INX6dnMIJG0xKygXwF3', '2022-01-06 23:15:49', 'Thats What They All Say', 'https://i.scdn.co/image/ab67616d0000b273aeb14ead136118a987246b63'),
('5IHJygOAlKSo0ESGxsEhgB', '2021-12-15 16:09:38', 'Professor X', 'https://i.scdn.co/image/ab67616d0000b273390f440a8eba0a7054cfd350'),
('5ll74bqtkcXlKE7wwkMq4g', '2021-12-08 12:12:18', 'Late Registration', 'https://i.scdn.co/image/ab67616d0000b273428d2255141c2119409a31b2'),
('5MirZPdM7d3AxK2ydiHeuB', '2022-01-05 16:10:56', 'Drew Barrymore EP', 'https://i.scdn.co/image/ab67616d0000b27364d51350615279b9ca2dd597'),
('5rOHrnrRomvSJhQLGVtfJ8', '2021-12-08 12:12:18', 'Suicide Squad: The Album', 'https://i.scdn.co/image/ab67616d0000b273cb4ec52c48a6b071ed2ab6bc'),
('5uR0dqBMYWZFYJT7mvPZ82', '2022-01-05 16:10:56', 'The Lady Killer (Deluxe)', 'https://i.scdn.co/image/ab67616d0000b2731c44d79c994c1a26aa387617'),
('5VdyJkLe3yvOs0l4xXbWp0', '2021-12-15 16:09:38', '17', 'https://i.scdn.co/image/ab67616d0000b273203c89bd4391468eea4cc3f5'),
('5vN3lm8mcpQ9IoQ3Xutrkw', '2021-12-15 16:09:38', 'Cigarettes On Patios', 'https://i.scdn.co/image/ab67616d0000b273d5d77ef5ffd80806d25ab50c'),
('5VSqSiMz865dFXnhhj2fgj', '2022-01-05 16:10:56', 'Can\'t Let You Go (feat. Nick Grant)', 'https://i.scdn.co/image/ab67616d0000b2737b5cdd312cbec887d99ef15d'),
('622NFw5Yk0OReMJ2XWcXUh', '2021-12-06 18:51:47', 'INDUSTRY BABY (feat. Jack Harlow)', 'https://i.scdn.co/image/ab67616d0000b273ba26678947112dff3c3158bf'),
('66OYt73mqan1hWa78BhfPd', '2021-12-06 16:58:45', 'LALISA', 'https://i.scdn.co/image/ab67616d0000b273330f11fb125bb80b760f9e19'),
('6bPbKuFNW6Vausf1PExvd9', '2022-01-06 23:15:49', 'Follow Me Home', 'https://i.scdn.co/image/ab67616d0000b27343b788780e13ee12867dd9ca'),
('6eDx949ONWDCN0O22wFZf7', '2021-12-08 12:12:18', 'SremmLife', 'https://i.scdn.co/image/ab67616d0000b2734ca3fb4517ff722918877460'),
('6Pb7PMZtW0fuEM1lCGvCDu', '2021-12-15 16:09:38', 'The Lost Boy', 'https://i.scdn.co/image/ab67616d0000b273e6d6d392a66a7f9172fe57c8'),
('6pOiDiuDQqrmo5DbG0ZubR', '2021-12-06 18:29:14', 'MONTERO', 'https://i.scdn.co/image/ab67616d0000b273be82673b5f79d9658ec0a9fd'),
('6s84u2TUpR3wdUv4NgKA2j', '2021-12-06 16:58:45', 'SOUR', 'https://i.scdn.co/image/ab67616d0000b273a91c10fe9472d9bd89802e5a'),
('6t7956yu5zYf5A829XRiHC', '2021-12-06 16:58:45', 'The Marshall Mathers LP', 'https://i.scdn.co/image/ab67616d0000b273dbb3dd82da45b7d7f31b1b42'),
('6tkjU4Umpo79wwkgPMV3nZ', '2021-12-15 16:09:38', 'Goodbye & Good Riddance', 'https://i.scdn.co/image/ab67616d0000b273f7db43292a6a99b21b51d5b4'),
('6trNtQUgC8cgbWcqoMYkOR', '2021-12-06 18:29:14', 'beerbongs & bentleys', 'https://i.scdn.co/image/ab67616d0000b273b1c4b76e23414c9f20242268'),
('6Vr72HwhlNxaj22qlFNPQT', '2022-01-05 16:10:56', 'Halfway Off the Porch', 'https://i.scdn.co/image/ab67616d0000b2739f9093e0700bedd8fe7880f9'),
('6VsJamdhvYKcnpwHAKULI0', '2022-01-05 16:10:56', 'Monkey Business', 'https://i.scdn.co/image/ab67616d0000b273c6710b4a52539506c30e5354'),
('704GHNtZhEe9TBgleCNNGv', '2021-12-06 17:29:58', 'Sucker for Pain (with Logic & Ty Dolla $ign feat. X Ambassadors)', 'https://i.scdn.co/image/ab67616d0000b2737d8dfcfd507069d7f2062caf'),
('748dZDqSZy6aPXKcI9H80u', '2022-01-10 12:32:40', 'good kid, m.A.A.d city (Deluxe)', 'https://i.scdn.co/image/ab67616d0000b27378de8b28de36a74afc0348b5'),
('788r22Bhr3IHLTNPy8pZea', '2022-01-05 16:10:56', 'Euphoria (Original Score from the HBO Series)', 'https://i.scdn.co/image/ab67616d0000b27389c39ba1acdf33ed7acd3867'),
('79l9IyqcIEzuZQA5ANHTti', '2021-12-13 14:49:18', 'Troubadour (Edited Version)', 'https://i.scdn.co/image/ab67616d0000b27366ec341c90a69fe51ffc067e'),
('7AaqMMiYMvnMB3RcS8u3EY', '2022-01-06 23:15:49', 'Sweet Action', 'https://i.scdn.co/image/ab67616d0000b27305a448540b069450ccfba889'),
('7D2NdGvBHIavgLhmcwhluK', '2021-12-06 17:10:04', 'Yeezus', 'https://i.scdn.co/image/ab67616d0000b2731dacfbc31cc873d132958af9'),
('7e7t0MCrNDcJZsPwUKjmOc', '2021-12-15 16:09:37', 'Shoot For The Stars Aim For The Moon', 'https://i.scdn.co/image/ab67616d0000b27377ada0863603903f57b34369'),
('7eLwoxxWs6lfkVYJGkGNbk', '2021-12-06 16:58:45', 'Wild Ones', 'https://i.scdn.co/image/ab67616d0000b273871d85943145dde548f4ae09'),
('7Et3bSTLLqdABO1qCxUplS', '2021-12-08 12:12:18', 'Oxymoron (Deluxe)', 'https://i.scdn.co/image/ab67616d0000b27336977e237a8f70ec6c990636'),
('7gsWAHLeT0w7es6FofOXk1', '2022-01-05 16:10:56', 'The Life Of Pablo', 'https://i.scdn.co/image/ab67616d0000b2732a7db835b912dc5014bd37f4'),
('7KSf6p0G0mZd7j60etVTwT', '2022-01-05 16:10:56', 'Hall of Fame', 'https://i.scdn.co/image/ab67616d0000b273a493e05c99d8ec5e8020ff2b'),
('7qtQYJc0H6s3CK4c7Gp8GR', '2021-12-06 16:58:45', 'Party Rock', 'https://i.scdn.co/image/ab67616d0000b2736a0f2bf4749bddc11f4ba8dc'),
('7viNUmZZ8ztn2UB4XB3jIL', '2022-01-05 16:10:56', '2014 Forest Hills Drive', 'https://i.scdn.co/image/ab67616d0000b2736aca031ccc27d2e4dd829d14'),
('7xfcihbsBamUi6sezd0oOG', '2021-12-06 17:12:58', 'Confetti', 'https://i.scdn.co/image/ab67616d0000b27357c38b379fbaa7bfef03934d'),
('7ycBtnsMtyVbbwTfJwRjSP', '2021-12-06 18:04:40', 'To Pimp A Butterfly', 'https://i.scdn.co/image/ab67616d0000b273cdb645498cd3d8a2db4d05e1');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `artist`
--

CREATE TABLE `artist` (
  `Id` varchar(255) NOT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `artist`
--

INSERT INTO `artist` (`Id`, `CreationDate`, `Name`, `Image`) VALUES
('02kJSzxNuaWGqwubyUba0Z', '2021-12-06 16:58:45', 'G-Eazy', 'https://i.scdn.co/image/ab6761610000e5ebe818f7ca0d47f038a9aa246a'),
('03GruNQP8X25PCoWzdvIGZ', '2021-12-15 16:09:38', 'Klaus Badelt', 'https://i.scdn.co/image/dfb330ecd4910c9b1ac443a5e2bbbdf3ca64a4b4'),
('07Asx51VtMw5kbNXKrpZlq', '2021-12-15 16:09:38', 'BabyJake', 'https://i.scdn.co/image/ab6761610000e5eb92ed14ee6c714cd442c1fa69'),
('07d5etnpjriczFBB8pxmRe', '2021-12-08 12:12:18', 'BJ The Chicago Kid', 'https://i.scdn.co/image/ab6761610000e5eb9e8aff3467b8389440c34eb2'),
('085pc2PYOi8bGKj0PNjekA', '2022-01-05 16:10:56', 'will.i.am', 'https://i.scdn.co/image/ab6761610000e5ebc9ab8da6f7a3ce02f0b16fd8'),
('0c173mlxpT3dSFRgMO8XPh', '2022-01-06 23:15:49', 'Big Sean', 'https://i.scdn.co/image/ab6761610000e5eb89dccc0a0b3d818c8d5fb711'),
('0cGUm45nv7Z6M6qdXYQGTX', '2021-12-08 12:12:18', 'Kehlani', 'https://i.scdn.co/image/ab6761610000e5ebaeb74d9e5dba9c422cb27893'),
('0du5cEVh5yTK9QJze8zA0C', '2021-12-08 12:12:18', 'Bruno Mars', 'https://i.scdn.co/image/ab6761610000e5ebc36dd9eb55fb0db4911f25dd'),
('0eDvMgVFoNV3TpwtrVCoTj', '2021-12-15 16:09:37', 'Pop Smoke', 'https://i.scdn.co/image/ab6761610000e5eb597f9edd2cd1a892d4412b09'),
('0fA0VVWsXO9YnASrzqfmYu', '2022-01-10 12:32:40', 'Kid Cudi', 'https://i.scdn.co/image/ab6761610000e5eb876faa285687786c3d314ae0'),
('0hCNtLu0JehylgoiP8L4Gh', '2022-01-10 12:32:40', 'Nicki Minaj', 'https://i.scdn.co/image/ab6761610000e5ebaf3459f7c235fd25daf7f84f'),
('0huGjMyP507tBCARyzSkrv', '2021-12-15 16:09:38', 'Cordae', 'https://i.scdn.co/image/ab6761610000e5ebb48da9ad7cf2e6874ef65a8d'),
('0jnsk9HBra6NMjO2oANoPY', '2021-12-06 16:58:45', 'Flo Rida', 'https://i.scdn.co/image/ab6761610000e5eb655ca8f3196953554b479452'),
('0ONHkAv9pCAFxb0zJwDNTy', '2022-01-10 12:32:40', 'Pusha T', 'https://i.scdn.co/image/ab6761610000e5ebec1ef18acc64e5c645c4754c'),
('0qpRQJnULShIWFKhcW5pce', '2021-12-15 16:09:38', 'Joey Trap', 'https://i.scdn.co/image/ab6761610000e5ebe0fc7036392e26fa3dc9aa6a'),
('137W8MRPWKqSmrBGDBFSop', '2021-12-08 12:12:18', 'Wiz Khalifa', 'https://i.scdn.co/image/ab6761610000e5eb4bdf6db5203f2a0e44002620'),
('15UsOTVnJzReFVN1VCnxy4', '2021-12-15 16:09:38', 'XXXTENTACION', 'https://i.scdn.co/image/3cffe518fd2708f1bd803e19e8f14c64f46cb958'),
('18HVMQsV3tINaTyzT5UIjH', '2022-01-10 12:32:40', 'CyHi The Prynce', 'https://i.scdn.co/image/ab6761610000e5eb78695640eeb2842ac730059b'),
('1G9G7WwrXka3Z1r7aIDjI7', '2021-12-15 16:09:38', 'Outkast', 'https://i.scdn.co/image/ab6761610000e5eb0cb3f95b9f8f7337e135a925'),
('1iNqsUDUraNWrj00bqssQG', '2022-01-05 16:10:56', 'Dreamville', 'https://i.scdn.co/image/ab6761610000e5eb080d11275f15655a11b2610d'),
('1McMsnEElThX1knmY4oliG', '2021-12-06 16:58:45', 'Olivia Rodrigo', 'https://i.scdn.co/image/ab6761610000e5eb8885ead433869bbbe56dd2da'),
('1nzgtKYFckznkcVMR3Gg4z', '2022-01-05 16:10:56', 'KSI', 'https://i.scdn.co/image/ab6761610000e5ebcb4ae963f0c01900f3e17712'),
('1sBkRIssrMs1AbVkOJbc7a', '2022-01-10 12:32:40', 'Rick Ross', 'https://i.scdn.co/image/ab6761610000e5eb8196a8109c28a8b8aca28fae'),
('1ShZZUjkbXCjhwrb18BA8I', '2022-01-05 16:10:56', 'Bryce Vine', 'https://i.scdn.co/image/ab6761610000e5ebdf328c8382718bfe7284e1d1'),
('1tG7s7S4sq2eFFW0QZyLbm', '2021-12-08 12:12:18', 'Sheff G', 'https://i.scdn.co/image/ab6761610000e5eb39c3fc9094ea5fe5af32bd9f'),
('1URnnhqYAYcrqrcwql10ft', '2022-01-10 19:23:24', '21 Savage', 'https://i.scdn.co/image/ab6761610000e5ebe01decbaa565f3feaaade6a9'),
('1XkoF8ryArs86LZvFOkbyr', '2022-01-10 12:32:40', 'Mary J. Blige', 'https://i.scdn.co/image/ab6761610000e5eb78bab79cad33c1a22fadb6b7'),
('1XlLhtgJjC4ROQZilBZAvw', '2022-01-05 16:10:56', 'Nic D', 'https://i.scdn.co/image/ab6761610000e5eb01e091b29721a6258f0e1f52'),
('1yxSLGMDHlW21z4YXirZDS', '2022-01-05 16:10:56', 'Black Eyed Peas', 'https://i.scdn.co/image/ab6761610000e5eb26b00ac49e5fc94a222b953f'),
('22KyrgRdE2K6aB5wtZls3c', '2022-01-05 16:10:56', 'AG Club', 'https://i.scdn.co/image/ab6761610000e5ebc60b228c4e579969394f47e3'),
('246dkjvS1zLTtiykXe5h60', '2021-12-06 18:29:14', 'Post Malone', 'https://i.scdn.co/image/ab6761610000e5ebe07d6b0f2fcc2f2ba6bdc3ce'),
('28ExwzUQsvgJooOI0X1mr3', '2022-01-06 23:15:49', 'Jay Rock', 'https://i.scdn.co/image/ab6761610000e5eb02012f4390f3c8e7424766a3'),
('2cADQgiLMjNhbsfeN52Bf3', '2022-01-10 12:32:40', 'Swizz Beatz', 'https://i.scdn.co/image/ab6761610000e5ebaab238968309b88b14407cbd'),
('2EMAnMvWE2eb56ToJVfCWs', '2021-12-06 17:12:58', 'Bryson Tiller', 'https://i.scdn.co/image/ab6761610000e5eb078fdd734b7f0aa782328428'),
('2feDdbD5araYcm6JhFHHw7', '2022-01-05 16:10:56', 'Labrinth', 'https://i.scdn.co/image/ab6761610000e5eb72a7311386470c1fbf81734d'),
('2FT75iYuWmycqYrXbVD9cn', '2021-12-13 14:49:18', 'Michael Marshall', 'https://i.scdn.co/image/ab6761610000e5eb379ce8bcf6147ea0b0545d18'),
('2gduEC76ry33RVurAvT05p', '2022-01-05 16:10:56', 'Nathan Dawe', 'https://i.scdn.co/image/ab6761610000e5ebac593e7521a4e9c643fc7348'),
('2jku7tDXc6XoB6MO2hFuqg', '2021-12-06 16:58:45', 'Tory Lanez', 'https://i.scdn.co/image/ab6761610000e5ebbd5d3e1b363c3e26710661c3'),
('2kCO8LXN1usaOPL3iEE28I', '2021-12-06 18:29:14', 'Tai Verdes', 'https://i.scdn.co/image/ab6761610000e5eb35b90b506b567848f9f8c061'),
('2LIk90788K0zvyj2JJVwkJ', '2022-01-06 23:15:49', 'Jack Harlow', 'https://i.scdn.co/image/ab6761610000e5eba49ff61ec684c6c979c316c7'),
('2P5sC9cVZDToPxyomzF1UH', '2022-01-05 16:10:56', 'Joey Bada$$', 'https://i.scdn.co/image/ab6761610000e5ebc4ae1b2475d78faf1110c03f'),
('2PsjBHyb950JI7BHXY10TD', '2021-12-08 12:12:18', 'Cool & Dre', 'https://i.scdn.co/image/ab6761610000e5ebad9641699514b776743efd00'),
('2QOP6zKx1d0gGEtuuXOvJ3', '2022-01-05 16:10:56', 'Nick Grant', 'https://i.scdn.co/image/ab6761610000e5ebb7de1a1728221f14c7d01530'),
('2tIP7SsRs7vjIcLrU85W8J', '2022-01-05 16:10:56', 'The Kid LAROI', 'https://i.scdn.co/image/ab6761610000e5eb70783ea42c106f3f325f53af'),
('2wUjUUtkb5lvLKcGKsKqsR', '2021-12-08 15:12:05', 'Alessia Cara', 'https://i.scdn.co/image/ab6761610000e5ebe74b7398634a741f74858dc7'),
('2YOYua8FpudSEiB9s88IgQ', '2021-12-15 16:09:38', 'Yung Gravy', 'https://i.scdn.co/image/ab6761610000e5ebcf385b6b5778a421826b4083'),
('2yQf6b8hxahZaT5dHlWaB1', '2022-01-10 12:32:40', 'Raekwon', 'https://i.scdn.co/image/03463cee551c78964f76b0067307fba60982129e'),
('2YZyLoL8N0Wb9xBt1NhZWg', '2022-01-10 12:32:40', 'Kendrick Lamar', 'https://i.scdn.co/image/ab6761610000e5eb2183ea958d3777d4c485138a'),
('33r8rPgsHXfVN1r3adlrWw', '2021-12-15 16:09:38', 'Papithbk', 'https://i.scdn.co/image/ab6761610000e5eb36da54912f6f1c852cf4158b'),
('360IAlyVv4PCEVjgyMZrxK', '2022-01-10 12:32:40', 'Miguel', 'https://i.scdn.co/image/ab6761610000e5eb02eeb5305fa7bdd9ddca42fc'),
('3Gm5F95VdRxW3mqCn8RPBJ', '2022-01-05 16:10:56', 'Aminé', 'https://i.scdn.co/image/ab6761610000e5eb1f98760ed5b47b21eaf56e8f'),
('3hcs9uc56yIGFCSy9leWe7', '2022-01-05 16:10:56', 'Lil Durk', 'https://i.scdn.co/image/ab6761610000e5eb6a61d3a33451c301dbb8edb3'),
('3JhNCzhSMTxs9WLGJJxWOY', '2022-01-05 16:10:56', 'Macklemore', 'https://i.scdn.co/image/ab6761610000e5eb57df9bb5680b96f5b4811fc2'),
('3jK9MiCrA42lLAdMGUZpwa', '2022-01-05 16:10:56', 'Anderson .Paak', 'https://i.scdn.co/image/ab6761610000e5eb96287bd47570ff13f0c01496'),
('3nFkdlSjzX9mRTtwJOzDYB', '2022-01-10 12:32:40', 'JAY-Z', 'https://i.scdn.co/image/ab6761610000e5ebc75afcd5a9027f60eaebb5e4'),
('3NPpFNZtSTHheNBaWC82rB', '2021-12-06 17:29:58', 'X Ambassadors', 'https://i.scdn.co/image/ab6761610000e5eb8f08efd0e601988cd94a3d9c'),
('3Oim8XBPbznAa8Jj8QzNc8', '2021-12-06 17:32:27', 'Cults', 'https://i.scdn.co/image/ab6761610000e5eb88de15721477978bbde27f89'),
('3sgFRtyBnxXD5ESfmbK4dl', '2021-12-06 16:58:45', 'LMFAO', 'https://i.scdn.co/image/2d75f5222d8a92d5e12419ae3e5238261f943df6'),
('3Wcyta3gkOdQ4TfY0WyZpu', '2021-12-15 16:09:38', 'YONAKA', 'https://i.scdn.co/image/ab6761610000e5eb6ec6d640fc946557b068d71f'),
('3YQKmKGau1PzlVlkL1iodx', '2021-12-08 12:12:18', 'Twenty One Pilots', 'https://i.scdn.co/image/ab6761610000e5eb196972172c37d934d9ca8093'),
('3z3g65U7mmyyBmmDfsQK9x', '2021-12-13 14:49:18', 'Luniz', 'https://i.scdn.co/image/ab67616d0000b273c1ea4aac1ad07a38c59dd30c'),
('41X1TR6hrK8Q2ZCpp2EqCz', '2021-12-15 16:09:38', 'bbno$', 'https://i.scdn.co/image/ab6761610000e5eb6bca811e558018074bbc1b05'),
('44vREmJC0OlVZjZaGLqVEd', '2022-01-10 19:23:24', 'Morray', 'https://i.scdn.co/image/ab6761610000e5eb4c02fa4c81c2088c5954451e'),
('4dVRITwfej74WkmNpgYVPb', '2021-12-13 14:49:18', 'Chubb Rock', 'https://i.scdn.co/image/ab67616d0000b2733c9af5206ae98a9968df82ab'),
('4iCwCMnqsNZ6atvRiADgtn', '2022-01-10 12:32:40', 'RZA', 'https://i.scdn.co/image/ab6761610000e5eb3b91f4bea46061b1069532e0'),
('4IVAbR2w4JJNJDDRFP3E83', '2022-01-10 19:23:24', '6LACK', 'https://i.scdn.co/image/ab6761610000e5eb7a528fcb316c5b58d6be0511'),
('4LEiUm1SRbFMgfqnQTwUbQ', '2022-01-10 12:32:40', 'Bon Iver', 'https://i.scdn.co/image/ab6761610000e5eb67be065df01f37a3880216be'),
('4MCBfE4596Uoi2O4DtmEMz', '2022-01-05 16:10:56', 'Juice WRLD', 'https://i.scdn.co/image/ab6761610000e5eb1908e1a8b79abf71d5598944'),
('4myTppRgh0rojLxx8RycOp', '2022-01-05 16:10:56', 'Ryan Lewis', 'https://i.scdn.co/image/ab6761610000e5eb6396e61aab044c5d655f115c'),
('4PcesEvU9iICf7dwNt5B3l', '2022-01-05 16:10:56', 'Justus Bennetts', 'https://i.scdn.co/image/ab6761610000e5eb49209b7fc17b0d4ec79bd682'),
('4RnBFZRiMLRyZy0AzzTg2C', '2022-01-05 16:10:56', 'Run The Jewels', 'https://i.scdn.co/image/ab6761610000e5ebea5eda58996c7f08d423d522'),
('4vpGVGgxSDcCTmqYbsOnsn', '2021-12-06 17:32:27', 'Amber Coffman', 'https://i.scdn.co/image/7874553c74ad974d3f53ba779b089168a4681359'),
('4Xi6LSfFqv26XgP9NKN26U', '2021-12-08 12:12:18', 'AJ Tracey', 'https://i.scdn.co/image/ab6761610000e5ebe6abb3f6a94e65798db7d73c'),
('4xRYI6VqpkE3UwrDrAZL8L', '2021-12-08 15:12:05', 'Logic', 'https://i.scdn.co/image/ab6761610000e5ebc0f43abdba90d508842d7367'),
('50co4Is1HCEo8bhOyUWKpn', '2021-12-06 16:58:45', 'Young Thug', 'https://i.scdn.co/image/ab6761610000e5eb547d2b41c9f2c97318aad0ed'),
('53XhwfbYqKCa1cC15pYq2q', '2021-12-06 17:29:58', 'Imagine Dragons', 'https://i.scdn.co/image/ab6761610000e5eb920dc1f617550de8388f368e'),
('55Aa2cqylxrFIXC767Z865', '2022-01-05 16:10:56', 'Lil Wayne', 'https://i.scdn.co/image/ab6761610000e5ebc63aded6f4bf4d06d1377106'),
('56xTxG4nQMAs1GW9kvn0uA', '2022-01-05 16:10:56', 'Wanz', 'https://i.scdn.co/image/ab6761610000e5ebbe66dac44b672c98fa4dda32'),
('5BcAKTbp20cv7tC5VqPFoC', '2022-01-05 16:10:56', 'Macklemore & Ryan Lewis', 'https://i.scdn.co/image/ab6761610000e5eb3c2f1ba4c1a3de141e63d775'),
('5CE2IfdYZEQGIDsfiRm8SI', '2022-01-05 16:10:56', 'DJ Shadow', 'https://i.scdn.co/image/ab6761610000e5ebed22769b2770a78dd6826f50'),
('5f7VJjfbwm532GiveGC0ZK', '2022-01-10 19:23:24', 'Lil Baby', 'https://i.scdn.co/image/ab6761610000e5eb2161ef3bab0e5e922a1c297d'),
('5fMUXHkw8R8eOP2RNVYEZX', '2022-01-05 16:10:56', 'Diplo', 'https://i.scdn.co/image/ab6761610000e5eb0c130c0e008333d363744970'),
('5IcR3N7QB1j6KBL8eImZ8m', '2021-12-08 12:12:18', 'ScHoolboy Q', 'https://i.scdn.co/image/ab6761610000e5ebe697a7ddf7af3a306428fa73'),
('5K4W6rqBFWDnAN6FQUkS6x', '2022-01-10 12:32:40', 'Kanye West', 'https://i.scdn.co/image/ab6761610000e5eb867008a971fae0f4d913f63a'),
('5L1lO4eRHmJ7a0Q6csE5cT', '2021-12-06 16:58:45', 'LISA', 'https://i.scdn.co/image/ab6761610000e5eb7315c4978296c4de311f577e'),
('5lCekoJW9jNq01B1wiqdAb', '2022-01-05 16:10:56', 'Crankdat', 'https://i.scdn.co/image/ab6761610000e5eb34686cdce6646df4b7ee10ac'),
('5LHRHt1k9lMyONurDHEdrp', '2021-12-06 16:58:45', 'Tyga', 'https://i.scdn.co/image/ab6761610000e5eb7e8e12069870e99fa8c21a5e'),
('5MbNzCW3qokGyoo9giHA3V', '2021-12-15 16:09:38', 'EARTHGANG', 'https://i.scdn.co/image/ab6761610000e5eb4a703b05c4ae3fafeaec6be6'),
('5nLYd9ST4Cnwy6NHaCxbj8', '2022-01-05 16:10:56', 'CeeLo Green', 'https://i.scdn.co/image/ab6761610000e5eb8079989370c50963b60ee7bc'),
('5SXuuuRpukkTvsLuUknva1', '2022-01-06 23:15:49', 'Baby Keem', 'https://i.scdn.co/image/ab6761610000e5ebd6f2323c1971fd5a70cd0255'),
('5UjifI1TYefXWn9GdqDOHl', '2021-12-06 18:51:47', 'Social House', 'https://i.scdn.co/image/ab6761610000e5ebea3999db56c4bec6269c7d3b'),
('5WUlDfRSoLAfcVSX1WnrxN', '2022-01-05 16:10:56', 'Sia', 'https://i.scdn.co/image/ab6761610000e5ebe8637c96a7aa2917eae3c54d'),
('5XDJlfdfbGNJrOJJNxTcdq', '2021-12-08 12:12:18', 'Phora', 'https://i.scdn.co/image/ab6761610000e5eb08fc06f4d124d6a59139b809'),
('5y2Xq6xcjJb2jVM54GHK3t', '2022-01-06 23:15:49', 'John Legend', 'https://i.scdn.co/image/ab6761610000e5eb8f2bf07f58f571ae430ff1be'),
('5yPzzu25VzEk8qrGTLIrE1', '2021-12-15 16:09:38', 'Young Nudy', 'https://i.scdn.co/image/ab6761610000e5eb2ffacaa8c07b9a678b73b6ef'),
('62DmErcU7dqZbJaDqwsqzR', '2021-12-06 16:58:45', 'Popcaan', 'https://i.scdn.co/image/ab6761610000e5eb345408d66fe52eaee3e90399'),
('64KEffDW9EtZ1y2vBYgq8T', '2021-12-06 18:29:13', 'Marshmello', 'https://i.scdn.co/image/ab6761610000e5eba91af711541f8807ed7f0676'),
('64M6ah0SkkRsnPGtGiRAbb', '2021-12-06 16:58:45', 'Bebe Rexha', 'https://i.scdn.co/image/ab6761610000e5ebabfac786f093c4da55c99d4e'),
('66XvhENR7AEwichiZYuiFu', '2021-12-15 16:09:38', 'Big Heath', 'https://i.scdn.co/image/ab6761610000e5eb211f2475869ca256fc9f1983'),
('67nwj3Y5sZQLl72VNUHEYE', '2021-12-08 12:12:18', 'Wale', 'https://i.scdn.co/image/ab6761610000e5eb0e1f90bdff70c339838dcf90'),
('68kEuyFKyqrdQQLLsmiatm', '2021-12-13 14:49:18', 'Vince Staples', 'https://i.scdn.co/image/ab6761610000e5eb0bccae7bd80969b73a94a0d2'),
('68Uwx1d3EbjDJhYsLjqvIq', '2021-12-15 16:09:38', 'Emma Stone', 'https://i.scdn.co/image/cee04ea73506df4e3bc77fc334e9cfbd49387383'),
('6AgTAQt8XS6jRWi4sX7w49', '2022-01-05 16:10:56', 'Polo G', 'https://i.scdn.co/image/ab6761610000e5ebdec41838906c58af1c29c9da'),
('6ASri4ePR7RlsvIQgWPJpS', '2022-01-05 16:10:56', 'iann dior', 'https://i.scdn.co/image/ab6761610000e5eb2aeeeb3db9b941db74d2cfe2'),
('6C1ohJrd5VydigQtaGy5Wa', '2022-01-05 16:10:56', 'Joyner Lucas', 'https://i.scdn.co/image/ab6761610000e5ebe6f64ccadc3ed5dae6b5fbe4'),
('6d47Z08T4snK50HgTEHo5Z', '2021-12-13 14:49:18', 'Sage The Gemini', 'https://i.scdn.co/image/ab6761610000e5ebf62e660e474c18ad7443641c'),
('6DPYiyq5kWVQS4RGwxzPC7', '2022-01-10 12:32:40', 'Dr. Dre', 'https://i.scdn.co/image/83d2489cade1dadcdc533ddbcd74993d0ca6d4cb'),
('6EPlBSH2RSiettczlz7ihV', '2021-12-08 12:12:18', 'Sleepy Hallow', 'https://i.scdn.co/image/ab6761610000e5eb85563828c7493e4edf175379'),
('6fOMl44jA4Sp5b9PpYCkzz', '2021-12-06 18:29:14', 'NF', 'https://i.scdn.co/image/ab6761610000e5eb2ddbc93688aa74431df384ea'),
('6fWVd57NKTalqvmjRd2t8Z', '2021-12-08 12:12:18', '24kGoldn', 'https://i.scdn.co/image/ab6761610000e5eb8aea2d28b0df2fe1aa13464f'),
('6icQOAFXDZKsumw3YXyusw', '2021-12-06 18:51:47', 'Lil Yachty', 'https://i.scdn.co/image/ab6761610000e5ebbf4a90e0755532ddfbe0fe11'),
('6Ip8FS7vWT1uKkJSweANQK', '2021-12-15 16:09:38', 'Dave', 'https://i.scdn.co/image/ab6761610000e5eb76d47d16d18eb30413469512'),
('6IZ4ctovY9dl7bgHClAvKJ', '2022-01-05 16:10:56', 'LSD', 'https://i.scdn.co/image/ab6761610000e5eb9923e913151e48529710edb2'),
('6kXm2YCtdUOpRYNKeKhfue', '2021-12-15 16:09:38', 'Ryan Gosling', 'https://i.scdn.co/image/631a9ec7f910836e4fbdd97f652e2fb032674c08'),
('6l3HvQ5sa6mXTsMTB19rO5', '2022-01-10 19:23:24', 'J. Cole', 'https://i.scdn.co/image/ab6761610000e5ebadd503b411a712e277895c8a'),
('6LuN9FCkKOj5PcnpouEgny', '2021-12-08 15:12:05', 'Khalid', 'https://i.scdn.co/image/ab6761610000e5eb012b37d6dec8872b18524f78'),
('6PvvGcCY2XtUcSRld1Wilr', '2021-12-06 16:58:45', 'Silk Sonic', 'https://i.scdn.co/image/ab67616d0000b27310f084209eab3dfecf7d5f8e'),
('6S0dmVVn4udvppDhZIWxCr', '2022-01-05 16:10:56', 'Sean Kingston', 'https://i.scdn.co/image/ab6761610000e5eb5d853b34ef123ce2da768c95'),
('6U3ybJ9UHNKEdsH7ktGBZ7', '2021-12-15 16:09:38', 'JID', 'https://i.scdn.co/image/ab6761610000e5eb52a6fa5f05c26ac257c6feda'),
('6USMTwO0MNDnKte5a5h0xx', '2021-12-06 16:58:45', 'Y2K', 'https://i.scdn.co/image/ab6761610000e5ebcf5885d1297ec7697ae2f3f1'),
('6vHBuUxrcpn1do5UaEJ7g6', '2022-01-05 16:10:56', 'Domo Genesis', 'https://i.scdn.co/image/ab6761610000e5eb326a61a99773406cc8a6b0dd'),
('70gP6Ry4Uo0Yx6uzPIdaiJ', '2022-01-10 19:23:24', 'Bas', 'https://i.scdn.co/image/ab6761610000e5ebe33ef339180da12882d8db11'),
('7A0awCXkE1FtSU8B0qwOJQ', '2021-12-06 16:58:45', 'Jamie xx', 'https://i.scdn.co/image/ab6761610000e5eb4dbb796358938e4cc1f75f8b'),
('7c0XG5cIJTrrAgEC3ULPiq', '2021-12-06 17:29:58', 'Ty Dolla $ign', 'https://i.scdn.co/image/ab6761610000e5ebd9dde4a54073dbd58fb91c7d'),
('7dGJo4pcD2V6oG8kP0tJRR', '2022-01-05 16:10:56', 'Eminem', 'https://i.scdn.co/image/ab6761610000e5eba00b11c129b27a88fc72f36b'),
('7hJcb9fa4alzcOq3EaNPoG', '2021-12-08 12:12:18', 'Snoop Dogg', 'https://i.scdn.co/image/ab6761610000e5eb9a398209a4ef3360dce2dec4'),
('7iZtZyCzp3LItcw1wtPI3D', '2021-12-08 12:12:18', 'Rae Sremmurd', 'https://i.scdn.co/image/ab6761610000e5eb7cf71f9d765ad1e0f1d27ab3'),
('7jVv8c5Fj3E9VhNjxT4snq', '2021-12-06 18:51:47', 'Lil Nas X', 'https://i.scdn.co/image/ab6761610000e5ebab6bd6e450cbc7629a9a2381'),
('7lDkWxhwIuRAIzmHf85yKx', '2021-12-13 14:49:18', 'Michael Abels', 'https://i.scdn.co/image/ab6761610000e5eba7442441006bc8d6e2a2a412'),
('7LnaAXbDVIL75IVPnndf7w', '2021-12-08 12:12:18', 'Jamie Foxx', 'https://i.scdn.co/image/a3823abbd476fa00cdf95a9f5cbbe09d2f96add2'),
('7MNEVabc4cs19CbzAFZmXz', '2022-01-05 16:10:56', 'Terrace Martin', 'https://i.scdn.co/image/ab6761610000e5eb70fa47fe3e51364c2dd6f9de'),
('7pGyQZx9thVa8GxMBeXscB', '2021-12-13 14:49:18', 'K\'NAAN', 'https://i.scdn.co/image/2ef35a677e4576544a7d5f5eb4d3b8a977cb8472'),
('7sfgqEdoeBTjd8lQsPT3Cy', '2022-01-10 12:32:40', 'Emeli Sandé', 'https://i.scdn.co/image/ab6761610000e5ebce71bd3e83a7d5d6f4ae6c96'),
('7sfl4Xt5KmfyDs2T3SVSMK', '2021-12-06 16:58:45', 'Lil Jon', 'https://i.scdn.co/image/ab6761610000e5eb74a2a7ebb781d816f14664af');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `comment`
--

CREATE TABLE `comment` (
  `Id` varchar(255) NOT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  `ProfileUserId` varchar(255) DEFAULT NULL,
  `CommentUserId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `comment`
--

INSERT INTO `comment` (`Id`, `CreationDate`, `Comment`, `ProfileUserId`, `CommentUserId`) VALUES
('274ad4d8-a41c-4d7b-8e8a-2ba16c4bd438', '2022-01-06 23:58:32', 'test', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801'),
('659d647f-37d4-4f1e-a354-8079101029b6', '2022-01-06 23:58:15', 'test2', '895864ed-87a9-4649-bc96-2bfdeb5470a0', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801'),
('cd82ea7f-40d0-4e0a-8618-30701888f7cf', '2022-01-06 23:48:03', 'test1', '895864ed-87a9-4649-bc96-2bfdeb5470a0', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801'),
('e885b43c-d71e-45b3-982a-7e074316175a', '2022-01-06 23:42:40', 'test', '895864ed-87a9-4649-bc96-2bfdeb5470a0', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801'),
('ea3230aa-e035-4dbd-b2c4-5979913e5ebd', '2022-01-10 13:06:25', 'test1', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `follow`
--

CREATE TABLE `follow` (
  `FollowingUserId` varchar(255) NOT NULL,
  `FollowedUserId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `follow`
--

INSERT INTO `follow` (`FollowingUserId`, `FollowedUserId`) VALUES
('77f9c419-e9f0-4d48-8d1e-5d0cbee36801', '895864ed-87a9-4649-bc96-2bfdeb5470a0'),
('895864ed-87a9-4649-bc96-2bfdeb5470a0', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `scrobble`
--

CREATE TABLE `scrobble` (
  `Id` varchar(255) NOT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `PlayedAt` bigint(20) DEFAULT NULL,
  `TrackId` varchar(255) DEFAULT NULL,
  `UserId` varchar(255) DEFAULT NULL,
  `ProfileUserId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `scrobble`
--

INSERT INTO `scrobble` (`Id`, `CreationDate`, `PlayedAt`, `TrackId`, `UserId`, `ProfileUserId`) VALUES
('01d4a545-67eb-4ddc-bcae-ebf3d7793d41', '2021-12-06 16:58:45', 1638800724841, '2fHFLyzAQYlguX5q0DfKlD', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('021de289-82fd-4cb5-a81d-6340864548d8', '2022-01-05 15:06:44', 1641248726585, '7FIWs0pqAYbP91WWM0vlTQ', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('0240b77a-1f79-4dbf-a19a-298d485ce753', '2022-01-05 15:06:46', 1641218530522, '5Hc35BziLaXfLebKmds2FV', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('026e0190-cd86-4e2a-a6c1-c957ecb17b09', '2021-12-13 14:49:18', 1639263431992, '6Ius4TC0L3cN74HT7ENE6e', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('02f01c7d-033d-4910-b4dd-f7e358076350', '2022-01-05 16:10:56', 1641337001139, '2cnKST6T9qUo2i907lm8zX', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('030d02d3-febb-4a62-9ca0-5d173a719938', '2022-01-05 16:10:56', 1641236796466, '62vpWI1CHwFy7tMIcSStl8', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('035e946c-7d41-4255-91bb-2c27a06cfad6', '2021-12-13 14:49:18', 1639339965208, '4VXIryQMWpIdGgYR4TrjT1', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('06bae13c-ab46-4069-9e7c-fd872f5c532a', '2021-12-13 14:49:18', 1639257785126, '4txn9qnwK3ILQqv5oq2mO3', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('080156b0-ea22-4f63-b3bc-2aa83464ccb3', '2021-12-06 18:04:40', 1638810021813, '3iVcZ5G6tvkXZkZKlMpIUs', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('09419520-21e2-49f9-aec4-3280aea68770', '2021-12-06 12:06:03', 1638717594568, '4qRjfovbhI4EwP7VQNfxVW', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('09c0d2b4-07e5-4a9e-9527-28c7430ca66b', '2022-01-05 16:10:56', 1641218809299, '3owESnQzGKXJhdZQDdXppK', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('09d7fea2-3f2c-485f-b5fe-6b179e1591ab', '2021-12-08 12:12:18', 1638960025125, '2gZUPNdnz5Y45eiGxpHGSc', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('0a05d191-a719-442a-ba3f-dc7233c4c643', '2021-12-06 18:29:14', 1638811084766, '0yruV4sUwyczq5cxMRRljU', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('0a70f328-8e97-4c02-b435-7cb4b8b3a3bd', '2022-01-10 12:32:40', 1641677136045, '2uwnP6tZVVmTovzX5ELooy', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('0bac9060-7c17-4422-80c1-fff063c29734', '2021-12-08 12:12:18', 1638959717400, '192RjH0gN6en7nE6ElN96T', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('0cec5f61-6f16-4b9b-aec2-5caf9ede8fc8', '2021-12-13 14:49:18', 1639323552482, '57VeLYXrvNxe8Vs18K2M9W', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('0d52d2c3-ace1-43ef-93f5-a22812ff348b', '2021-12-13 14:49:18', 1639323825503, '3U21A07gAloCc4P7J8rxcn', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('0ea67e2a-cd2d-41ee-8d08-57ba6644d7ef', '2021-12-08 12:12:18', 1638915432410, '1zKOagmkCtXuGmCivG8HZE', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('0ef39c50-fe64-4ec0-b9df-3b02fdecb983', '2021-12-06 16:58:45', 1638737382949, '7lL3MvFWFFSD25pBz72Agj', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('0fb56930-fe68-4192-ad3d-18cbbe2d0747', '2021-12-06 16:58:45', 1638736593166, '6NyhBA9M6KK0fuVsojxL00', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('101a6378-9f78-40e1-8964-f248bf7b59c9', '2022-01-10 19:23:24', 1641837314249, '5R691ipUYRDYW6ehapjoj6', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('11935692-d875-479e-a306-5f1326a2cdc8', '2022-01-10 12:32:40', 1641658404111, '0utlOiJy2weVl9WTkcEWHy', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('11f01116-174b-482b-a5d4-7feed30d7a22', '2021-12-13 14:49:18', 1639312832120, '4qRjfovbhI4EwP7VQNfxVW', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('11f72b40-70c5-4dae-a729-9bb60771ac0d', '2022-01-06 23:15:49', 1641503530696, '3QFInJAm9eyaho5vBzxInN', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('123ec360-6b99-4984-8e51-e294ff952967', '2021-12-13 14:49:18', 1639312573081, '4YwNf1fLZt9IQhJeHNWfBi', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('126c91d0-4cf5-4777-9bf7-da2d2c282b06', '2022-01-10 12:32:40', 1641655614154, '0GAyuCo975IHGxxiLKDufB', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('148c52ea-2955-4b97-9a45-cb4f3b5396fe', '2022-01-05 16:10:56', 1641251312985, '75IN3CtuZwTHTnZvYM4qnJ', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('162b1d59-ab33-4f7a-9f94-c9f89c6af52b', '2021-12-06 17:18:42', 1638807403259, '2cnKST6T9qUo2i907lm8zX', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('17e57302-ef52-4342-9226-578641e51f26', '2022-01-06 23:15:49', 1641498451851, '3DK6m7It6Pw857FcQftMds', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('1a3dc657-e3e8-4661-af13-70719f6204b6', '2021-12-08 12:12:18', 1638917853680, '7g9DNzAU2QP88rE4BgIJpp', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('1a927b1c-b64e-4643-b5b0-691f611dc8b9', '2021-12-06 16:58:45', 1638797583651, '0JjM9bKm4wrwohMslcm892', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('1b81829b-abb3-4ce2-913a-5164f5c24b2c', '2022-01-05 15:06:43', 1641336304153, '5W8jRrZ6tWrTrqnKRtIQBf', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('1c45df7a-fd12-4480-a085-b68ce3e6f0c5', '2021-12-08 12:12:18', 1638959532000, '3iXP0G94qFZiXgZGZb2i5R', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('1d2e36b9-fce0-4da1-88ed-1dfee8f92600', '2021-12-08 12:12:18', 1638918851723, '62vpWI1CHwFy7tMIcSStl8', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('1e6d7f7e-dc52-44a7-bf95-79b309698eb9', '2022-01-05 16:10:56', 1641337648374, '4n6NDfYake476trCjJRNl0', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('1ef6fd39-56f4-4851-bc5f-a8cda4efeda2', '2021-12-15 16:09:38', 1639481791581, '2DTpP3caqX3QdJIEoS83mD', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('1fe5eed4-114b-4fa3-889f-97d487492c55', '2021-12-13 14:49:18', 1639263515390, '08QaHlMPWuO5PUxjl61bXn', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('212dd1ea-4af8-4b7a-987f-166a99f7dc51', '2022-01-10 12:32:40', 1641675082288, '22L7bfCiAkJo5xGSQgmiIO', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('21322d71-dc1d-4840-813a-fd0c55fbcab6', '2022-01-05 16:10:56', 1641233766499, '3fKdTr6Uv8HTb92Ih3QWxa', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('21917629-0439-46ff-9a01-7ac37ca31ee6', '2022-01-05 15:06:46', 1641217876226, '4EWCNWgDS8707fNSZ1oaA5', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('22249189-0d56-4134-8788-1de1004212b3', '2022-01-05 15:06:46', 1641219612691, '7yPjeaoQlwF8tfbnAhNO2v', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('22df367f-5595-489f-af70-7f6c1c382787', '2021-12-13 14:49:18', 1639257281133, '6NyhBA9M6KK0fuVsojxL00', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('23044fbd-8a53-4574-8f4c-d081948e6ce9', '2021-12-15 16:09:38', 1639569326293, '0LJDFZohBgWOMvXQw0cc9W', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('2313d2d2-4d73-4353-a92c-53abf0d593c1', '2021-12-13 14:49:18', 1639342436281, '43jBqV3j3Xi1g6wO0bhIMd', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('237fcd08-6449-4bd2-97b0-4f7b0bf2d740', '2021-12-06 12:06:03', 1638718703190, '1HNs07uZxZniPNmniw2GTa', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('24f55852-501d-4e7d-9f04-7180a3372556', '2021-12-13 14:49:18', 1639323849292, '3owESnQzGKXJhdZQDdXppK', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('25de0776-f575-42cd-aab5-712c11624c27', '2022-01-06 23:15:49', 1641461228076, '1UGD3lW3tDmgZfAVDh6w7r', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('271a0ca7-2121-4505-9ccf-a873ab54f5a3', '2021-12-13 14:49:18', 1639313125339, '1HNs07uZxZniPNmniw2GTa', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('295b0e55-d2cf-4000-a50d-0b5b1bb8c005', '2021-12-15 16:09:38', 1639524809098, '7e5z8Set6bsGDh8KIsZnoX', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('2980598a-3b38-4373-bac4-d52c44bba4f2', '2021-12-06 16:58:45', 1638799438861, '5zpcSMzRsQlfoRcwD8h0uj', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('298dcd41-f875-4e00-a3a8-7f451948c604', '2021-12-06 12:06:03', 1638718410140, '30Chv2SmIry70YwtmtaKnj', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('2a135c6b-36dc-4362-b884-f397c9c777be', '2021-12-13 14:49:18', 1639265519863, '2ygMBIctKIAfbEBcT9065L', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('2ade7d4b-6126-4c68-b74b-3540136268b7', '2022-01-05 16:10:56', 1641219411670, '4KUUaKfBqPw1IOitTW3Pba', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('2b9e2302-dd12-4e6e-a8bc-84ed79f06ac4', '2022-01-06 23:15:49', 1641496067220, '22L7bfCiAkJo5xGSQgmiIO', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('2c917d5d-87d6-4d3d-ac8c-0314a8ca1373', '2022-01-05 15:06:42', 1641337391671, '1d7q712nXjG98HiwHk7HFS', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('2cf9f721-216f-4233-b35f-5b1474f85af0', '2021-12-08 12:12:18', 1638919620885, '2JvzF1RMd7lE3KmFlsyZD8', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('2d46fc48-5709-447c-8f7c-af7060740ae2', '2022-01-05 16:10:56', 1641251914407, '23OYT3SFtoJqhiAUqktbc1', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('2d568cb6-eaa3-4f00-babc-a1c62e38e143', '2021-12-06 19:00:15', 1638813599898, '33QXHN1SzNgHIRPr7qYknV', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('2d637239-caa9-4f0f-aaac-d9bbb2df8f8b', '2021-12-06 12:06:03', 1638719421135, '1HNs07uZxZniPNmniw2GTa', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('2e6f48e8-b097-40be-a5b1-08cdbffbf95c', '2021-12-13 14:49:18', 1639342635619, '5zpcSMzRsQlfoRcwD8h0uj', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('2f5836a6-f032-4c63-b5bd-761e592b0d2a', '2022-01-05 15:06:47', 1641201132077, '30Chv2SmIry70YwtmtaKnj', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('30cf7bca-f9e9-4d84-a5f1-5926d8702c79', '2022-01-06 23:15:49', 1641503026775, '1jaTQ3nqY3oAAYyCTbIvnM', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('317ed9bb-a3a3-43d4-8ca1-05a5dc71c7f3', '2021-12-06 16:58:45', 1638800287204, '2ygMBIctKIAfbEBcT9065L', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('31b54156-72e9-4447-904f-74bce00def4d', '2022-01-05 15:06:47', 1641216854950, '750vtNtNiQVl80E4baoJjd', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('32579f47-eebc-41ca-a1c2-3e19b18bc956', '2022-01-05 16:10:56', 1641249176480, '22L7bfCiAkJo5xGSQgmiIO', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('32e8d486-0fa8-4f93-b0aa-5e757f1a66ca', '2022-01-10 12:32:40', 1641643230095, '4wshBvO4qMrxJnPlfkeUWi', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('330f5a59-8dc3-4984-be37-da73f3909cdb', '2022-01-05 16:10:56', 1641217664983, '1jaTQ3nqY3oAAYyCTbIvnM', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('3442e015-e622-460f-ac33-302d7eb9221c', '2021-12-08 12:12:18', 1638914914170, '4TIqzdAssasqx3DAe6cG9J', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('34b09da8-f37a-484d-bf33-a63f273f0407', '2022-01-10 12:32:40', 1641644628103, '4D6TpthzUVNTjWQqfBW5Kb', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('351042a2-ff31-4eba-985f-52278834a4b1', '2021-12-08 12:12:18', 1638959174835, '6xRsvyeB6omCCYdl7QSZes', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('3524591f-6cf5-4af0-8f48-dc4e38f05ef8', '2021-12-06 16:58:45', 1638797987682, '0UtnpKaReKUg2GquaSxCyD', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('354218a1-686b-4329-b5a8-6a4423591b9a', '2021-12-06 18:29:14', 1638810406048, '5lw8Mgb4LyhriPIC86gV6e', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('357b5a93-71ba-40ee-ad69-d50539fc79c9', '2022-01-06 23:15:49', 1641483806554, '22L7bfCiAkJo5xGSQgmiIO', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('35b9a20f-c90f-4a37-8012-8a65b233d1ea', '2022-01-05 15:06:44', 1641249613473, '30Zcjs7pgEkmJA1lEbGSWT', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('36c0cbc2-eb77-461a-abc6-36094c1023ee', '2022-01-10 12:32:40', 1641645306128, '1ZHYJ2Wwgxes4m8Ba88PeK', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('373ed674-a008-4980-8a30-6006fb08ed9e', '2021-12-06 16:58:45', 1638801010233, '3yfqSUWxFvZELEM4PmlwIR', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('379f4018-2bb2-4f30-a133-fa19499d19ed', '2022-01-05 16:10:56', 1641220581157, '4TlbZgqxhJ6uN3tpVyjw90', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('395fe1ae-e552-4259-ba32-9b590d5e727f', '2021-12-13 14:49:18', 1639258343173, '4Tjh34RS4ACZ6f6srlDBg8', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('39bb9295-6ad6-4f5c-a2f5-3b816e6d65f4', '2021-12-06 12:06:03', 1638714975393, '4qRjfovbhI4EwP7VQNfxVW', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('3a93a7e4-04a4-45a9-9186-b09eafa9c687', '2021-12-06 16:58:45', 1638798482739, '4jPy3l0RUwlUI9T5XHBW2m', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('3f17dd46-82ec-445e-80b4-eb210491d923', '2022-01-05 16:10:56', 1641216465201, '1vicAuW47ccp1l5mYmaWi7', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('3f1f5d20-0acf-44e4-b837-aa454d9787f0', '2022-01-10 19:23:24', 1641836867143, '4YiY551vHi6glMtgVxuqAy', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('40381140-e022-46ec-8f7a-b09df5bad14d', '2021-12-06 12:06:03', 1638710684164, '16qYlQ6koFxYVbiJbGHblz', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('4082662b-1766-4168-a0e1-f47af40074af', '2021-12-13 14:49:18', 1639259949141, '1HNs07uZxZniPNmniw2GTa', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('4113527d-24be-46fc-a419-87b9357ffb9a', '2022-01-05 15:06:41', 1641337867139, '5W8jRrZ6tWrTrqnKRtIQBf', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('417e7f7f-4ccc-4fc7-9089-f944a3beba49', '2022-01-05 16:10:56', 1641373987148, '0GAyuCo975IHGxxiLKDufB', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('417ef893-0a5b-4c60-b109-514f3dce1cba', '2021-12-06 18:29:13', 1638811731660, '7vGuf3Y35N4wmASOKLUVVU', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('41e2cf23-4a3a-4b26-b059-cf561144a225', '2022-01-10 12:32:40', 1641646134993, '22L7bfCiAkJo5xGSQgmiIO', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('4227d6d5-c456-4b44-817b-46e7aaccff9d', '2021-12-08 12:12:18', 1638915083344, '57VeLYXrvNxe8Vs18K2M9W', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('4266e828-4805-4c0e-b71f-17d996bfefe5', '2021-12-06 18:04:40', 1638809138548, '3l6lmZCaZdnc90MI2BktqP', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('427c1b30-f6aa-4968-b335-01a5ba27dfe2', '2022-01-10 12:32:40', 1641656055378, '5lLNBIyjp72btcnrjBG751', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('434db801-111e-42a9-9021-d62dce9a7282', '2022-01-10 12:32:40', 1641656986121, '3MWlVSkoLS1e66nlZ2tuWJ', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('43f6a127-0406-4956-b234-c594632a8131', '2022-01-10 12:32:40', 1641759479222, '22L7bfCiAkJo5xGSQgmiIO', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('44a66103-2c0b-405d-9ab1-685095d36cc1', '2021-12-06 18:04:40', 1638809542707, '0N3W5peJUQtI4eyR6GJT5O', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('450e3eb9-0fe4-45a4-bb55-b6d0250cf77e', '2022-01-05 16:10:56', 1641247594043, '3wA4ronkc8ZcPXUP0fDgYA', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('45211502-ca97-4e80-a6fc-92aa54aa7bf3', '2021-12-08 12:12:18', 1638831178171, '4txn9qnwK3ILQqv5oq2mO3', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('4573731d-642c-48c1-896f-3ea4ff311ea3', '2021-12-06 18:29:14', 1638811316877, '7dt6x5M1jzdTEt8oCbisTK', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('45cfa5b4-3d28-4cfb-b0ba-807bf215c0ba', '2021-12-06 12:06:03', 1638711701106, '4gkl7QbQvBd3TM9PhlWFkI', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('45fe29f2-7755-4166-b666-4e374478538a', '2022-01-10 12:32:40', 1641759830460, '22L7bfCiAkJo5xGSQgmiIO', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('47117ce7-0aaa-4e8c-862f-b6cf4eb5bb01', '2022-01-10 12:32:40', 1641657188039, '6AGON2BGdPmPMJGiiNuuwl', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('477bb0a0-f77f-45c7-9b3c-9f9c200ca672', '2022-01-05 15:06:42', 1641336853101, '5R691ipUYRDYW6ehapjoj6', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('484820f8-5dcb-42c5-88cf-868b48235d83', '2021-12-06 16:58:45', 1638801217982, '5HQVUIKwCEXpe7JIHyY734', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('49337c1a-752d-4afb-b60b-05bbe14fea16', '2021-12-13 14:49:18', 1639303363129, '1HNs07uZxZniPNmniw2GTa', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('49a4e810-668f-44ce-9cf2-3c75d9a4762d', '2021-12-08 12:12:18', 1638959383189, '5HQVUIKwCEXpe7JIHyY734', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('49ea4e43-00a1-4c22-a1b9-2077cc6a0c40', '2021-12-06 18:04:40', 1638810229942, '0LJDFZohBgWOMvXQw0cc9W', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('4a389b03-2b87-4577-b4a6-c05e300c6ce6', '2022-01-10 12:32:40', 1641727452870, '6K07Ahf6V7CAQn0ikrOztl', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('4ae7453a-29ea-42bd-8627-1510dd5eed0b', '2021-12-08 12:12:18', 1638960374207, '0JP9xo3adEtGSdUEISiszL', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('4ca11c09-ac61-4191-b147-9a991801c74d', '2021-12-08 12:12:18', 1638918550129, '1HNs07uZxZniPNmniw2GTa', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('4cc47b63-d21a-4d21-818a-57c41b015ea9', '2021-12-06 16:58:45', 1638741534178, '62vpWI1CHwFy7tMIcSStl8', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('4d0dced7-22e8-46eb-829a-e89014c47b86', '2022-01-05 16:10:56', 1641219820311, '4PnNzWe1LJoAMD5j5RHpI0', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('4d10a863-a2d6-42e1-b142-90e853ad3e1d', '2021-12-08 12:12:18', 1638880229112, '0LJDFZohBgWOMvXQw0cc9W', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('4d4c2230-e3e2-4bd1-9d92-bf48ac18f770', '2021-12-15 16:09:38', 1639481591677, '1ZdhOMWyFR8Iv9eylMGYg2', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('4d59f0ed-f78d-44ba-82e8-13697b2444e0', '2021-12-06 16:58:45', 1638799248977, '1jaTQ3nqY3oAAYyCTbIvnM', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('4df9938e-c553-47fc-aeb4-a06b842ea5dc', '2022-01-05 16:10:56', 1641249613473, '30Zcjs7pgEkmJA1lEbGSWT', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('4e77addb-dbfa-4115-89c3-72662b512311', '2021-12-15 16:09:37', 1639569498006, '25zlnOAzbVoOzIeXSvQFf1', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('4f102026-65bb-487e-9c24-f619b5f79950', '2022-01-05 15:06:47', 1641217525400, '7e5z8Set6bsGDh8KIsZnoX', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('4f5acf0a-0755-4d81-9112-514f4e43d185', '2021-12-06 17:06:53', 1638806797885, '2KMPEI406H9G8UqiWDfuTK', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('5000a904-c7f2-4bf5-bd23-9de91625deba', '2021-12-06 12:06:03', 1638728088970, '1HNs07uZxZniPNmniw2GTa', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('509deb4d-7410-49ff-8774-e0d18f54557b', '2022-01-05 15:06:45', 1641236796466, '62vpWI1CHwFy7tMIcSStl8', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('50bfe756-6d40-48a0-86e3-7c0e4a3cc099', '2021-12-08 12:12:18', 1638919403031, '6Ius4TC0L3cN74HT7ENE6e', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('52a347fc-55ef-4456-afdc-64fdf4e135de', '2022-01-05 16:10:56', 1641217092517, '7FdPNzOaG7FnIXiFm53cq4', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('5367a7d5-f36f-4d41-ad48-06df545dbc9f', '2021-12-13 14:49:18', 1639301175128, '6Ius4TC0L3cN74HT7ENE6e', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('536b122e-5a2e-4927-ad06-3958920edea2', '2021-12-08 12:12:18', 1638959014176, '2JvzF1RMd7lE3KmFlsyZD8', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('53bd4a98-8875-4f8a-8e7a-f97342ef4958', '2021-12-13 14:49:18', 1639302556149, '16qYlQ6koFxYVbiJbGHblz', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('540e7262-94d1-485b-ac0d-e6294b4321ca', '2022-01-05 16:10:56', 1641337220149, '1D3z6HTiQsNmZxjl7F7eoG', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('5467ec9b-3823-4cc2-ab4f-012ff13f1e3a', '2021-12-06 16:58:45', 1638796636220, '4EWCNWgDS8707fNSZ1oaA5', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('54795162-14d5-4735-892f-21698f87c80e', '2022-01-10 12:32:40', 1641654766168, '5W8jRrZ6tWrTrqnKRtIQBf', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('567591b8-d691-4009-9806-15d67f9fe375', '2022-01-05 16:10:56', 1641220043916, '3ydfhgIZIc2j39NLIhpJpq', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('569211b3-553a-493a-aac8-0729512196f8', '2022-01-05 16:10:56', 1641198529466, '4YwNf1fLZt9IQhJeHNWfBi', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('56a18589-c177-4999-a0cb-0793468fc73f', '2021-12-13 14:49:18', 1639322818947, '7lL3MvFWFFSD25pBz72Agj', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('576ece89-36f2-49cd-878d-591483f16ef5', '2021-12-06 19:00:15', 1638813272070, '1AT4xjNarTswd0UZ5FlmKF', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('585648c5-0c2b-4cb8-bd94-0792b99754cc', '2021-12-06 12:06:03', 1638729873157, '1HNs07uZxZniPNmniw2GTa', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('5900067f-968f-42e1-842e-31871e1e2552', '2022-01-10 19:23:24', 1641837688171, '1D3z6HTiQsNmZxjl7F7eoG', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('591a42a9-911b-44cf-9304-8eb471607af2', '2022-01-10 12:32:40', 1641678109184, '39JRmdKFka1Oe09FoOCPI4', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('595cc676-32be-4ba6-b0f6-685b423e5aa2', '2022-01-05 15:06:47', 1641217327830, '7bYZBVrnRfqeaPbhRyEvK3', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('596b0012-c3db-4c71-a0ee-bd52627393cd', '2021-12-13 14:49:18', 1639303575140, '4gkl7QbQvBd3TM9PhlWFkI', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('5a139c4a-8d59-4482-bda2-dac2d86f8c8d', '2021-12-08 12:12:18', 1638915776081, '3CRDbSIZ4r5MsZ0YwxuEkn', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('5aa35678-de22-45cf-9b24-f02e26ba3147', '2021-12-13 14:49:18', 1639301708874, '7lL3MvFWFFSD25pBz72Agj', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('5ae44d93-9916-4919-b097-9c08ea8a6010', '2021-12-08 12:12:18', 1638918209794, '1IeCWMwZs4rCmwPOjZYWN7', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('5b71e9c6-dab7-4299-82da-325ade62a3be', '2022-01-06 23:15:49', 1641497571561, '23SZWX2IaDnxmhFsSLvkG2', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('5b7d4597-35ae-4d75-ad93-97b6b051ed88', '2021-12-15 16:09:38', 1639568014580, '2PpruBYCo4H7WOBJ7Q2EwM', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('5b92b1af-382a-456c-94a5-4fd3cc810aa3', '2021-12-06 12:06:03', 1638711489154, '1HNs07uZxZniPNmniw2GTa', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('5ca57035-72cc-4159-bf72-d10444477864', '2022-01-10 12:32:40', 1641744672713, '22L7bfCiAkJo5xGSQgmiIO', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('5caa10a9-fe02-4f34-99de-3950508b36a8', '2022-01-10 12:32:40', 1641759178666, '22L7bfCiAkJo5xGSQgmiIO', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('5d11d49e-06f3-43aa-8564-cfd26c8206ae', '2021-12-06 16:58:45', 1638798912345, '1V4jC0vJ5525lEF1bFgPX2', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('5d18c2e2-70fd-4dfc-90f6-7b4d1d61a851', '2022-01-10 12:32:40', 1641643844097, '7yNK27ZTpHew0c55VvIJgm', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('5dce943e-4e81-4180-9b2f-07bfb5a3ac49', '2022-01-10 19:23:24', 1641835757784, '1D3z6HTiQsNmZxjl7F7eoG', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('5f23503a-a550-42b8-b5b3-4aedf1b1e5aa', '2022-01-05 15:06:44', 1641335762176, '22L7bfCiAkJo5xGSQgmiIO', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('5f7fb4d1-e230-40e3-87bc-10c567460bdf', '2022-01-05 16:10:56', 1641336853101, '5R691ipUYRDYW6ehapjoj6', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('5fa39d9d-27bf-4db8-8b74-cba09eaabf92', '2022-01-10 19:23:24', 1641835538669, '2cnKST6T9qUo2i907lm8zX', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('5fb575c1-0745-4149-9296-69ab476006da', '2022-01-05 15:06:45', 1641248332880, '3U21A07gAloCc4P7J8rxcn', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('60f434f9-22fb-46cf-9e82-e3adfc54c98b', '2022-01-06 23:15:49', 1641459099131, '1ZHYJ2Wwgxes4m8Ba88PeK', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('613fcf0b-9b40-4d32-8073-be72a2b6e831', '2021-12-15 16:09:38', 1639527134723, '285pBltuF7vW8TeWk8hdRR', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('6187a775-7473-4e7d-b668-cc5f1e21db54', '2022-01-06 23:15:49', 1641422914879, '5BwQjRasNcdRPuVWKcHto2', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('61b65444-37b7-434e-97bf-5137a8f0e0c9', '2021-12-08 12:12:18', 1638830388131, '6Ius4TC0L3cN74HT7ENE6e', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('61ccb6b7-b1c2-47ea-afb5-f04f58e3e5c2', '2021-12-08 12:12:18', 1638919156136, '16qYlQ6koFxYVbiJbGHblz', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('61f549fa-88cd-4dd1-8c55-6f1efd6529ea', '2022-01-05 16:10:56', 1641219263271, '2ygMBIctKIAfbEBcT9065L', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('627bf365-33d9-4429-a093-dc621d981a2b', '2021-12-06 16:58:45', 1638796424630, '4KUUaKfBqPw1IOitTW3Pba', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('63464bdf-46a5-4891-9781-75fd671f4dfd', '2022-01-10 12:32:40', 1641645704134, '6K07Ahf6V7CAQn0ikrOztl', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('63946d75-eeb6-4b09-a9b4-99da7f8ce504', '2021-12-13 14:49:18', 1639258902157, '16qYlQ6koFxYVbiJbGHblz', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('649c839f-d3ba-4484-8226-548e5116af3e', '2022-01-05 16:10:56', 1641217327830, '7bYZBVrnRfqeaPbhRyEvK3', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('65a16b03-51da-4e69-bb70-162dfd551b73', '2021-12-13 14:49:18', 1639307048485, '4YwNf1fLZt9IQhJeHNWfBi', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('65d84e04-2101-4586-b12a-2e78663bfeb5', '2022-01-05 15:06:47', 1641216465201, '1vicAuW47ccp1l5mYmaWi7', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('6619d0a7-03de-4cbc-95f2-3f18e05dfbba', '2022-01-05 15:06:44', 1641251914407, '23OYT3SFtoJqhiAUqktbc1', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('6656de53-b820-400a-8db7-2e5469df2834', '2021-12-06 16:58:45', 1638744773160, '4YwNf1fLZt9IQhJeHNWfBi', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('67ddaa43-23a5-46f8-9881-f139967e8e8f', '2022-01-05 15:06:46', 1641218073241, '7Gc9OoiYsUrByC8tzD7kYY', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('6876ea19-39d5-4d03-bcec-15fa45db00c6', '2022-01-05 15:06:47', 1641217664983, '1jaTQ3nqY3oAAYyCTbIvnM', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('68f79ea0-ed35-40a7-951c-5f8fb70f4b9f', '2022-01-10 12:32:40', 1641675761674, '5W8jRrZ6tWrTrqnKRtIQBf', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('69d9a447-2024-4c44-a64b-978f094eecaf', '2022-01-05 15:06:46', 1641219820311, '4PnNzWe1LJoAMD5j5RHpI0', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('6b432d1b-ebf0-4f2d-b52e-0eab6a137260', '2022-01-10 12:32:40', 1641654163140, '5R691ipUYRDYW6ehapjoj6', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('6bba20fe-10d5-47c0-95af-8cae52f4cd10', '2022-01-06 23:15:49', 1641496324263, '2Im64pIz6m0EJKdUe6eZ8r', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('6c5ea44b-faf8-4b25-911b-4555ca636fd2', '2022-01-10 12:32:40', 1641644566107, '2gZUPNdnz5Y45eiGxpHGSc', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('6cf53ed2-3d5f-4283-b234-f163f00d89c5', '2022-01-05 16:10:56', 1641220735502, '6N22FZs2ZhPBYi3b9XPajV', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('6da68f5a-e028-4295-ad4f-f98d28e164e7', '2022-01-05 15:06:43', 1641336439991, '08LwMWf5Tcfsd752EPzFV0', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('6e39f4c0-e70a-4344-879b-379d2042e881', '2021-12-06 16:58:45', 1638744026165, '1EaKU4dMbesXXd3BrLCtYG', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('6e706fcd-121e-433e-b349-9238587ca150', '2021-12-13 14:49:18', 1639300935251, '6NyhBA9M6KK0fuVsojxL00', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('6e789151-d9e0-4e4c-9f9c-c87ea4a4694d', '2022-01-06 23:15:49', 1641503776915, '6i6cWTCYBOKEdJnWjzm2yk', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('6ef56f7a-4288-4ba3-bed7-714db9c52fb0', '2022-01-06 23:15:49', 1641502886158, '57VeLYXrvNxe8Vs18K2M9W', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('705492c7-1630-411b-891b-913e3a8e9e67', '2021-12-13 14:49:18', 1639257521155, '6Ius4TC0L3cN74HT7ENE6e', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('707991ff-1aeb-4529-b85b-a71286f8b912', '2021-12-06 18:51:47', 1638812924983, '2Yer0p7uB2lVBUAtANuuQp', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('70dd8257-f334-41c5-9a44-9c11196883a8', '2022-01-05 15:06:45', 1641247594043, '3wA4ronkc8ZcPXUP0fDgYA', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('716df5d6-e9a6-456e-9cf9-60db06c634f9', '2022-01-05 15:06:45', 1641233766499, '3fKdTr6Uv8HTb92Ih3QWxa', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('73bb5194-7ac8-4d01-b6ca-be82bc6a2530', '2022-01-10 19:23:24', 1641836392153, '08LwMWf5Tcfsd752EPzFV0', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('741caa19-5f82-424a-9461-458446088044', '2021-12-06 16:58:45', 1638742409122, '4at3d5QWnlibMVN75ECDrp', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('749502d7-7765-4240-ae7f-9ecbd315ea94', '2021-12-06 18:29:13', 1638811456967, '1jaTQ3nqY3oAAYyCTbIvnM', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('74f0a68b-cf51-4c91-94f8-e1cf291f62b0', '2022-01-06 23:15:49', 1641423644114, '5R691ipUYRDYW6ehapjoj6', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('7508b0db-1da9-49a7-9ee8-83fc03af5b8d', '2021-12-08 12:12:18', 1638916371572, '7b4ky1LlQLFhXHmhZkFgqV', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('7535e2eb-9dea-41ef-a686-bbee262f1339', '2021-12-06 18:04:40', 1638809295659, '1ZdhOMWyFR8Iv9eylMGYg2', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('75a0c4ca-5aaf-43f2-bec6-7f03799ee98a', '2022-01-10 12:32:40', 1641725693129, '22L7bfCiAkJo5xGSQgmiIO', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('75feb40e-819e-4fe8-a104-d463325664f8', '2021-12-06 16:58:45', 1638795831002, '2Nh2cMryoXl7BrZoIeN2Pr', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('76503aa9-1b3f-44f9-abf9-a86d4cdcdc6b', '2022-01-06 23:15:49', 1641502724067, '3w1WjD2zJqjBjDz5fwqQPJ', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('76d54ead-757c-4955-9a11-fba9a01324ce', '2021-12-06 17:29:58', 1638808041293, '4dASQiO1Eoo3RJvt74FtXB', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('772708e2-50d9-4520-9239-a662a64ceb4a', '2021-12-06 12:06:03', 1638713992037, '7lL3MvFWFFSD25pBz72Agj', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('786e466b-8e43-423b-b6df-113deab43d44', '2022-01-10 12:32:40', 1641658187442, '3pjUyVbFmM96tYhSaKJwTt', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('793a69f6-5624-440f-84d9-0133b52a8533', '2021-12-06 16:58:45', 1638736848127, '6Ius4TC0L3cN74HT7ENE6e', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('79d402a4-cf06-4faa-8eea-e2f8e2bc775e', '2022-01-05 16:10:56', 1641219612691, '7yPjeaoQlwF8tfbnAhNO2v', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('7a670f06-125b-42a1-b2d7-e15413bc7d28', '2021-12-06 12:06:03', 1638714280139, '4Tjh34RS4ACZ6f6srlDBg8', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('7b58eae6-6bc3-4790-8eda-e4707edc0847', '2022-01-10 12:32:40', 1641760632833, '22L7bfCiAkJo5xGSQgmiIO', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('7be05bdd-3338-4fe4-952f-3c53e6feac07', '2022-01-10 19:23:24', 1641835390154, '5R691ipUYRDYW6ehapjoj6', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('7ca85a11-414f-451f-b46b-dad98ee04e29', '2021-12-15 16:09:38', 1639568205083, '0Y7di9ZCmB6Elad5WISaPc', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('7d0ed7b8-cab1-43b7-8f79-bc66a7bf8603', '2021-12-06 16:58:45', 1638744622435, '4gkl7QbQvBd3TM9PhlWFkI', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('7d193b64-f0c5-4ebb-9ade-28da5b6148dc', '2022-01-05 15:06:46', 1641219411670, '4KUUaKfBqPw1IOitTW3Pba', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('7d4849e5-206f-4f36-b61c-a03b67925582', '2022-01-05 15:06:45', 1641220417583, '4Tf94tAHtlQxjbeeyU3y7C', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('7dd113eb-cbb5-43fb-ad43-90418a94c26e', '2022-01-10 12:32:40', 1641656609116, '0Thqjtu54vKMP06pwZkAWp', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('7def5e97-1b4a-4db9-9387-fe50d82038bb', '2021-12-13 14:49:18', 1639258055140, '7lL3MvFWFFSD25pBz72Agj', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('7eea8386-a4f5-440b-8736-3d8602087dcb', '2021-12-13 14:49:18', 1639260160928, '4gkl7QbQvBd3TM9PhlWFkI', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('80c46d5d-d111-442f-ab8d-7a0382b667a4', '2021-12-08 15:22:19', 1638973301111, '7FdPNzOaG7FnIXiFm53cq4', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('80f2dc58-ee4e-419e-9ea7-0acf592a746a', '2022-01-10 12:32:40', 1641654311131, '2cnKST6T9qUo2i907lm8zX', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('81fa2e05-520c-4734-a130-37cce041d197', '2021-12-06 17:32:27', 1638808338374, '0Fs9cdPDhptWEDJmiCbkEW', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('82eec172-1d50-47c2-b794-d7d8773036e9', '2022-01-06 23:15:49', 1641375600870, '5R691ipUYRDYW6ehapjoj6', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('83784747-99f9-419a-b0e1-7b48b1460738', '2021-12-06 18:29:14', 1638810924273, '3oLe5ZILASG8vU5dxIMfLY', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('83af6da5-5b0a-4f19-96a4-da9672cdba6e', '2021-12-06 16:58:45', 1638799109183, '7Gc9OoiYsUrByC8tzD7kYY', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('846b72b7-a07f-43b6-b7c7-0cc83eff5912', '2021-12-13 14:49:18', 1639302255043, '4qRjfovbhI4EwP7VQNfxVW', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('852d0258-5da0-403c-ade1-d68bb6602daf', '2022-01-06 23:15:49', 1641459497095, '6K07Ahf6V7CAQn0ikrOztl', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('85410cc3-1349-41cf-9b69-938126ebbb47', '2022-01-10 12:32:40', 1641642063118, '0O6cYePgIBlMQ0pAFate3q', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('8788f6c9-c08f-4b78-bda9-322bc2c843e6', '2021-12-13 14:49:18', 1639257036097, '4YwNf1fLZt9IQhJeHNWfBi', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('8793ac73-f9f5-466a-b6a4-2bb44384dfb4', '2021-12-06 12:06:03', 1638711196416, '30Chv2SmIry70YwtmtaKnj', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('87b4b190-894e-4a50-b9e3-4e30d838959c', '2022-01-10 19:23:24', 1641835992165, '5W8jRrZ6tWrTrqnKRtIQBf', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('88a19352-614f-4f97-8aee-0c9a235544b3', '2022-01-05 15:06:41', 1641374619027, '5BwQjRasNcdRPuVWKcHto2', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('89f881f4-e085-4d4f-8089-550f12046723', '2021-12-15 16:09:38', 1639567560533, '3PdcxgzpWzAsUGgkmykIFc', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('8a03d6bf-35ae-4799-8bef-63378884501f', '2021-12-06 12:06:03', 1638727794808, '1HNs07uZxZniPNmniw2GTa', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('8a785011-aea2-42f8-b4c3-a8e75e151c79', '2022-01-06 23:15:49', 1641497900014, '3rCNmRonlHN1TXQLcG3dSk', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('8ab02695-59e0-4a44-bde8-4157aad598d2', '2022-01-05 15:06:44', 1641251312985, '75IN3CtuZwTHTnZvYM4qnJ', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('8addfb30-23bd-42b1-bd6f-3f61c0d69926', '2022-01-10 19:23:24', 1641836258687, '0GAyuCo975IHGxxiLKDufB', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('8dbcf729-b686-405c-a064-8359aa02152b', '2021-12-08 12:12:18', 1638917133235, '2DTpP3caqX3QdJIEoS83mD', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('907b1549-2053-4329-a84b-ac4e5132bb0a', '2021-12-15 16:09:38', 1639521152092, '6Ius4TC0L3cN74HT7ENE6e', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('90f674c7-69e2-4362-a93e-fcb028432696', '2021-12-06 16:58:45', 1638801596890, '5wfyoR8XOkw45QRtFOoxyi', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('911824fe-1ea7-4f02-bd90-55f5f846a849', '2022-01-05 16:10:56', 1641220191829, '1zKOagmkCtXuGmCivG8HZE', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('914e7f10-7b7e-4ca6-82e3-3e3de8cd9b0a', '2022-01-10 19:23:24', 1641837115862, '5BwQjRasNcdRPuVWKcHto2', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('9150a4e6-6fc4-40dc-9f97-f9dd794a5786', '2021-12-06 12:06:03', 1638735938727, '1HNs07uZxZniPNmniw2GTa', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('923aed33-c159-472e-ae38-38be86baf92d', '2022-01-10 12:32:40', 1641643535894, '1IjxCFAyR1ysajk10iHsKh', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('9298c57d-f1f9-4873-ab77-2cbaf13fe9ec', '2021-12-06 12:06:03', 1638728382498, '1HNs07uZxZniPNmniw2GTa', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('93bd18ee-d67c-47cf-974a-17000f4656d8', '2021-12-15 16:09:38', 1639567778768, '4TIqzdAssasqx3DAe6cG9J', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('946225d6-630c-44b2-b9a5-483996fdbb6a', '2022-01-10 19:23:24', 1641837468754, '2cnKST6T9qUo2i907lm8zX', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('946ca9df-286a-4112-a54b-67bef6a43bed', '2021-12-06 16:58:45', 1638741832045, '1HNs07uZxZniPNmniw2GTa', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('95225b25-db4c-4802-81b7-278864aba832', '2022-01-05 16:10:56', 1641336304153, '5W8jRrZ6tWrTrqnKRtIQBf', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('954e8c73-42f5-416d-b163-0d3e9d2d76c6', '2022-01-05 16:10:56', 1641247484444, '5DJNyvuMmZfsfvdTpMMmUq', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('958f6cc5-1731-4fce-9b4d-048bef0f2add', '2022-01-06 23:15:49', 1641502567618, '22L7bfCiAkJo5xGSQgmiIO', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('96157556-8e82-4fc4-b9e5-c69337007742', '2022-01-10 12:32:40', 1641653911528, '22L7bfCiAkJo5xGSQgmiIO', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('967dbd1a-caca-40f5-ac06-4707993792ec', '2022-01-05 15:06:47', 1641216648662, '5lWUeSYO61UYgNlFlqcwYl', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('96e3c35a-8539-487b-81a8-1434b673cbae', '2022-01-10 12:32:40', 1641678927337, '2Im64pIz6m0EJKdUe6eZ8r', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('971ea289-4c12-49e9-b8f6-037ba0ed4dac', '2022-01-05 15:06:46', 1641218282884, '5hTpBe8h35rJ67eAWHQsJx', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('97780aea-680c-40d4-bd52-cad76ba22139', '2022-01-06 23:15:49', 1641485239888, '6K07Ahf6V7CAQn0ikrOztl', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('978c1559-a47f-4879-b038-afd86c0e2c0e', '2021-12-13 14:49:18', 1639266532417, '2IT0T0EqPaUxasjl2o8J2G', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('99712de7-73d6-4e39-b229-09fb771b3910', '2021-12-13 14:49:18', 1639258601039, '4qRjfovbhI4EwP7VQNfxVW', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('99a346fa-49b0-4d64-a473-0fcf2e6c0c6b', '2022-01-10 12:32:40', 1641726071126, '1ZHYJ2Wwgxes4m8Ba88PeK', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('9a8036f4-05d3-409f-853d-274e8bade81e', '2022-01-05 16:10:56', 1641250211370, '3zpGIFghtnVlwMXWyKW474', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('9af2b03b-e12b-4915-9d36-d0129eb44de6', '2021-12-06 16:58:45', 1638799910681, '40YcuQysJ0KlGQTeGUosTC', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('9c6881e7-5111-4293-b7e8-2b827699b603', '2022-01-10 12:32:40', 1641676374114, '3l6lmZCaZdnc90MI2BktqP', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('9c795b04-9e93-4087-a22e-75ee22ec494e', '2022-01-05 15:06:46', 1641219049976, '7g9DNzAU2QP88rE4BgIJpp', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('9da7bb47-bda8-45f5-945e-c9de27a34140', '2021-12-15 16:09:38', 1639525726543, '4LaCk8mWMThcp3yg2Lej0z', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('9df6ba07-fc63-4560-9945-8594cdf95a2e', '2021-12-06 16:58:45', 1638799659522, '3iVcZ5G6tvkXZkZKlMpIUs', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('9e23a535-4118-4d9f-b2a6-8f67b30acabd', '2022-01-05 16:10:56', 1641248726585, '7FIWs0pqAYbP91WWM0vlTQ', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('9e413c5f-b643-4b64-ac82-12851456fb0f', '2022-01-05 16:10:56', 1641219049976, '7g9DNzAU2QP88rE4BgIJpp', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('9f1d5708-a49f-4126-af4c-7d42bcd442ce', '2021-12-06 16:58:45', 1638798116602, '1AgSUWSzmza5jF6ER5R68v', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('9fce2c5f-cf77-4e3f-9c52-af516ec71baa', '2021-12-15 16:09:38', 1639481318825, '34BGMLybIR9qEHYS8aiVnQ', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('a0d0eec8-ddc3-426e-a819-9552f5d00032', '2022-01-10 12:32:40', 1641642416142, '5jHilrZDaP1vJMZfdN1He3', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('a0fadca4-ce1f-4278-a6d3-46cfeb359c66', '2021-12-13 14:49:18', 1639339621583, '3owESnQzGKXJhdZQDdXppK', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('a20ca41e-a31e-4e0c-98b6-b2e38bfeab29', '2021-12-13 14:49:18', 1639259195191, '62vpWI1CHwFy7tMIcSStl8', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('a216c2a0-e982-4460-95a1-e5de833c4a5b', '2021-12-08 15:12:05', 1638965461354, '5tz69p7tJuGPeMGwNTxYuV', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('a25e35d0-f385-4e80-973c-eae822d88b16', '2022-01-06 23:15:49', 1641498751976, '22L7bfCiAkJo5xGSQgmiIO', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('a35ff30a-8dd3-41b3-9f14-68a5a1a6b30d', '2022-01-05 16:10:56', 1641218073241, '7Gc9OoiYsUrByC8tzD7kYY', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('a3872828-f403-4afc-a12d-e4bc841a12e9', '2021-12-06 16:58:45', 1638801378797, '51Fjme0JiitpyXKuyQiCDo', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('a3fb8ad9-bb5e-4247-a035-94bc9ea076f9', '2021-12-06 16:58:45', 1638745052990, '6I6NX6tjGsxFAsIfGzY9lJ', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('a4ae0b8a-79e1-4f1e-9327-447f32c5b089', '2022-01-05 16:10:56', 1641335762176, '22L7bfCiAkJo5xGSQgmiIO', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('a62cb7e0-c1bb-480c-a2b9-79f7adc47b0d', '2021-12-08 12:12:18', 1638879325277, '4TlbZgqxhJ6uN3tpVyjw90', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('a6a5dd27-f0e8-4612-98f1-d87acaf5410c', '2022-01-10 12:32:40', 1641677490170, '2cnKST6T9qUo2i907lm8zX', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('a76179a5-28c1-4af4-8fc7-8482183d1dec', '2021-12-13 14:49:18', 1639303070152, '30Chv2SmIry70YwtmtaKnj', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('a7c68124-0400-46b7-8647-3ba07c1e75b0', '2021-12-06 16:58:45', 1638739785764, '4Tjh34RS4ACZ6f6srlDBg8', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('a87faca4-b109-4efe-91a1-f92e5e67b1fd', '2022-01-10 12:32:40', 1641658721084, '77IAeEz8LEchPN8UNjaTJ2', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('a9cc6329-8808-4fea-bd52-b2e5b5612867', '2021-12-13 14:49:18', 1639313364629, '6Ius4TC0L3cN74HT7ENE6e', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('ac305130-0aa6-4a46-8929-383215de233a', '2022-01-05 16:10:56', 1641217525400, '7e5z8Set6bsGDh8KIsZnoX', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('ac8dd19b-26fc-4b8f-83f6-d3ec3986f145', '2022-01-05 15:06:41', 1641373987148, '0GAyuCo975IHGxxiLKDufB', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('acad0e13-5673-409d-b90f-fdcbc40c3c21', '2022-01-10 12:32:40', 1641657453109, '6I6NX6tjGsxFAsIfGzY9lJ', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('ad0f6f6c-1276-4f94-b2ab-023c7fcc22b5', '2022-01-05 15:06:45', 1641220735502, '6N22FZs2ZhPBYi3b9XPajV', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('ad1d6860-48a5-4b2e-9e3c-009fd5442481', '2021-12-15 16:09:38', 1639567369593, '794IGyga5qnhlzOUimLOMw', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('ad5800a8-b2c6-4725-a6cb-3b1e4bd7ea1d', '2021-12-15 16:09:38', 1639525243032, '7FIWs0pqAYbP91WWM0vlTQ', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('ade8047d-1090-4a2c-9c58-d8ee107928ce', '2022-01-06 23:15:49', 1641484064114, '2Im64pIz6m0EJKdUe6eZ8r', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('aef796c3-c9a2-4d71-a09a-ec349e1cc80e', '2022-01-05 15:06:41', 1641374120089, '08LwMWf5Tcfsd752EPzFV0', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('af9960dc-aa0b-4d61-bf23-f57e33070a06', '2021-12-15 16:09:38', 1639568496660, '5lw8Mgb4LyhriPIC86gV6e', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('afd555b3-5a9f-47dd-b003-008108e4eef6', '2021-12-13 14:49:18', 1639259655699, '30Chv2SmIry70YwtmtaKnj', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('b11d69bf-5c0a-4f9e-9c3d-1e97aa9b19b7', '2022-01-05 16:10:56', 1641201132077, '30Chv2SmIry70YwtmtaKnj', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('b16cdb4d-62ca-4b4b-a8e0-f4fa033afbbc', '2021-12-06 16:58:45', 1638800072886, '794IGyga5qnhlzOUimLOMw', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('b2249193-e252-427a-9c5e-30be0bc00f7c', '2021-12-15 16:09:38', 1639483473867, '3GVkPk8mqxz0itaAriG1L7', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('b25e30c8-54bf-448b-9be7-0b0c4d0221cf', '2021-12-15 16:09:38', 1639521855430, '5wfyoR8XOkw45QRtFOoxyi', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('b2963bb6-5564-49e4-ac1e-4603c8c46c40', '2021-12-06 16:58:45', 1638796945291, '4dASQiO1Eoo3RJvt74FtXB', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('b330caf6-3cf0-42a4-ab0b-8dad17e60865', '2021-12-06 12:06:03', 1638710977177, '62vpWI1CHwFy7tMIcSStl8', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('b4e5bacc-760b-4f75-858e-2958d7e5e449', '2022-01-05 15:06:45', 1641247484444, '5DJNyvuMmZfsfvdTpMMmUq', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('b5c2fb62-a674-4262-abbb-d0598a197ed2', '2021-12-06 12:06:03', 1638713722149, '4txn9qnwK3ILQqv5oq2mO3', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('b5ed3ba5-b428-4d5c-8e23-1d313bd16401', '2021-12-08 12:12:18', 1638917592473, '5Hc35BziLaXfLebKmds2FV', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('b6022034-cb46-4544-a60a-e2710ab4d106', '2021-12-06 18:51:47', 1638811944230, '27NovPIUIRrOZoCHxABJwK', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('b7ddee61-1d24-40c2-8408-3315b7f510b7', '2021-12-06 17:38:19', 1638808648892, '5h5tBFnbcVioFXiOixTn6E', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('b7df4cdc-b9cd-4200-8f83-33486731b585', '2021-12-06 18:04:40', 1638809783828, '2PpruBYCo4H7WOBJ7Q2EwM', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('b7e749a5-15a9-47a2-b041-ec5b121bed4c', '2021-12-08 12:12:18', 1638830149068, '6NyhBA9M6KK0fuVsojxL00', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('b86e7735-705c-45cc-bc8b-04a76ade7bed', '2021-12-06 12:06:03', 1638736350202, '4YwNf1fLZt9IQhJeHNWfBi', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('b94a88b2-faa6-4608-9e20-97a5f8b2ce7d', '2021-12-06 18:29:14', 1638810676465, '1SC5rEoYDGUK4NfG82494W', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('b9e19312-f4e8-4437-ac96-ea3d7ff7e484', '2022-01-05 15:06:42', 1641337001139, '2cnKST6T9qUo2i907lm8zX', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('b9fd6a98-7252-414e-babc-5f7da28d2425', '2021-12-15 16:09:38', 1639526288833, '7r8lp6nukhNPK9QPC79k30', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('ba9cf9fe-f561-4208-be96-66334dc83512', '2022-01-05 16:10:56', 1641220417583, '4Tf94tAHtlQxjbeeyU3y7C', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('bae40b35-5927-4346-a90f-795cd86f3ec3', '2021-12-08 12:12:18', 1638919533610, '2KMPEI406H9G8UqiWDfuTK', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('bb5f7b01-5daf-40c2-9988-94e7dbfb5ce1', '2021-12-06 12:06:03', 1638712576605, '01VGA34ATxwp0Xo1ldduo2', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('bc807131-8f44-4021-8c93-9d0909532ee6', '2021-12-13 14:49:17', 1639342699867, '7KXjTSCq5nL1LoYtL7XAwS', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('bce3a665-48aa-423d-8b2f-085e2076625a', '2022-01-05 16:10:56', 1641374120089, '08LwMWf5Tcfsd752EPzFV0', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('bd54cdd7-97f6-4611-9e1c-5c89221680f0', '2022-01-10 12:32:40', 1641659780287, '1vvnYpYEMVB4aq9I6tHIEB', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('bf240d60-8563-4445-8ef4-84b227829e41', '2021-12-06 12:06:03', 1638713458136, '6Ius4TC0L3cN74HT7ENE6e', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('bf34796f-194a-4dfe-b8dc-90fb35541e96', '2022-01-05 15:06:41', 1641338580751, '0GAyuCo975IHGxxiLKDufB', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('bf38eab7-b01e-401a-bf96-451c36250097', '2021-12-15 16:09:38', 1639526105248, '54yT3t8hSaJUvdHer3ZaB1', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('bf452e80-b3ff-4220-a98e-7ad04eb05981', '2021-12-15 16:09:38', 1639524612710, '4r9hiElqKWMPT4Z3vN2exq', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('bfacb68c-32e7-4851-b404-b66715591fdb', '2022-01-05 16:10:56', 1641218530522, '5Hc35BziLaXfLebKmds2FV', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('c23dd62e-a207-4261-8d00-51e3bcb8126c', '2022-01-05 15:06:42', 1641337220149, '1D3z6HTiQsNmZxjl7F7eoG', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('c28505de-3d42-4862-ba43-8845dafe9bcc', '2021-12-06 17:10:04', 1638806993774, '722tgOgdIbNe3BEyLnejw4', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('c2b0822f-476e-455c-bea6-9657972aabbf', '2021-12-13 14:49:18', 1639260952213, '01VGA34ATxwp0Xo1ldduo2', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('c31a1e3a-d5eb-4c70-beb3-efe45e8f425e', '2021-12-06 16:58:45', 1638742886261, '1W7zkKgRv9mrLbfdQ8XyH3', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('c41dd7dd-0816-4368-96d0-edcc52ed3aaf', '2021-12-13 14:49:18', 1639341154218, '3DR7shAbkNyqgZjYnHZLh2', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('c428b148-27f0-4c1b-9a62-4e7417a5ad5d', '2021-12-13 14:49:18', 1639323120478, '16qYlQ6koFxYVbiJbGHblz', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('c49c4052-3bb6-46d2-8a9b-cc690fd89764', '2021-12-06 16:58:45', 1638744410940, '1HNs07uZxZniPNmniw2GTa', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('c77e7a4a-e817-4f8a-8645-9d6453c0eade', '2021-12-13 14:49:18', 1639264200368, '5TvLB4zBOFWHcnDoWVI4Mw', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('c787f6d6-52fd-40fe-bb5c-a73bbe5d3f3b', '2022-01-05 15:06:46', 1641219263271, '2ygMBIctKIAfbEBcT9065L', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('c7d42bd5-ee6c-49f9-bf6f-4bcb100cb3a0', '2021-12-08 12:12:18', 1638960185164, '6N22FZs2ZhPBYi3b9XPajV', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('c7dcd556-67cd-4699-b264-12074c4e4595', '2021-12-08 12:12:18', 1638915572889, '4jPy3l0RUwlUI9T5XHBW2m', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('c8137b39-fcfc-467f-98a5-fa53c57f7880', '2022-01-10 19:23:24', 1641836698294, '5lLNBIyjp72btcnrjBG751', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('c855a689-4738-403f-99c0-1fc9075b561d', '2021-12-08 12:12:18', 1638916891478, '0zO8ctW0UiuOefR87OeJOZ', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('ca4c6359-6ab9-4537-953f-3d8ba50f5521', '2021-12-15 16:09:38', 1639524376806, '08QaHlMPWuO5PUxjl61bXn', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('ca755008-a9c7-4f40-ba52-f34aeaec3b6b', '2021-12-06 16:58:45', 1638796277111, '0Y7di9ZCmB6Elad5WISaPc', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('cb816c27-9750-488d-a3bb-678042000cdb', '2021-12-15 16:09:38', 1639522275109, '5Hc35BziLaXfLebKmds2FV', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('cba844de-6b2f-4e07-9e03-44f672194518', '2021-12-06 19:00:15', 1638813138139, '1BR5vhAlaoUiijQ28p6jlN', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('cdb6f17d-a3ae-4253-a2f0-1db8635d74aa', '2021-12-15 16:09:38', 1639522455323, '36J0iaPDGbYGsHvYpaYs3k', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('cdd637f3-fa66-4cdf-be9b-b5c37541d195', '2022-01-05 16:10:56', 1641216648662, '5lWUeSYO61UYgNlFlqcwYl', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('ce80c816-e92d-4d19-8e72-ac1b39e2226a', '2022-01-05 15:06:44', 1641250211370, '3zpGIFghtnVlwMXWyKW474', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('d07ba257-e617-4281-b473-6122e4875b6c', '2022-01-05 16:10:56', 1641336439991, '08LwMWf5Tcfsd752EPzFV0', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('d27449ed-7042-4884-8302-ba9006eaabda', '2022-01-05 15:06:47', 1641198399546, '6Ius4TC0L3cN74HT7ENE6e', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('d5b9b7b2-2bed-46a1-a3ce-0e2703428445', '2021-12-08 12:12:18', 1638915260216, '1W7zkKgRv9mrLbfdQ8XyH3', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL);
INSERT INTO `scrobble` (`Id`, `CreationDate`, `PlayedAt`, `TrackId`, `UserId`, `ProfileUserId`) VALUES
('d5f35b5a-c5ee-4013-9e7c-b5bf6c35592b', '2021-12-06 12:06:03', 1638710383185, '4qRjfovbhI4EwP7VQNfxVW', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('d6163d8d-692e-4be6-890d-cabd4ebce9e6', '2022-01-10 12:32:40', 1641743297199, '22L7bfCiAkJo5xGSQgmiIO', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('d66740d6-dffe-428e-aea9-dbcdff8cd880', '2021-12-06 16:58:45', 1638798689530, '4jTiyLlOJVJj3mCr7yfPQD', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('d6a5a663-d0e8-4f25-8ae1-ca529fb8ab00', '2022-01-10 12:32:40', 1641655747141, '08LwMWf5Tcfsd752EPzFV0', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('d7029f19-cc41-42f8-859e-f20291bdb70e', '2022-01-10 12:32:40', 1641644232507, '23SZWX2IaDnxmhFsSLvkG2', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('d71d2e6d-5f3c-4e16-9ce0-0572b6e63fe6', '2022-01-05 15:06:45', 1641220191829, '1zKOagmkCtXuGmCivG8HZE', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('d74019d4-e827-4207-81bd-7e2ceb1ec105', '2022-01-10 12:32:40', 1641654548448, '5BwQjRasNcdRPuVWKcHto2', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('da982a44-f2ba-4905-996a-b24151388013', '2021-12-08 12:12:18', 1638915984426, '1PS1QMdUqOal0ai3Gt7sDQ', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('db40359c-c782-4405-981c-e60fb56445a5', '2021-12-06 12:06:03', 1638736222234, '1HNs07uZxZniPNmniw2GTa', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('db4e10ad-4c5e-4fa8-b87e-2e1ebcef84e2', '2022-01-10 12:32:40', 1641662089665, '3MWlVSkoLS1e66nlZ2tuWJ', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('dbc629ef-13ce-4293-b549-aa26ae5dd4f4', '2022-01-10 12:32:40', 1641642695134, '6P6HGbOoWUynE2U7yLwLnY', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('dc183ae6-bd87-492d-9a90-816dd11e16f4', '2022-01-06 23:15:49', 1641497177016, '1UGD3lW3tDmgZfAVDh6w7r', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('dd1542fa-f781-42e8-9a5a-90efb8650ab7', '2022-01-05 16:10:56', 1641218282884, '5hTpBe8h35rJ67eAWHQsJx', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('dd9e482c-7ff1-483b-ae46-911f683a4c56', '2022-01-05 16:10:56', 1641198399546, '6Ius4TC0L3cN74HT7ENE6e', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('df49dc21-b08a-4ed9-b98f-1ba56c3c4d2d', '2022-01-05 16:10:56', 1641247223812, '2Nh2cMryoXl7BrZoIeN2Pr', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('df6ffc52-17f9-4ff1-9272-a6a7bd1de7e5', '2021-12-06 17:25:53', 1638807792075, '6N22FZs2ZhPBYi3b9XPajV', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('dfca6a58-c2fc-49ba-8d47-00ff31c74d79', '2021-12-06 12:06:03', 1638718914343, '4gkl7QbQvBd3TM9PhlWFkI', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('e05dcad2-06b2-4e9b-aebb-5a94c9f0fe62', '2021-12-13 14:49:18', 1639302849151, '62vpWI1CHwFy7tMIcSStl8', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('e183a544-6de6-4261-9a92-cebdb11cc1ed', '2021-12-06 16:58:45', 1638745595267, '7sMBvZCSUl99bJLXZaLa0b', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('e2b0dff1-79ad-445b-b9d4-5033369d7ff7', '2022-01-05 16:10:56', 1641338580751, '0GAyuCo975IHGxxiLKDufB', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('e2b6de2a-57b0-4a3c-a2f1-95ea47c03417', '2022-01-05 15:06:46', 1641218809299, '3owESnQzGKXJhdZQDdXppK', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('e2f97168-95ac-457e-b7b8-c0e0bc5aa000', '2021-12-08 12:12:18', 1638829906186, '4YwNf1fLZt9IQhJeHNWfBi', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('e30ff67e-0cfb-4738-9a06-62775d59ca5f', '2022-01-05 16:10:56', 1641217876226, '4EWCNWgDS8707fNSZ1oaA5', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('e3949f4c-fe84-49c6-bd7c-bf0ed8fb18ad', '2021-12-06 17:12:58', 1638807123508, '1AgSUWSzmza5jF6ER5R68v', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('e5fbed6c-be27-4661-85e9-81eebe7e0c5a', '2021-12-08 12:12:18', 1638916590660, '4TIqzdAssasqx3DAe6cG9J', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('e73ab5a1-dd9b-4f19-b189-79755c1c8ce7', '2021-12-08 12:12:18', 1638917339395, '4jTiyLlOJVJj3mCr7yfPQD', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('e7ac8d5d-c127-4c46-8c66-5d53f15b4c2e', '2022-01-05 15:06:41', 1641337648374, '4n6NDfYake476trCjJRNl0', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('e7cc6626-6fc0-48a0-96e5-c12594a5153c', '2021-12-13 14:49:18', 1639314538881, '4gkl7QbQvBd3TM9PhlWFkI', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('e7f4b6b7-862e-4116-8e98-1b58e319f537', '2021-12-13 14:49:18', 1639339798657, '2DjLLLV2r88a8TO0hVTVrS', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('e88d1b52-4192-4a1f-a61c-62b93d2c6ae5', '2022-01-05 16:10:56', 1641374619027, '5BwQjRasNcdRPuVWKcHto2', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('e900b26a-04d3-42ef-889b-1045652aa660', '2021-12-06 12:06:03', 1638710125167, '4Tjh34RS4ACZ6f6srlDBg8', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('e95cd87c-20cb-4d1e-9b60-71457995858d', '2022-01-05 15:06:47', 1641217092517, '7FdPNzOaG7FnIXiFm53cq4', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('ea6b26dc-dc3d-4c50-a3af-7f04adbe34c0', '2022-01-10 12:32:40', 1641659000082, '5rmcjZTrE9JR1YrbNZDFNW', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('ea700cd8-1294-4b8c-bfeb-a7df02bdca4a', '2022-01-10 12:32:40', 1641657647093, '2z3joGXrdGL2iEjIKQTiN1', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('ecd782ce-c905-4222-8a6a-e36aee7d1409', '2021-12-13 14:49:18', 1639300692576, '4YwNf1fLZt9IQhJeHNWfBi', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('ed61d91c-0e91-4909-b222-502e1aaba8f2', '2022-01-05 15:06:45', 1641247223812, '2Nh2cMryoXl7BrZoIeN2Pr', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('ed69e091-f5c1-421a-a7ad-266906f4bd7a', '2021-12-06 16:58:45', 1638737113125, '4txn9qnwK3ILQqv5oq2mO3', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('ee646a6c-fd03-40c9-8627-624b43b8d15a', '2021-12-06 12:06:03', 1638722796492, '1HNs07uZxZniPNmniw2GTa', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('eee33179-ece6-41a0-9f29-d4ceb033ab2a', '2022-01-06 23:15:49', 1641496822502, '4EndPA8b6FDWYp1RgsnLEB', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('efd214a4-9cd0-4b4e-9fce-99ca65cae2e2', '2022-01-05 15:06:47', 1641198529466, '4YwNf1fLZt9IQhJeHNWfBi', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('effd9eec-b9db-4eae-a8ab-60cd555665b4', '2021-12-06 12:06:03', 1638717896136, '16qYlQ6koFxYVbiJbGHblz', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('f05aa307-2191-4600-9e59-733067d6fd5d', '2021-12-13 14:49:18', 1639301997163, '4Tjh34RS4ACZ6f6srlDBg8', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('f0f09adf-75ad-4415-a6ac-2fd09bb790ec', '2022-01-05 15:06:45', 1641220581157, '4TlbZgqxhJ6uN3tpVyjw90', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('f121f937-6f8e-4a8a-b648-aa3107c7cd41', '2022-01-05 16:10:56', 1641248332880, '3U21A07gAloCc4P7J8rxcn', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('f1a5d005-a9e9-4e7d-b581-a1f3e762cb37', '2021-12-06 19:00:15', 1638813465428, '43jBqV3j3Xi1g6wO0bhIMd', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('f3bdc5d8-fe7a-41ec-8a9f-e9c5b0167866', '2021-12-06 18:29:14', 1638810534057, '3MWlVSkoLS1e66nlZ2tuWJ', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('f3d2c0db-7e48-4b17-95c4-a7bf03d5fcc0', '2021-12-06 16:58:45', 1638741042177, '4Tjh34RS4ACZ6f6srlDBg8', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('f4369bcc-8a91-4e2b-b3a6-31bb2a785a23', '2022-01-10 12:32:40', 1641644928112, '22L7bfCiAkJo5xGSQgmiIO', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('f62b0b63-37c7-4222-9213-6dd97fda8e50', '2021-12-13 14:49:18', 1639263750983, '4r9hiElqKWMPT4Z3vN2exq', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('f690f298-c65a-433a-a9f3-b3a441704a49', '2021-12-06 16:58:45', 1638798341887, '3bC1ahPIYt1btJzSSEyyrF', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('f7575dc3-cd08-478f-a686-eb14a95afb9f', '2022-01-05 16:10:56', 1641337867139, '5W8jRrZ6tWrTrqnKRtIQBf', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('f8b212b0-9655-47f1-a2f4-2ede21adfff4', '2021-12-06 16:58:45', 1638800510913, '3ydfhgIZIc2j39NLIhpJpq', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('f92d7e51-1cd5-4d40-9a70-6bd90a28f8ad', '2022-01-05 16:10:56', 1641216854950, '750vtNtNiQVl80E4baoJjd', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('f9c85ed3-e35b-4f06-985d-25de0485a46d', '2021-12-13 14:49:18', 1639301439147, '4txn9qnwK3ILQqv5oq2mO3', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('fa5e75fa-1730-42dc-bc73-19c62cf56c71', '2022-01-10 12:32:40', 1641657856150, '0HtOJj7Kl74s1Ngf3MWeif', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('faccec27-8b33-4bb9-914b-c56073e882d8', '2022-01-06 23:15:49', 1641499978947, '2Im64pIz6m0EJKdUe6eZ8r', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('fb2460e4-e512-42a9-a83e-2d45e27b2e4b', '2022-01-05 15:06:44', 1641249176480, '22L7bfCiAkJo5xGSQgmiIO', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('fc054696-8b75-4325-8205-3d1933e6ac4a', '2021-12-13 14:49:18', 1639313658215, '62vpWI1CHwFy7tMIcSStl8', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('fcaf93ae-0a9f-4c7e-9a26-644eb97e3365', '2021-12-08 12:12:18', 1638918023097, '57VeLYXrvNxe8Vs18K2M9W', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('fd5b6076-2a40-467b-9c31-a465f015e6e3', '2022-01-10 12:32:40', 1641642951347, '0NfYAsKygCYwPA2BgTZ1qg', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('fd75ccd2-e642-47e9-a931-3094801b991f', '2022-01-05 16:10:56', 1641337391671, '1d7q712nXjG98HiwHk7HFS', '895864ed-87a9-4649-bc96-2bfdeb5470a0', NULL),
('fe1e93a0-42e3-4bdf-b35a-bd72b681e663', '2021-12-06 12:06:03', 1638718190972, '62vpWI1CHwFy7tMIcSStl8', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('fec6b2c0-29d1-49fd-bb17-9735a2b32fb2', '2022-01-06 23:15:49', 1641458720463, '22L7bfCiAkJo5xGSQgmiIO', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL),
('ff445467-f3ba-492a-b2e2-16d9e58f1141', '2022-01-05 15:06:45', 1641220043916, '3ydfhgIZIc2j39NLIhpJpq', '77f9c419-e9f0-4d48-8d1e-5d0cbee36801', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `track`
--

CREATE TABLE `track` (
  `Id` varchar(255) NOT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `AlbumId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `track`
--

INSERT INTO `track` (`Id`, `CreationDate`, `Name`, `Image`, `AlbumId`) VALUES
('01VGA34ATxwp0Xo1ldduo2', '2021-12-13 14:49:18', 'Note to Self', 'https://i.scdn.co/image/ab67616d0000b2736aca031ccc27d2e4dd829d14', '7viNUmZZ8ztn2UB4XB3jIL'),
('08LwMWf5Tcfsd752EPzFV0', '2022-01-10 19:23:24', 'i n t e r l u d e', 'https://i.scdn.co/image/ab67616d0000b27310e6745bb2f179dd3616b85f', '4JAvwK4APPArjIsOdGoJXX'),
('08QaHlMPWuO5PUxjl61bXn', '2021-12-15 16:09:38', 'He\'s a Pirate', 'https://i.scdn.co/image/ab67616d0000b27338786c7492ac252797bb2648', '4Qe057XqKloVNhnPohj6Yo'),
('0Fs9cdPDhptWEDJmiCbkEW', '2021-12-06 17:32:27', 'She Knows (feat. Amber Coffman & Cults)', 'https://i.scdn.co/image/ab67616d0000b273c1bb124f993488cf21b269fc', '5FP9keIJnlSCKnkdVOf623'),
('0GAyuCo975IHGxxiLKDufB', '2022-01-10 19:23:24', 'l e t . g o . m y . h a n d (with Bas & 6LACK)', 'https://i.scdn.co/image/ab67616d0000b27310e6745bb2f179dd3616b85f', '4JAvwK4APPArjIsOdGoJXX'),
('0HtOJj7Kl74s1Ngf3MWeif', '2022-01-10 12:32:40', 'She\'s Mine Pt. 1', 'https://i.scdn.co/image/ab67616d0000b273f4ca75192df162f78a24023e', '3CCnGldVQ90c26aFATC1PW'),
('0JjM9bKm4wrwohMslcm892', '2021-12-06 16:58:45', 'Still Be Friends (feat. Tory Lanez & Tyga)', 'https://i.scdn.co/image/ab67616d0000b2730a70f97365dec77a1a86b785', '0KHIH7UC8WATEByfXGfYaY'),
('0JP9xo3adEtGSdUEISiszL', '2021-12-08 12:12:18', 'Moonlight', 'https://i.scdn.co/image/ab67616d0000b273806c160566580d6335d1f16c', '2Ti79nwTsont5ZHfdxIzAm'),
('0LJDFZohBgWOMvXQw0cc9W', '2021-12-15 16:09:38', 'Cigarettes On Patios', 'https://i.scdn.co/image/ab67616d0000b273d5d77ef5ffd80806d25ab50c', '5vN3lm8mcpQ9IoQ3Xutrkw'),
('0N3W5peJUQtI4eyR6GJT5O', '2021-12-06 18:04:40', 'King Kunta', 'https://i.scdn.co/image/ab67616d0000b273cdb645498cd3d8a2db4d05e1', '7ycBtnsMtyVbbwTfJwRjSP'),
('0NfYAsKygCYwPA2BgTZ1qg', '2022-01-10 12:32:40', 'Now Or Never - Bonus Track', 'https://i.scdn.co/image/ab67616d0000b27378de8b28de36a74afc0348b5', '748dZDqSZy6aPXKcI9H80u'),
('0O6cYePgIBlMQ0pAFate3q', '2022-01-10 12:32:40', 'Compton', 'https://i.scdn.co/image/ab67616d0000b27378de8b28de36a74afc0348b5', '748dZDqSZy6aPXKcI9H80u'),
('0Thqjtu54vKMP06pwZkAWp', '2022-01-10 12:32:40', 'G.O.M.D', 'https://i.scdn.co/image/ab67616d0000b273c6e0948bbb0681ff29cdbae8', '0UMMIkurRUmkruZ3KGBLtG'),
('0utlOiJy2weVl9WTkcEWHy', '2022-01-10 12:32:40', 'Neighbors', 'https://i.scdn.co/image/ab67616d0000b273f4ca75192df162f78a24023e', '3CCnGldVQ90c26aFATC1PW'),
('0UtnpKaReKUg2GquaSxCyD', '2021-12-06 16:58:45', 'Money Trees', 'https://i.scdn.co/image/ab67616d0000b27378de8b28de36a74afc0348b5', '748dZDqSZy6aPXKcI9H80u'),
('0Y7di9ZCmB6Elad5WISaPc', '2021-12-15 16:09:38', 'Dedicate', 'https://i.scdn.co/image/ab67616d0000b2732cfcc913c36f0e1776f4bb65', '50yFYgKdwJANZ5O9MIbMkg'),
('0yruV4sUwyczq5cxMRRljU', '2021-12-06 18:29:14', 'DRUGS', 'https://i.scdn.co/image/ab67616d0000b2738a72ff5c897ae0b18eb064a8', '0EomGnN4zv8AC2Zi7NL1bV'),
('0zO8ctW0UiuOefR87OeJOZ', '2021-12-08 12:12:18', 'Collard Greens', 'https://i.scdn.co/image/ab67616d0000b27336977e237a8f70ec6c990636', '7Et3bSTLLqdABO1qCxUplS'),
('16qYlQ6koFxYVbiJbGHblz', '2021-12-13 14:49:18', 'G.O.M.D.', 'https://i.scdn.co/image/ab67616d0000b2736aca031ccc27d2e4dd829d14', '7viNUmZZ8ztn2UB4XB3jIL'),
('192RjH0gN6en7nE6ElN96T', '2021-12-08 12:12:18', 'Wishing For A Hero (feat. BJ The Chicago Kid)', 'https://i.scdn.co/image/ab67616d0000b273339f780dfdbc38558ea0761d', '39xhYyNNDatQtgKw2KdXMz'),
('1AgSUWSzmza5jF6ER5R68v', '2021-12-06 17:12:58', 'THRU THE NIGHT (feat. Bryson Tiller)', 'https://i.scdn.co/image/ab67616d0000b27357c38b379fbaa7bfef03934d', '7xfcihbsBamUi6sezd0oOG'),
('1AT4xjNarTswd0UZ5FlmKF', '2021-12-06 19:00:15', 'Motiv8', 'https://i.scdn.co/image/ab67616d0000b273cf0f0affd0138a7442f13706', '4Wv5UAieM1LDEYVq5WmqDd'),
('1BR5vhAlaoUiijQ28p6jlN', '2021-12-06 19:00:15', 'Backseat Freestyle', 'https://i.scdn.co/image/ab67616d0000b27378de8b28de36a74afc0348b5', '748dZDqSZy6aPXKcI9H80u'),
('1D3z6HTiQsNmZxjl7F7eoG', '2022-01-10 19:23:24', 'm y . l i f e (with 21 Savage & Morray)', 'https://i.scdn.co/image/ab67616d0000b27310e6745bb2f179dd3616b85f', '4JAvwK4APPArjIsOdGoJXX'),
('1d7q712nXjG98HiwHk7HFS', '2022-01-05 16:10:56', 'a p p l y i n g . p r e s s u r e', 'https://i.scdn.co/image/ab67616d0000b27310e6745bb2f179dd3616b85f', '4JAvwK4APPArjIsOdGoJXX'),
('1EaKU4dMbesXXd3BrLCtYG', '2021-12-06 16:58:45', 'ELEMENT.', 'https://i.scdn.co/image/ab67616d0000b2738b52c6b9bc4e43d873869699', '4eLPsYPBmXABThSJ821sqY'),
('1HNs07uZxZniPNmniw2GTa', '2021-12-13 14:49:18', 'Apparently', 'https://i.scdn.co/image/ab67616d0000b2736aca031ccc27d2e4dd829d14', '7viNUmZZ8ztn2UB4XB3jIL'),
('1IeCWMwZs4rCmwPOjZYWN7', '2021-12-08 12:12:18', 'Poke It Out (feat. J. Cole)', 'https://i.scdn.co/image/ab67616d0000b2738eafaeccd2cea429586798ea', '2DXRWlFTI8l2YvBD4iFUK8'),
('1IjxCFAyR1ysajk10iHsKh', '2022-01-10 12:32:40', 'Bitch, Don’t Kill My Vibe - International Remix / Explicit Version', 'https://i.scdn.co/image/ab67616d0000b27378de8b28de36a74afc0348b5', '748dZDqSZy6aPXKcI9H80u'),
('1jaTQ3nqY3oAAYyCTbIvnM', '2022-01-06 23:15:49', 'WHATS POPPIN', 'https://i.scdn.co/image/ab67616d0000b27305a448540b069450ccfba889', '7AaqMMiYMvnMB3RcS8u3EY'),
('1PS1QMdUqOal0ai3Gt7sDQ', '2021-12-08 12:12:18', 'Gold Digger', 'https://i.scdn.co/image/ab67616d0000b273428d2255141c2119409a31b2', '5ll74bqtkcXlKE7wwkMq4g'),
('1SC5rEoYDGUK4NfG82494W', '2021-12-06 18:29:14', 'MONTERO (Call Me By Your Name)', 'https://i.scdn.co/image/ab67616d0000b273be82673b5f79d9658ec0a9fd', '6pOiDiuDQqrmo5DbG0ZubR'),
('1UGD3lW3tDmgZfAVDh6w7r', '2022-01-06 23:15:49', 'Devil In A New Dress', 'https://i.scdn.co/image/ab67616d0000b273d9194aa18fa4c9362b47464f', '20r762YmB5HeofjMCiPMLv'),
('1V4jC0vJ5525lEF1bFgPX2', '2021-12-06 16:58:45', 'Shots', 'https://i.scdn.co/image/ab67616d0000b2736a0f2bf4749bddc11f4ba8dc', '7qtQYJc0H6s3CK4c7Gp8GR'),
('1vicAuW47ccp1l5mYmaWi7', '2022-01-05 16:10:56', 'No Time (feat. Lil Durk)', 'https://i.scdn.co/image/ab67616d0000b273a931e451af18a162c5fb59b8', '3WgAFg6y9jmNYLdC4xzHBF'),
('1vvnYpYEMVB4aq9I6tHIEB', '2022-01-10 12:32:40', '4 Your Eyez Only', 'https://i.scdn.co/image/ab67616d0000b273f4ca75192df162f78a24023e', '3CCnGldVQ90c26aFATC1PW'),
('1W7zkKgRv9mrLbfdQ8XyH3', '2021-12-08 12:12:18', 'Gangsta', 'https://i.scdn.co/image/ab67616d0000b273cb4ec52c48a6b071ed2ab6bc', '5rOHrnrRomvSJhQLGVtfJ8'),
('1ZdhOMWyFR8Iv9eylMGYg2', '2021-12-15 16:09:38', 'Mount Everest', 'https://i.scdn.co/image/ab67616d0000b273e4c03429788f0aff263a5fc6', '0FSsRH1jeZqKbGcHwq3UO0'),
('1ZHYJ2Wwgxes4m8Ba88PeK', '2022-01-10 12:32:40', 'Monster', 'https://i.scdn.co/image/ab67616d0000b273d9194aa18fa4c9362b47464f', '20r762YmB5HeofjMCiPMLv'),
('1zKOagmkCtXuGmCivG8HZE', '2022-01-05 16:10:56', 'Icee Pop', 'https://i.scdn.co/image/ab67616d0000b2732a393fd3499f622d56846fa8', '0N75npNB8Wo93bY41XjHr7'),
('22L7bfCiAkJo5xGSQgmiIO', '2022-01-10 12:32:40', 'All Of The Lights', 'https://i.scdn.co/image/ab67616d0000b273d9194aa18fa4c9362b47464f', '20r762YmB5HeofjMCiPMLv'),
('23OYT3SFtoJqhiAUqktbc1', '2022-01-05 16:10:56', 'No Return (with The Kid LAROI & Lil Durk)', 'https://i.scdn.co/image/ab67616d0000b273a493e05c99d8ec5e8020ff2b', '7KSf6p0G0mZd7j60etVTwT'),
('23SZWX2IaDnxmhFsSLvkG2', '2022-01-10 12:32:40', 'Gorgeous', 'https://i.scdn.co/image/ab67616d0000b273d9194aa18fa4c9362b47464f', '20r762YmB5HeofjMCiPMLv'),
('25zlnOAzbVoOzIeXSvQFf1', '2021-12-15 16:09:37', 'Got It On Me', 'https://i.scdn.co/image/ab67616d0000b27377ada0863603903f57b34369', '7e7t0MCrNDcJZsPwUKjmOc'),
('27NovPIUIRrOZoCHxABJwK', '2021-12-06 18:51:47', 'INDUSTRY BABY (feat. Jack Harlow)', 'https://i.scdn.co/image/ab67616d0000b273ba26678947112dff3c3158bf', '622NFw5Yk0OReMJ2XWcXUh'),
('285pBltuF7vW8TeWk8hdRR', '2021-12-15 16:09:38', 'Lucid Dreams', 'https://i.scdn.co/image/ab67616d0000b273f7db43292a6a99b21b51d5b4', '6tkjU4Umpo79wwkgPMV3nZ'),
('2cnKST6T9qUo2i907lm8zX', '2022-01-10 19:23:24', 'a m a r i', 'https://i.scdn.co/image/ab67616d0000b27310e6745bb2f179dd3616b85f', '4JAvwK4APPArjIsOdGoJXX'),
('2DjLLLV2r88a8TO0hVTVrS', '2021-12-13 14:49:18', 'Rembrandt...Run It Back (with JID & J. Cole feat. Vince Staples)', 'https://i.scdn.co/image/ab67616d0000b273c0ae820e3b64854de4642101', '2n3quCZ0anEa46j2IveacI'),
('2DTpP3caqX3QdJIEoS83mD', '2021-12-15 16:09:38', 'Your Heart', 'https://i.scdn.co/image/ab67616d0000b2730ccce58d0ad92da7564800fd', '1VKFaHoIvkZTzsSRad2jDZ'),
('2fHFLyzAQYlguX5q0DfKlD', '2021-12-06 16:58:45', 'I Know There\'s Gonna Be (Good Times)', 'https://i.scdn.co/image/ab67616d0000b2736aa1dfa0a98baa542251df5a', '4gaNWHu5Caj3ItkYZ5i6uh'),
('2gZUPNdnz5Y45eiGxpHGSc', '2022-01-10 12:32:40', 'POWER', 'https://i.scdn.co/image/ab67616d0000b273d9194aa18fa4c9362b47464f', '20r762YmB5HeofjMCiPMLv'),
('2Im64pIz6m0EJKdUe6eZ8r', '2022-01-10 12:32:40', 'Lost In The World', 'https://i.scdn.co/image/ab67616d0000b273d9194aa18fa4c9362b47464f', '20r762YmB5HeofjMCiPMLv'),
('2IT0T0EqPaUxasjl2o8J2G', '2021-12-13 14:49:18', 'Christopher Walking', 'https://i.scdn.co/image/ab67616d0000b27362a57823eced1cb4fd93b2c1', '4MZnolldq7ciKKlbVDzLm5'),
('2JvzF1RMd7lE3KmFlsyZD8', '2021-12-08 12:12:18', 'MIDDLE CHILD', 'https://i.scdn.co/image/ab67616d0000b2737f37a4001ae7d8be430bd91b', '3XzSOIE6zGLliuqsVGLmUc'),
('2KMPEI406H9G8UqiWDfuTK', '2021-12-08 12:12:18', 'Breakin Bad (Okay)', 'https://i.scdn.co/image/ab67616d0000b273a1738a26c56f6f754302003c', '0giyK2LuJ6wcfVN2QXDIlB'),
('2Nh2cMryoXl7BrZoIeN2Pr', '2022-01-05 16:10:56', 'Dapper (feat. Anderson .Paak)', 'https://i.scdn.co/image/ab67616d0000b273085d6629aaaf7baa283d5c7d', '3mhZHDmHvIUAeAYH7MrXBW'),
('2PpruBYCo4H7WOBJ7Q2EwM', '2021-12-15 16:09:38', 'Hey Ya!', 'https://i.scdn.co/image/ab67616d0000b2736a6387ab37f64034cdc7b367', '1UsmQ3bpJTyK6ygoOOjG1r'),
('2uwnP6tZVVmTovzX5ELooy', '2022-01-10 12:32:40', 'Power Trip (feat. Miguel)', 'https://i.scdn.co/image/ab67616d0000b273c1bb124f993488cf21b269fc', '5FP9keIJnlSCKnkdVOf623'),
('2Yer0p7uB2lVBUAtANuuQp', '2021-12-06 18:51:47', 'Magic In The Hamptons (feat. Lil Yachty)', 'https://i.scdn.co/image/ab67616d0000b273013314e9861a2c4a796b2176', '3p81zUBFZ3zdzxceXKeVSK'),
('2ygMBIctKIAfbEBcT9065L', '2022-01-05 16:10:56', 'Pump It', 'https://i.scdn.co/image/ab67616d0000b273c6710b4a52539506c30e5354', '6VsJamdhvYKcnpwHAKULI0'),
('2z3joGXrdGL2iEjIKQTiN1', '2022-01-10 12:32:40', 'Ville Mentality', 'https://i.scdn.co/image/ab67616d0000b273f4ca75192df162f78a24023e', '3CCnGldVQ90c26aFATC1PW'),
('30Chv2SmIry70YwtmtaKnj', '2022-01-05 16:10:56', 'Hello', 'https://i.scdn.co/image/ab67616d0000b2736aca031ccc27d2e4dd829d14', '7viNUmZZ8ztn2UB4XB3jIL'),
('30Zcjs7pgEkmJA1lEbGSWT', '2022-01-05 16:10:56', 'FML', 'https://i.scdn.co/image/ab67616d0000b2732a7db835b912dc5014bd37f4', '7gsWAHLeT0w7es6FofOXk1'),
('33QXHN1SzNgHIRPr7qYknV', '2021-12-06 19:00:15', 'PIKACHU', 'https://i.scdn.co/image/ab67616d0000b273df16d539f508603bfb1efe02', '3YjfdLdpQcVI72uKhooZst'),
('34BGMLybIR9qEHYS8aiVnQ', '2021-12-15 16:09:38', 'Biggy', 'https://i.scdn.co/image/ab67616d0000b273a4fa160f5b540ce865f6c86d', '2dMzgk1yVFlOeOgZ0fC7Nt'),
('36J0iaPDGbYGsHvYpaYs3k', '2021-12-15 16:09:38', 'Down Bad (feat. JID, Bas, J. Cole, EARTHGANG & Young Nudy)', 'https://i.scdn.co/image/ab67616d0000b273c0ae820e3b64854de4642101', '2n3quCZ0anEa46j2IveacI'),
('39JRmdKFka1Oe09FoOCPI4', '2022-01-10 12:32:40', 'Selah', 'https://i.scdn.co/image/ab67616d0000b2731bb797bbfe2480650b6c2964', '0FgZKfoU2Br5sHOfvZKTI9'),
('3bC1ahPIYt1btJzSSEyyrF', '2021-12-06 16:58:45', 'Whistle', 'https://i.scdn.co/image/ab67616d0000b273871d85943145dde548f4ae09', '7eLwoxxWs6lfkVYJGkGNbk'),
('3CRDbSIZ4r5MsZ0YwxuEkn', '2021-12-08 12:12:18', 'Stressed Out', 'https://i.scdn.co/image/ab67616d0000b273de03bfc2991fd5bcfde65ba3', '3cQO7jp5S9qLBoIVtbkSM1'),
('3DK6m7It6Pw857FcQftMds', '2022-01-06 23:15:49', 'Runaway', 'https://i.scdn.co/image/ab67616d0000b273d9194aa18fa4c9362b47464f', '20r762YmB5HeofjMCiPMLv'),
('3DR7shAbkNyqgZjYnHZLh2', '2021-12-13 14:49:18', 'Creme', 'https://i.scdn.co/image/ab67616d0000b273aeb14ead136118a987246b63', '5g2INX6dnMIJG0xKygXwF3'),
('3fKdTr6Uv8HTb92Ih3QWxa', '2022-01-05 16:10:56', 'Pretty Girls', 'https://i.scdn.co/image/ab67616d0000b27316f00890f319eaccf4dd1570', '4Wb5bU9FkmZ84WkkL37rKA'),
('3GVkPk8mqxz0itaAriG1L7', '2021-12-15 16:09:38', 'Everybody Dies In Their Nightmares', 'https://i.scdn.co/image/ab67616d0000b273203c89bd4391468eea4cc3f5', '5VdyJkLe3yvOs0l4xXbWp0'),
('3iVcZ5G6tvkXZkZKlMpIUs', '2021-12-06 18:04:40', 'Alright', 'https://i.scdn.co/image/ab67616d0000b273cdb645498cd3d8a2db4d05e1', '7ycBtnsMtyVbbwTfJwRjSP'),
('3iXP0G94qFZiXgZGZb2i5R', '2021-12-08 12:12:18', 'Tension', 'https://i.scdn.co/image/ab67616d0000b273a1738a26c56f6f754302003c', '0giyK2LuJ6wcfVN2QXDIlB'),
('3l6lmZCaZdnc90MI2BktqP', '2022-01-10 12:32:40', 'Lost Ones', 'https://i.scdn.co/image/ab67616d0000b27399da48a530f6ca2ef86da3cc', '0fhmJYVhW0e4i33pCLPA5i'),
('3MWlVSkoLS1e66nlZ2tuWJ', '2022-01-10 12:32:40', 'For Whom The Bell Tolls', 'https://i.scdn.co/image/ab67616d0000b273f4ca75192df162f78a24023e', '3CCnGldVQ90c26aFATC1PW'),
('3oLe5ZILASG8vU5dxIMfLY', '2021-12-06 18:29:14', 'The Search', 'https://i.scdn.co/image/ab67616d0000b273942a0c9ac8f1def7c8805044', '46xdC4Qcvscfs3Ai2RIHcv'),
('3owESnQzGKXJhdZQDdXppK', '2022-01-05 16:10:56', 'Bang Bang', 'https://i.scdn.co/image/ab67616d0000b273642efc0b3f045f34316d2cf3', '0VWYRbEcvJcPrqMGJirO6q'),
('3PdcxgzpWzAsUGgkmykIFc', '2021-12-15 16:09:38', 'Welcome to Chilis', 'https://i.scdn.co/image/ab67616d0000b27315f04c6e3d7c57a5a4348bca', '1oxxysQmylUXuxzSdHlqUc'),
('3pjUyVbFmM96tYhSaKJwTt', '2022-01-10 12:32:40', 'Change', 'https://i.scdn.co/image/ab67616d0000b273f4ca75192df162f78a24023e', '3CCnGldVQ90c26aFATC1PW'),
('3QFInJAm9eyaho5vBzxInN', '2022-01-06 23:15:49', 'family ties (with Kendrick Lamar)', 'https://i.scdn.co/image/ab67616d0000b2731bfa23b13d0504fb90c37b39', '3r46DPIQeBQbjvjjV5mXGg'),
('3rCNmRonlHN1TXQLcG3dSk', '2022-01-06 23:15:49', 'Hell Of A Life', 'https://i.scdn.co/image/ab67616d0000b273d9194aa18fa4c9362b47464f', '20r762YmB5HeofjMCiPMLv'),
('3U21A07gAloCc4P7J8rxcn', '2022-01-05 16:10:56', 'All Mine', 'https://i.scdn.co/image/ab67616d0000b2730cd942c1a864afa4e92d04f2', '2Ek1q2haOnxVqhvVKqMvJe'),
('3w1WjD2zJqjBjDz5fwqQPJ', '2022-01-06 23:15:49', 'Tyler Herro', 'https://i.scdn.co/image/ab67616d0000b273aeb14ead136118a987246b63', '5g2INX6dnMIJG0xKygXwF3'),
('3wA4ronkc8ZcPXUP0fDgYA', '2022-01-05 16:10:56', 'Bad Day', 'https://i.scdn.co/image/ab67616d0000b273eaeb36403b9acd9001b6f827', '3k1lFVPUbpxngCtvkB9JkA'),
('3ydfhgIZIc2j39NLIhpJpq', '2022-01-05 16:10:56', 'Fuck You', 'https://i.scdn.co/image/ab67616d0000b2731c44d79c994c1a26aa387617', '5uR0dqBMYWZFYJT7mvPZ82'),
('3yfqSUWxFvZELEM4PmlwIR', '2021-12-06 16:58:45', 'The Real Slim Shady', 'https://i.scdn.co/image/ab67616d0000b273dbb3dd82da45b7d7f31b1b42', '6t7956yu5zYf5A829XRiHC'),
('3zpGIFghtnVlwMXWyKW474', '2022-01-05 16:10:56', 'Fire In The Sky', 'https://i.scdn.co/image/ab67616d0000b2735843d11205f6dd6a2ab5f967', '2kAqjStKcwlDD59H0llhGC'),
('40YcuQysJ0KlGQTeGUosTC', '2021-12-06 16:58:45', 'Me, Myself & I', 'https://i.scdn.co/image/ab67616d0000b27398acfa8c055deedc25e6081d', '09Q3WwGYsQe5ognkvVkmCu'),
('43jBqV3j3Xi1g6wO0bhIMd', '2021-12-13 14:49:18', 'Now and Later', 'https://i.scdn.co/image/ab67616d0000b27382d22e1d83fc1045ad33444a', '3fi4zQJmsXI2Hw2pl89aTh'),
('4at3d5QWnlibMVN75ECDrp', '2021-12-06 16:58:45', 'Pretty Little Fears (feat. J. Cole)', 'https://i.scdn.co/image/ab67616d0000b273e1530b42603367fdb2208d88', '3fc97ZWLIMc1xawhxbKrh2'),
('4D6TpthzUVNTjWQqfBW5Kb', '2022-01-10 12:32:40', 'All Of The Lights (Interlude)', 'https://i.scdn.co/image/ab67616d0000b273d9194aa18fa4c9362b47464f', '20r762YmB5HeofjMCiPMLv'),
('4dASQiO1Eoo3RJvt74FtXB', '2021-12-06 17:29:58', 'Sucker for Pain (with Wiz Khalifa, Imagine Dragons, Logic & Ty Dolla $ign feat. X Ambassadors)', 'https://i.scdn.co/image/ab67616d0000b2737d8dfcfd507069d7f2062caf', '704GHNtZhEe9TBgleCNNGv'),
('4EndPA8b6FDWYp1RgsnLEB', '2022-01-06 23:15:49', 'Blame Game', 'https://i.scdn.co/image/ab67616d0000b273d9194aa18fa4c9362b47464f', '20r762YmB5HeofjMCiPMLv'),
('4EWCNWgDS8707fNSZ1oaA5', '2022-01-05 16:10:56', 'Heartless', 'https://i.scdn.co/image/ab67616d0000b273346d77e155d854735410ed18', '3WFTGIO6E3Xh4paEOBY9OU'),
('4gkl7QbQvBd3TM9PhlWFkI', '2021-12-13 14:49:18', 'Love Yourz', 'https://i.scdn.co/image/ab67616d0000b2736aca031ccc27d2e4dd829d14', '7viNUmZZ8ztn2UB4XB3jIL'),
('4jPy3l0RUwlUI9T5XHBW2m', '2021-12-08 12:12:18', 'Mood (feat. iann dior)', 'https://i.scdn.co/image/ab67616d0000b27384c53fa832dfa265192419c5', '270o30h7cAlEhBnbuSpFZq'),
('4jTiyLlOJVJj3mCr7yfPQD', '2021-12-08 12:12:18', 'This Could Be Us', 'https://i.scdn.co/image/ab67616d0000b2734ca3fb4517ff722918877460', '6eDx949ONWDCN0O22wFZf7'),
('4KUUaKfBqPw1IOitTW3Pba', '2022-01-05 16:10:56', 'Ain\'t That Some Shit - Interlude', 'https://i.scdn.co/image/ab67616d0000b273c1bb124f993488cf21b269fc', '5FP9keIJnlSCKnkdVOf623'),
('4LaCk8mWMThcp3yg2Lej0z', '2021-12-15 16:09:38', 'Lesley', 'https://i.scdn.co/image/ab67616d0000b273faff2775e09d367194a2afef', '571KrRXa9nqtOUJQQOXeIz'),
('4n6NDfYake476trCjJRNl0', '2022-01-05 16:10:56', '1 0 0 . m i l ‘ (with Bas)', 'https://i.scdn.co/image/ab67616d0000b27310e6745bb2f179dd3616b85f', '4JAvwK4APPArjIsOdGoJXX'),
('4PnNzWe1LJoAMD5j5RHpI0', '2022-01-05 16:10:56', 'DEVASTATED', 'https://i.scdn.co/image/ab67616d0000b2733c7596dccb2aaca39e0cee3d', '2ZmDoyNYarmubD4vTfwh6g'),
('4qRjfovbhI4EwP7VQNfxVW', '2021-12-13 14:49:18', 'St. Tropez', 'https://i.scdn.co/image/ab67616d0000b2736aca031ccc27d2e4dd829d14', '7viNUmZZ8ztn2UB4XB3jIL'),
('4r9hiElqKWMPT4Z3vN2exq', '2021-12-15 16:09:38', 'A Lovely Night', 'https://i.scdn.co/image/ab67616d0000b2730bdf4dd39843ad48c5b66bc4', '3GU8BzFEAdFSRjc8jZkL3S'),
('4Tf94tAHtlQxjbeeyU3y7C', '2022-01-05 16:10:56', 'Beautiful Girls - Radio Edit', 'https://i.scdn.co/image/ab67616d0000b273938af0df95f45ce2d59c2d04', '3xNkswNSrzwSAIb6qleRrA'),
('4TIqzdAssasqx3DAe6cG9J', '2021-12-15 16:09:38', 'Ramen & OJ', 'https://i.scdn.co/image/ab67616d0000b2734fd8e64469ff9dd01faf50fe', '48ahZJLcagb8VTgRAuv6WQ'),
('4Tjh34RS4ACZ6f6srlDBg8', '2021-12-13 14:49:18', 'Fire Squad', 'https://i.scdn.co/image/ab67616d0000b2736aca031ccc27d2e4dd829d14', '7viNUmZZ8ztn2UB4XB3jIL'),
('4TlbZgqxhJ6uN3tpVyjw90', '2022-01-05 16:10:56', 'Genius (feat. Sia, Diplo, and Labrinth) - Lil Wayne Remix', 'https://i.scdn.co/image/ab67616d0000b2733f159ae07dd556323f39f47b', '0ujHQ5WCLuKJQXOqXpGtpf'),
('4txn9qnwK3ILQqv5oq2mO3', '2021-12-13 14:49:18', '03\' Adolescence', 'https://i.scdn.co/image/ab67616d0000b2736aca031ccc27d2e4dd829d14', '7viNUmZZ8ztn2UB4XB3jIL'),
('4VXIryQMWpIdGgYR4TrjT1', '2021-12-13 14:49:18', 'All Girls Are The Same', 'https://i.scdn.co/image/ab67616d0000b273f7db43292a6a99b21b51d5b4', '6tkjU4Umpo79wwkgPMV3nZ'),
('4wshBvO4qMrxJnPlfkeUWi', '2022-01-10 12:32:40', 'Bitch, Don’t Kill My Vibe - Remix', 'https://i.scdn.co/image/ab67616d0000b27378de8b28de36a74afc0348b5', '748dZDqSZy6aPXKcI9H80u'),
('4YiY551vHi6glMtgVxuqAy', '2022-01-10 19:23:24', 'c l o s e', 'https://i.scdn.co/image/ab67616d0000b27310e6745bb2f179dd3616b85f', '4JAvwK4APPArjIsOdGoJXX'),
('4YwNf1fLZt9IQhJeHNWfBi', '2022-01-05 16:10:56', 'Intro', 'https://i.scdn.co/image/ab67616d0000b2736aca031ccc27d2e4dd829d14', '7viNUmZZ8ztn2UB4XB3jIL'),
('4ZtFanR9U6ndgddUvNcjcG', '2021-12-06 16:58:45', 'good 4 u', 'https://i.scdn.co/image/ab67616d0000b273a91c10fe9472d9bd89802e5a', '6s84u2TUpR3wdUv4NgKA2j'),
('51Fjme0JiitpyXKuyQiCDo', '2021-12-06 16:58:45', 'Lalala', 'https://i.scdn.co/image/ab67616d0000b2738a6ccb507dd6a66f7f6e2440', '4WlC4FXhonJhNTXCQPGP3r'),
('54yT3t8hSaJUvdHer3ZaB1', '2021-12-15 16:09:38', 'Alexis', 'https://i.scdn.co/image/ab67616d0000b273e06d3c56b9c58b3a8b5402a7', '3LnC7gpHMt8XCxHO3TXCDp'),
('57VeLYXrvNxe8Vs18K2M9W', '2022-01-06 23:15:49', 'Way Out (feat. Big Sean)', 'https://i.scdn.co/image/ab67616d0000b273aeb14ead136118a987246b63', '5g2INX6dnMIJG0xKygXwF3'),
('5BwQjRasNcdRPuVWKcHto2', '2022-01-10 19:23:24', 'h u n g e r . o n . h i l l s i d e (with Bas)', 'https://i.scdn.co/image/ab67616d0000b27310e6745bb2f179dd3616b85f', '4JAvwK4APPArjIsOdGoJXX'),
('5DJNyvuMmZfsfvdTpMMmUq', '2022-01-05 16:10:56', 'Sour Patch Kids', 'https://i.scdn.co/image/ab67616d0000b273d67c496c586f830b6a73ea8c', '08IW6sUfN9fRYG8Xlgm4oC'),
('5h5tBFnbcVioFXiOixTn6E', '2021-12-06 17:38:19', 'Bitch, Don’t Kill My Vibe', 'https://i.scdn.co/image/ab67616d0000b27378de8b28de36a74afc0348b5', '748dZDqSZy6aPXKcI9H80u'),
('5Hc35BziLaXfLebKmds2FV', '2022-01-05 16:10:56', 'Drew Barrymore - Crankdat Remix', 'https://i.scdn.co/image/ab67616d0000b27364d51350615279b9ca2dd597', '5MirZPdM7d3AxK2ydiHeuB'),
('5HQVUIKwCEXpe7JIHyY734', '2021-12-08 12:12:18', 'Young, Wild & Free (feat. Bruno Mars)', 'https://i.scdn.co/image/ab67616d0000b2738596df2f2646ab9aba464c30', '11Bkx3E99vf0IlYPND61LJ'),
('5hTpBe8h35rJ67eAWHQsJx', '2022-01-05 16:10:56', 'Caroline', 'https://i.scdn.co/image/ab67616d0000b27360282020360f5048976275aa', '3lajefIuUk4SfzqVBSJy8p'),
('5jHilrZDaP1vJMZfdN1He3', '2022-01-10 12:32:40', 'The Recipe - Bonus Track', 'https://i.scdn.co/image/ab67616d0000b27378de8b28de36a74afc0348b5', '748dZDqSZy6aPXKcI9H80u'),
('5lLNBIyjp72btcnrjBG751', '2022-01-10 19:23:24', 't h e . c l i m b . b a c k', 'https://i.scdn.co/image/ab67616d0000b27310e6745bb2f179dd3616b85f', '4JAvwK4APPArjIsOdGoJXX'),
('5lw8Mgb4LyhriPIC86gV6e', '2021-12-15 16:09:38', 'RNP (feat. Anderson .Paak)', 'https://i.scdn.co/image/ab67616d0000b273e6d6d392a66a7f9172fe57c8', '6Pb7PMZtW0fuEM1lCGvCDu'),
('5lWUeSYO61UYgNlFlqcwYl', '2022-01-05 16:10:56', 'Lighter (feat. KSI)', 'https://i.scdn.co/image/ab67616d0000b2735ea1f461a1b5a752013803e6', '4Fhgi0Jr4OpapEwNNSHhdK'),
('5R691ipUYRDYW6ehapjoj6', '2022-01-10 19:23:24', '9 5 . s o u t h', 'https://i.scdn.co/image/ab67616d0000b27310e6745bb2f179dd3616b85f', '4JAvwK4APPArjIsOdGoJXX'),
('5rmcjZTrE9JR1YrbNZDFNW', '2022-01-10 12:32:40', 'She\'s Mine Pt. 2', 'https://i.scdn.co/image/ab67616d0000b273f4ca75192df162f78a24023e', '3CCnGldVQ90c26aFATC1PW'),
('5TvLB4zBOFWHcnDoWVI4Mw', '2021-12-13 14:49:18', 'I Got 5 On It - Tethered Mix from US', 'https://i.scdn.co/image/ab67616d0000b273a534060dd26f19f37035a29c', '1gkLMuAnI8U5z2yhyhhRQk'),
('5tz69p7tJuGPeMGwNTxYuV', '2021-12-08 15:12:05', '1-800-273-8255', 'https://i.scdn.co/image/ab67616d0000b273cfdf40cf325b609a52457805', '1HiN2YXZcc3EjmVZ4WjfBk'),
('5W8jRrZ6tWrTrqnKRtIQBf', '2022-01-10 19:23:24', 'p r i d e . i s . t h e . d e v i l (with Lil Baby)', 'https://i.scdn.co/image/ab67616d0000b27310e6745bb2f179dd3616b85f', '4JAvwK4APPArjIsOdGoJXX'),
('5wfyoR8XOkw45QRtFOoxyi', '2021-12-15 16:09:38', 'Professor X', 'https://i.scdn.co/image/ab67616d0000b273390f440a8eba0a7054cfd350', '5IHJygOAlKSo0ESGxsEhgB'),
('5zpcSMzRsQlfoRcwD8h0uj', '2021-12-13 14:49:18', 'ABC\'s', 'https://i.scdn.co/image/ab67616d0000b27366ec341c90a69fe51ffc067e', '79l9IyqcIEzuZQA5ANHTti'),
('62vpWI1CHwFy7tMIcSStl8', '2022-01-05 16:10:56', 'No Role Modelz', 'https://i.scdn.co/image/ab67616d0000b2736aca031ccc27d2e4dd829d14', '7viNUmZZ8ztn2UB4XB3jIL'),
('6AGON2BGdPmPMJGiiNuuwl', '2022-01-10 12:32:40', 'Immortal', 'https://i.scdn.co/image/ab67616d0000b273f4ca75192df162f78a24023e', '3CCnGldVQ90c26aFATC1PW'),
('6i6cWTCYBOKEdJnWjzm2yk', '2022-01-06 23:15:49', 'Hood Gone Love It (feat. Kendrick Lamar)', 'https://i.scdn.co/image/ab67616d0000b27343b788780e13ee12867dd9ca', '6bPbKuFNW6Vausf1PExvd9'),
('6I6NX6tjGsxFAsIfGzY9lJ', '2022-01-10 12:32:40', 'Deja Vu', 'https://i.scdn.co/image/ab67616d0000b273f4ca75192df162f78a24023e', '3CCnGldVQ90c26aFATC1PW'),
('6Ius4TC0L3cN74HT7ENE6e', '2022-01-05 16:10:56', 'Wet Dreamz', 'https://i.scdn.co/image/ab67616d0000b2736aca031ccc27d2e4dd829d14', '7viNUmZZ8ztn2UB4XB3jIL'),
('6K07Ahf6V7CAQn0ikrOztl', '2022-01-10 12:32:40', 'So Appalled', 'https://i.scdn.co/image/ab67616d0000b273d9194aa18fa4c9362b47464f', '20r762YmB5HeofjMCiPMLv'),
('6N22FZs2ZhPBYi3b9XPajV', '2022-01-05 16:10:56', 'Still Don\'t Know My Name', 'https://i.scdn.co/image/ab67616d0000b27389c39ba1acdf33ed7acd3867', '788r22Bhr3IHLTNPy8pZea'),
('6NyhBA9M6KK0fuVsojxL00', '2021-12-13 14:49:18', 'January 28th', 'https://i.scdn.co/image/ab67616d0000b2736aca031ccc27d2e4dd829d14', '7viNUmZZ8ztn2UB4XB3jIL'),
('6P6HGbOoWUynE2U7yLwLnY', '2022-01-10 12:32:40', 'Black Boy Fly - Bonus Track', 'https://i.scdn.co/image/ab67616d0000b27378de8b28de36a74afc0348b5', '748dZDqSZy6aPXKcI9H80u'),
('6xRsvyeB6omCCYdl7QSZes', '2021-12-08 12:12:18', 'Destiny\'s Song', 'https://i.scdn.co/image/ab67616d0000b273eb0699e58e5c91b1cd2283ee', '1EkLZjupNkyUjcZ7aon07W'),
('722tgOgdIbNe3BEyLnejw4', '2021-12-06 17:10:04', 'Black Skinhead', 'https://i.scdn.co/image/ab67616d0000b2731dacfbc31cc873d132958af9', '7D2NdGvBHIavgLhmcwhluK'),
('750vtNtNiQVl80E4baoJjd', '2022-01-05 16:10:56', 'Lose', 'https://i.scdn.co/image/ab67616d0000b2732310b70888c02f8a807b80c5', '2QT5OxkgbFNpZXVJDEmssK'),
('75IN3CtuZwTHTnZvYM4qnJ', '2022-01-05 16:10:56', 'My Name Is', 'https://i.scdn.co/image/ab67616d0000b2739bef45ee387f274ea3198c55', '0vE6mttRTBXRe9rKghyr1l'),
('77IAeEz8LEchPN8UNjaTJ2', '2022-01-10 12:32:40', 'Foldin Clothes', 'https://i.scdn.co/image/ab67616d0000b273f4ca75192df162f78a24023e', '3CCnGldVQ90c26aFATC1PW'),
('794IGyga5qnhlzOUimLOMw', '2021-12-15 16:09:38', 'Seize the Power', 'https://i.scdn.co/image/ab67616d0000b27338debe8dc40c62d7c593bed2', '2QgPGKzoN51qcEzGlHYk7j'),
('7b4ky1LlQLFhXHmhZkFgqV', '2021-12-08 12:12:18', 'Ladbroke Grove', 'https://i.scdn.co/image/ab67616d0000b273a61a61a007b55afc7d783fe9', '0vrKGjXSGcTsxNGxQdXT5p'),
('7bYZBVrnRfqeaPbhRyEvK3', '2022-01-05 16:10:56', 'Thrift Shop (feat. Wanz)', 'https://i.scdn.co/image/ab67616d0000b273938f1c0cc7d36a671ed226a7', '2pFX16u42q0e5F5vRmmzYT'),
('7dt6x5M1jzdTEt8oCbisTK', '2021-12-06 18:29:14', 'Better Now', 'https://i.scdn.co/image/ab67616d0000b273b1c4b76e23414c9f20242268', '6trNtQUgC8cgbWcqoMYkOR'),
('7e5z8Set6bsGDh8KIsZnoX', '2022-01-05 16:10:56', 'Housewives', 'https://i.scdn.co/image/ab67616d0000b27300dba11c081404c7d6913906', '0h7Rqxud5GknQMMoLHNx80'),
('7FdPNzOaG7FnIXiFm53cq4', '2022-01-05 16:10:56', 'Can\'t Let You Go (feat. Nick Grant)', 'https://i.scdn.co/image/ab67616d0000b2737b5cdd312cbec887d99ef15d', '5VSqSiMz865dFXnhhj2fgj'),
('7FIWs0pqAYbP91WWM0vlTQ', '2022-01-05 16:10:56', 'Godzilla (feat. Juice WRLD)', 'https://i.scdn.co/image/ab67616d0000b2732f44aec83b20e40f3baef73c', '4otkd9As6YaxxEkIjXPiZ6'),
('7g9DNzAU2QP88rE4BgIJpp', '2022-01-05 16:10:56', 'Zim Zimma', 'https://i.scdn.co/image/ab67616d0000b273953123ac7505d0945553732f', '3erY5XSpTKh0GfNf5FJuT2'),
('7Gc9OoiYsUrByC8tzD7kYY', '2022-01-05 16:10:56', 'Nobody Speak', 'https://i.scdn.co/image/ab67616d0000b2730b345678ef9735630f459341', '3OSeqyUWmkngEhQTTkdTSA'),
('7hU3IHwjX150XLoTVmjD0q', '2021-12-06 16:58:45', 'MONEY', 'https://i.scdn.co/image/ab67616d0000b273330f11fb125bb80b760f9e19', '66OYt73mqan1hWa78BhfPd'),
('7KXjTSCq5nL1LoYtL7XAwS', '2021-12-13 14:49:17', 'HUMBLE.', 'https://i.scdn.co/image/ab67616d0000b2738b52c6b9bc4e43d873869699', '4eLPsYPBmXABThSJ821sqY'),
('7lL3MvFWFFSD25pBz72Agj', '2021-12-13 14:49:18', 'A Tale of 2 Citiez', 'https://i.scdn.co/image/ab67616d0000b2736aca031ccc27d2e4dd829d14', '7viNUmZZ8ztn2UB4XB3jIL'),
('7r8lp6nukhNPK9QPC79k30', '2021-12-15 16:09:38', 'Are You Ready?', 'https://i.scdn.co/image/ab67616d0000b273f18370f43f2bb5f066a604e5', '4eXvekh89BNV24q87vjzGp'),
('7sMBvZCSUl99bJLXZaLa0b', '2021-12-06 16:58:45', 'Smokin Out The Window', 'https://i.scdn.co/image/ab67616d0000b273bd5010fd3868c08323bf6d41', '2qLI9pIjubUQMlpdmid2sE'),
('7vGuf3Y35N4wmASOKLUVVU', '2021-12-06 18:29:13', 'Silence', 'https://i.scdn.co/image/ab67616d0000b273f33ba583059dc2f7d08bf2b8', '2bw00gRKNKbTFOqCkohbSh'),
('7yNK27ZTpHew0c55VvIJgm', '2022-01-10 12:32:40', 'Dark Fantasy', 'https://i.scdn.co/image/ab67616d0000b273d9194aa18fa4c9362b47464f', '20r762YmB5HeofjMCiPMLv'),
('7yPjeaoQlwF8tfbnAhNO2v', '2022-01-05 16:10:56', 'Memphis', 'https://i.scdn.co/image/ab67616d0000b2739f9093e0700bedd8fe7880f9', '6Vr72HwhlNxaj22qlFNPQT');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `trackartist`
--

CREATE TABLE `trackartist` (
  `TrackId` varchar(255) NOT NULL,
  `ArtistId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `trackartist`
--

INSERT INTO `trackartist` (`TrackId`, `ArtistId`) VALUES
('51Fjme0JiitpyXKuyQiCDo', '6USMTwO0MNDnKte5a5h0xx'),
('51Fjme0JiitpyXKuyQiCDo', '41X1TR6hrK8Q2ZCpp2EqCz'),
('3yfqSUWxFvZELEM4PmlwIR', '7dGJo4pcD2V6oG8kP0tJRR'),
('2fHFLyzAQYlguX5q0DfKlD', '7A0awCXkE1FtSU8B0qwOJQ'),
('2fHFLyzAQYlguX5q0DfKlD', '50co4Is1HCEo8bhOyUWKpn'),
('2fHFLyzAQYlguX5q0DfKlD', '62DmErcU7dqZbJaDqwsqzR'),
('40YcuQysJ0KlGQTeGUosTC', '02kJSzxNuaWGqwubyUba0Z'),
('40YcuQysJ0KlGQTeGUosTC', '64M6ah0SkkRsnPGtGiRAbb'),
('1V4jC0vJ5525lEF1bFgPX2', '3sgFRtyBnxXD5ESfmbK4dl'),
('1V4jC0vJ5525lEF1bFgPX2', '7sfl4Xt5KmfyDs2T3SVSMK'),
('3bC1ahPIYt1btJzSSEyyrF', '0jnsk9HBra6NMjO2oANoPY'),
('0UtnpKaReKUg2GquaSxCyD', '2YZyLoL8N0Wb9xBt1NhZWg'),
('0UtnpKaReKUg2GquaSxCyD', '28ExwzUQsvgJooOI0X1mr3'),
('0JjM9bKm4wrwohMslcm892', '02kJSzxNuaWGqwubyUba0Z'),
('0JjM9bKm4wrwohMslcm892', '2jku7tDXc6XoB6MO2hFuqg'),
('0JjM9bKm4wrwohMslcm892', '5LHRHt1k9lMyONurDHEdrp'),
('7sMBvZCSUl99bJLXZaLa0b', '0du5cEVh5yTK9QJze8zA0C'),
('7sMBvZCSUl99bJLXZaLa0b', '3jK9MiCrA42lLAdMGUZpwa'),
('7sMBvZCSUl99bJLXZaLa0b', '6PvvGcCY2XtUcSRld1Wilr'),
('7hU3IHwjX150XLoTVmjD0q', '5L1lO4eRHmJ7a0Q6csE5cT'),
('4ZtFanR9U6ndgddUvNcjcG', '1McMsnEElThX1knmY4oliG'),
('1EaKU4dMbesXXd3BrLCtYG', '2YZyLoL8N0Wb9xBt1NhZWg'),
('4at3d5QWnlibMVN75ECDrp', '4IVAbR2w4JJNJDDRFP3E83'),
('4at3d5QWnlibMVN75ECDrp', '6l3HvQ5sa6mXTsMTB19rO5'),
('722tgOgdIbNe3BEyLnejw4', '5K4W6rqBFWDnAN6FQUkS6x'),
('1AgSUWSzmza5jF6ER5R68v', '2LIk90788K0zvyj2JJVwkJ'),
('1AgSUWSzmza5jF6ER5R68v', '2EMAnMvWE2eb56ToJVfCWs'),
('4dASQiO1Eoo3RJvt74FtXB', '55Aa2cqylxrFIXC767Z865'),
('4dASQiO1Eoo3RJvt74FtXB', '137W8MRPWKqSmrBGDBFSop'),
('4dASQiO1Eoo3RJvt74FtXB', '53XhwfbYqKCa1cC15pYq2q'),
('4dASQiO1Eoo3RJvt74FtXB', '3NPpFNZtSTHheNBaWC82rB'),
('4dASQiO1Eoo3RJvt74FtXB', '4xRYI6VqpkE3UwrDrAZL8L'),
('4dASQiO1Eoo3RJvt74FtXB', '7c0XG5cIJTrrAgEC3ULPiq'),
('0Fs9cdPDhptWEDJmiCbkEW', '6l3HvQ5sa6mXTsMTB19rO5'),
('0Fs9cdPDhptWEDJmiCbkEW', '3Oim8XBPbznAa8Jj8QzNc8'),
('0Fs9cdPDhptWEDJmiCbkEW', '4vpGVGgxSDcCTmqYbsOnsn'),
('5h5tBFnbcVioFXiOixTn6E', '2YZyLoL8N0Wb9xBt1NhZWg'),
('3iVcZ5G6tvkXZkZKlMpIUs', '2YZyLoL8N0Wb9xBt1NhZWg'),
('0N3W5peJUQtI4eyR6GJT5O', '2YZyLoL8N0Wb9xBt1NhZWg'),
('7vGuf3Y35N4wmASOKLUVVU', '64KEffDW9EtZ1y2vBYgq8T'),
('7vGuf3Y35N4wmASOKLUVVU', '6LuN9FCkKOj5PcnpouEgny'),
('7dt6x5M1jzdTEt8oCbisTK', '246dkjvS1zLTtiykXe5h60'),
('0yruV4sUwyczq5cxMRRljU', '2kCO8LXN1usaOPL3iEE28I'),
('3oLe5ZILASG8vU5dxIMfLY', '6fOMl44jA4Sp5b9PpYCkzz'),
('1SC5rEoYDGUK4NfG82494W', '7jVv8c5Fj3E9VhNjxT4snq'),
('2Yer0p7uB2lVBUAtANuuQp', '5UjifI1TYefXWn9GdqDOHl'),
('2Yer0p7uB2lVBUAtANuuQp', '6icQOAFXDZKsumw3YXyusw'),
('27NovPIUIRrOZoCHxABJwK', '7jVv8c5Fj3E9VhNjxT4snq'),
('27NovPIUIRrOZoCHxABJwK', '2LIk90788K0zvyj2JJVwkJ'),
('33QXHN1SzNgHIRPr7qYknV', '2tIP7SsRs7vjIcLrU85W8J'),
('1AT4xjNarTswd0UZ5FlmKF', '6l3HvQ5sa6mXTsMTB19rO5'),
('1BR5vhAlaoUiijQ28p6jlN', '2YZyLoL8N0Wb9xBt1NhZWg'),
('0JP9xo3adEtGSdUEISiszL', '15UsOTVnJzReFVN1VCnxy4'),
('192RjH0gN6en7nE6ElN96T', '6AgTAQt8XS6jRWi4sX7w49'),
('192RjH0gN6en7nE6ElN96T', '07d5etnpjriczFBB8pxmRe'),
('3iXP0G94qFZiXgZGZb2i5R', '6EPlBSH2RSiettczlz7ihV'),
('5HQVUIKwCEXpe7JIHyY734', '7hJcb9fa4alzcOq3EaNPoG'),
('5HQVUIKwCEXpe7JIHyY734', '137W8MRPWKqSmrBGDBFSop'),
('5HQVUIKwCEXpe7JIHyY734', '0du5cEVh5yTK9QJze8zA0C'),
('6xRsvyeB6omCCYdl7QSZes', '5XDJlfdfbGNJrOJJNxTcdq'),
('2JvzF1RMd7lE3KmFlsyZD8', '6l3HvQ5sa6mXTsMTB19rO5'),
('2KMPEI406H9G8UqiWDfuTK', '6EPlBSH2RSiettczlz7ihV'),
('2KMPEI406H9G8UqiWDfuTK', '1tG7s7S4sq2eFFW0QZyLbm'),
('1IeCWMwZs4rCmwPOjZYWN7', '67nwj3Y5sZQLl72VNUHEYE'),
('1IeCWMwZs4rCmwPOjZYWN7', '6l3HvQ5sa6mXTsMTB19rO5'),
('1IeCWMwZs4rCmwPOjZYWN7', '2PsjBHyb950JI7BHXY10TD'),
('4jTiyLlOJVJj3mCr7yfPQD', '7iZtZyCzp3LItcw1wtPI3D'),
('0zO8ctW0UiuOefR87OeJOZ', '5IcR3N7QB1j6KBL8eImZ8m'),
('0zO8ctW0UiuOefR87OeJOZ', '2YZyLoL8N0Wb9xBt1NhZWg'),
('7b4ky1LlQLFhXHmhZkFgqV', '4Xi6LSfFqv26XgP9NKN26U'),
('1PS1QMdUqOal0ai3Gt7sDQ', '5K4W6rqBFWDnAN6FQUkS6x'),
('1PS1QMdUqOal0ai3Gt7sDQ', '7LnaAXbDVIL75IVPnndf7w'),
('3CRDbSIZ4r5MsZ0YwxuEkn', '3YQKmKGau1PzlVlkL1iodx'),
('4jPy3l0RUwlUI9T5XHBW2m', '6fWVd57NKTalqvmjRd2t8Z'),
('4jPy3l0RUwlUI9T5XHBW2m', '6ASri4ePR7RlsvIQgWPJpS'),
('1W7zkKgRv9mrLbfdQ8XyH3', '0cGUm45nv7Z6M6qdXYQGTX'),
('5tz69p7tJuGPeMGwNTxYuV', '4xRYI6VqpkE3UwrDrAZL8L'),
('5tz69p7tJuGPeMGwNTxYuV', '2wUjUUtkb5lvLKcGKsKqsR'),
('5tz69p7tJuGPeMGwNTxYuV', '6LuN9FCkKOj5PcnpouEgny'),
('7KXjTSCq5nL1LoYtL7XAwS', '2YZyLoL8N0Wb9xBt1NhZWg'),
('5zpcSMzRsQlfoRcwD8h0uj', '7pGyQZx9thVa8GxMBeXscB'),
('5zpcSMzRsQlfoRcwD8h0uj', '4dVRITwfej74WkmNpgYVPb'),
('43jBqV3j3Xi1g6wO0bhIMd', '6d47Z08T4snK50HgTEHo5Z'),
('3DR7shAbkNyqgZjYnHZLh2', '2LIk90788K0zvyj2JJVwkJ'),
('4VXIryQMWpIdGgYR4TrjT1', '4MCBfE4596Uoi2O4DtmEMz'),
('2DjLLLV2r88a8TO0hVTVrS', '1iNqsUDUraNWrj00bqssQG'),
('2DjLLLV2r88a8TO0hVTVrS', '6U3ybJ9UHNKEdsH7ktGBZ7'),
('2DjLLLV2r88a8TO0hVTVrS', '6l3HvQ5sa6mXTsMTB19rO5'),
('2DjLLLV2r88a8TO0hVTVrS', '68kEuyFKyqrdQQLLsmiatm'),
('2IT0T0EqPaUxasjl2o8J2G', '0eDvMgVFoNV3TpwtrVCoTj'),
('5TvLB4zBOFWHcnDoWVI4Mw', '7lDkWxhwIuRAIzmHf85yKx'),
('5TvLB4zBOFWHcnDoWVI4Mw', '3z3g65U7mmyyBmmDfsQK9x'),
('5TvLB4zBOFWHcnDoWVI4Mw', '2FT75iYuWmycqYrXbVD9cn'),
('01VGA34ATxwp0Xo1ldduo2', '6l3HvQ5sa6mXTsMTB19rO5'),
('4gkl7QbQvBd3TM9PhlWFkI', '6l3HvQ5sa6mXTsMTB19rO5'),
('1HNs07uZxZniPNmniw2GTa', '6l3HvQ5sa6mXTsMTB19rO5'),
('16qYlQ6koFxYVbiJbGHblz', '6l3HvQ5sa6mXTsMTB19rO5'),
('4qRjfovbhI4EwP7VQNfxVW', '6l3HvQ5sa6mXTsMTB19rO5'),
('4Tjh34RS4ACZ6f6srlDBg8', '6l3HvQ5sa6mXTsMTB19rO5'),
('7lL3MvFWFFSD25pBz72Agj', '6l3HvQ5sa6mXTsMTB19rO5'),
('4txn9qnwK3ILQqv5oq2mO3', '6l3HvQ5sa6mXTsMTB19rO5'),
('6NyhBA9M6KK0fuVsojxL00', '6l3HvQ5sa6mXTsMTB19rO5'),
('25zlnOAzbVoOzIeXSvQFf1', '0eDvMgVFoNV3TpwtrVCoTj'),
('0LJDFZohBgWOMvXQw0cc9W', '07Asx51VtMw5kbNXKrpZlq'),
('5lw8Mgb4LyhriPIC86gV6e', '0huGjMyP507tBCARyzSkrv'),
('5lw8Mgb4LyhriPIC86gV6e', '3jK9MiCrA42lLAdMGUZpwa'),
('0Y7di9ZCmB6Elad5WISaPc', '55Aa2cqylxrFIXC767Z865'),
('2PpruBYCo4H7WOBJ7Q2EwM', '1G9G7WwrXka3Z1r7aIDjI7'),
('4TIqzdAssasqx3DAe6cG9J', '6C1ohJrd5VydigQtaGy5Wa'),
('4TIqzdAssasqx3DAe6cG9J', '5f7VJjfbwm532GiveGC0ZK'),
('3PdcxgzpWzAsUGgkmykIFc', '2YOYua8FpudSEiB9s88IgQ'),
('3PdcxgzpWzAsUGgkmykIFc', '41X1TR6hrK8Q2ZCpp2EqCz'),
('794IGyga5qnhlzOUimLOMw', '3Wcyta3gkOdQ4TfY0WyZpu'),
('285pBltuF7vW8TeWk8hdRR', '4MCBfE4596Uoi2O4DtmEMz'),
('7r8lp6nukhNPK9QPC79k30', '33r8rPgsHXfVN1r3adlrWw'),
('54yT3t8hSaJUvdHer3ZaB1', '0qpRQJnULShIWFKhcW5pce'),
('4LaCk8mWMThcp3yg2Lej0z', '0qpRQJnULShIWFKhcW5pce'),
('4r9hiElqKWMPT4Z3vN2exq', '6kXm2YCtdUOpRYNKeKhfue'),
('4r9hiElqKWMPT4Z3vN2exq', '68Uwx1d3EbjDJhYsLjqvIq'),
('08QaHlMPWuO5PUxjl61bXn', '03GruNQP8X25PCoWzdvIGZ'),
('36J0iaPDGbYGsHvYpaYs3k', '1iNqsUDUraNWrj00bqssQG'),
('36J0iaPDGbYGsHvYpaYs3k', '6U3ybJ9UHNKEdsH7ktGBZ7'),
('36J0iaPDGbYGsHvYpaYs3k', '70gP6Ry4Uo0Yx6uzPIdaiJ'),
('36J0iaPDGbYGsHvYpaYs3k', '6l3HvQ5sa6mXTsMTB19rO5'),
('36J0iaPDGbYGsHvYpaYs3k', '5MbNzCW3qokGyoo9giHA3V'),
('36J0iaPDGbYGsHvYpaYs3k', '5yPzzu25VzEk8qrGTLIrE1'),
('5wfyoR8XOkw45QRtFOoxyi', '6Ip8FS7vWT1uKkJSweANQK'),
('3GVkPk8mqxz0itaAriG1L7', '15UsOTVnJzReFVN1VCnxy4'),
('2DTpP3caqX3QdJIEoS83mD', '6C1ohJrd5VydigQtaGy5Wa'),
('2DTpP3caqX3QdJIEoS83mD', '6l3HvQ5sa6mXTsMTB19rO5'),
('1ZdhOMWyFR8Iv9eylMGYg2', '2feDdbD5araYcm6JhFHHw7'),
('34BGMLybIR9qEHYS8aiVnQ', '66XvhENR7AEwichiZYuiFu'),
('4n6NDfYake476trCjJRNl0', '6l3HvQ5sa6mXTsMTB19rO5'),
('4n6NDfYake476trCjJRNl0', '70gP6Ry4Uo0Yx6uzPIdaiJ'),
('1d7q712nXjG98HiwHk7HFS', '6l3HvQ5sa6mXTsMTB19rO5'),
('23OYT3SFtoJqhiAUqktbc1', '6AgTAQt8XS6jRWi4sX7w49'),
('23OYT3SFtoJqhiAUqktbc1', '2tIP7SsRs7vjIcLrU85W8J'),
('23OYT3SFtoJqhiAUqktbc1', '3hcs9uc56yIGFCSy9leWe7'),
('75IN3CtuZwTHTnZvYM4qnJ', '7dGJo4pcD2V6oG8kP0tJRR'),
('3zpGIFghtnVlwMXWyKW474', '3jK9MiCrA42lLAdMGUZpwa'),
('30Zcjs7pgEkmJA1lEbGSWT', '5K4W6rqBFWDnAN6FQUkS6x'),
('7FIWs0pqAYbP91WWM0vlTQ', '7dGJo4pcD2V6oG8kP0tJRR'),
('7FIWs0pqAYbP91WWM0vlTQ', '4MCBfE4596Uoi2O4DtmEMz'),
('3U21A07gAloCc4P7J8rxcn', '5K4W6rqBFWDnAN6FQUkS6x'),
('3wA4ronkc8ZcPXUP0fDgYA', '4PcesEvU9iICf7dwNt5B3l'),
('5DJNyvuMmZfsfvdTpMMmUq', '1ShZZUjkbXCjhwrb18BA8I'),
('2Nh2cMryoXl7BrZoIeN2Pr', '6vHBuUxrcpn1do5UaEJ7g6'),
('2Nh2cMryoXl7BrZoIeN2Pr', '3jK9MiCrA42lLAdMGUZpwa'),
('62vpWI1CHwFy7tMIcSStl8', '6l3HvQ5sa6mXTsMTB19rO5'),
('3fKdTr6Uv8HTb92Ih3QWxa', '6ASri4ePR7RlsvIQgWPJpS'),
('6N22FZs2ZhPBYi3b9XPajV', '2feDdbD5araYcm6JhFHHw7'),
('4TlbZgqxhJ6uN3tpVyjw90', '5WUlDfRSoLAfcVSX1WnrxN'),
('4TlbZgqxhJ6uN3tpVyjw90', '5fMUXHkw8R8eOP2RNVYEZX'),
('4TlbZgqxhJ6uN3tpVyjw90', '2feDdbD5araYcm6JhFHHw7'),
('4TlbZgqxhJ6uN3tpVyjw90', '6IZ4ctovY9dl7bgHClAvKJ'),
('4TlbZgqxhJ6uN3tpVyjw90', '55Aa2cqylxrFIXC767Z865'),
('4Tf94tAHtlQxjbeeyU3y7C', '6S0dmVVn4udvppDhZIWxCr'),
('1zKOagmkCtXuGmCivG8HZE', '1XlLhtgJjC4ROQZilBZAvw'),
('3ydfhgIZIc2j39NLIhpJpq', '5nLYd9ST4Cnwy6NHaCxbj8'),
('4PnNzWe1LJoAMD5j5RHpI0', '2P5sC9cVZDToPxyomzF1UH'),
('7yPjeaoQlwF8tfbnAhNO2v', '22KyrgRdE2K6aB5wtZls3c'),
('4KUUaKfBqPw1IOitTW3Pba', '6l3HvQ5sa6mXTsMTB19rO5'),
('2ygMBIctKIAfbEBcT9065L', '1yxSLGMDHlW21z4YXirZDS'),
('7g9DNzAU2QP88rE4BgIJpp', '6C1ohJrd5VydigQtaGy5Wa'),
('3owESnQzGKXJhdZQDdXppK', '085pc2PYOi8bGKj0PNjekA'),
('5Hc35BziLaXfLebKmds2FV', '1ShZZUjkbXCjhwrb18BA8I'),
('5Hc35BziLaXfLebKmds2FV', '5lCekoJW9jNq01B1wiqdAb'),
('5hTpBe8h35rJ67eAWHQsJx', '3Gm5F95VdRxW3mqCn8RPBJ'),
('7Gc9OoiYsUrByC8tzD7kYY', '5CE2IfdYZEQGIDsfiRm8SI'),
('7Gc9OoiYsUrByC8tzD7kYY', '4RnBFZRiMLRyZy0AzzTg2C'),
('4EWCNWgDS8707fNSZ1oaA5', '5K4W6rqBFWDnAN6FQUkS6x'),
('7e5z8Set6bsGDh8KIsZnoX', '70gP6Ry4Uo0Yx6uzPIdaiJ'),
('7e5z8Set6bsGDh8KIsZnoX', '1iNqsUDUraNWrj00bqssQG'),
('7bYZBVrnRfqeaPbhRyEvK3', '5BcAKTbp20cv7tC5VqPFoC'),
('7bYZBVrnRfqeaPbhRyEvK3', '3JhNCzhSMTxs9WLGJJxWOY'),
('7bYZBVrnRfqeaPbhRyEvK3', '4myTppRgh0rojLxx8RycOp'),
('7bYZBVrnRfqeaPbhRyEvK3', '56xTxG4nQMAs1GW9kvn0uA'),
('7FdPNzOaG7FnIXiFm53cq4', '7MNEVabc4cs19CbzAFZmXz'),
('7FdPNzOaG7FnIXiFm53cq4', '2QOP6zKx1d0gGEtuuXOvJ3'),
('750vtNtNiQVl80E4baoJjd', '1nzgtKYFckznkcVMR3Gg4z'),
('750vtNtNiQVl80E4baoJjd', '55Aa2cqylxrFIXC767Z865'),
('5lWUeSYO61UYgNlFlqcwYl', '2gduEC76ry33RVurAvT05p'),
('5lWUeSYO61UYgNlFlqcwYl', '1nzgtKYFckznkcVMR3Gg4z'),
('1vicAuW47ccp1l5mYmaWi7', '1nzgtKYFckznkcVMR3Gg4z'),
('1vicAuW47ccp1l5mYmaWi7', '3hcs9uc56yIGFCSy9leWe7'),
('30Chv2SmIry70YwtmtaKnj', '6l3HvQ5sa6mXTsMTB19rO5'),
('4YwNf1fLZt9IQhJeHNWfBi', '6l3HvQ5sa6mXTsMTB19rO5'),
('6Ius4TC0L3cN74HT7ENE6e', '6l3HvQ5sa6mXTsMTB19rO5'),
('6i6cWTCYBOKEdJnWjzm2yk', '28ExwzUQsvgJooOI0X1mr3'),
('6i6cWTCYBOKEdJnWjzm2yk', '2YZyLoL8N0Wb9xBt1NhZWg'),
('3QFInJAm9eyaho5vBzxInN', '5SXuuuRpukkTvsLuUknva1'),
('3QFInJAm9eyaho5vBzxInN', '2YZyLoL8N0Wb9xBt1NhZWg'),
('1jaTQ3nqY3oAAYyCTbIvnM', '2LIk90788K0zvyj2JJVwkJ'),
('57VeLYXrvNxe8Vs18K2M9W', '2LIk90788K0zvyj2JJVwkJ'),
('57VeLYXrvNxe8Vs18K2M9W', '0c173mlxpT3dSFRgMO8XPh'),
('3w1WjD2zJqjBjDz5fwqQPJ', '2LIk90788K0zvyj2JJVwkJ'),
('3DK6m7It6Pw857FcQftMds', '5K4W6rqBFWDnAN6FQUkS6x'),
('3DK6m7It6Pw857FcQftMds', '0ONHkAv9pCAFxb0zJwDNTy'),
('3rCNmRonlHN1TXQLcG3dSk', '5K4W6rqBFWDnAN6FQUkS6x'),
('4EndPA8b6FDWYp1RgsnLEB', '5K4W6rqBFWDnAN6FQUkS6x'),
('4EndPA8b6FDWYp1RgsnLEB', '5y2Xq6xcjJb2jVM54GHK3t'),
('1UGD3lW3tDmgZfAVDh6w7r', '5K4W6rqBFWDnAN6FQUkS6x'),
('1UGD3lW3tDmgZfAVDh6w7r', '1sBkRIssrMs1AbVkOJbc7a'),
('2Im64pIz6m0EJKdUe6eZ8r', '5K4W6rqBFWDnAN6FQUkS6x'),
('2Im64pIz6m0EJKdUe6eZ8r', '4LEiUm1SRbFMgfqnQTwUbQ'),
('39JRmdKFka1Oe09FoOCPI4', '5K4W6rqBFWDnAN6FQUkS6x'),
('2uwnP6tZVVmTovzX5ELooy', '6l3HvQ5sa6mXTsMTB19rO5'),
('2uwnP6tZVVmTovzX5ELooy', '360IAlyVv4PCEVjgyMZrxK'),
('3l6lmZCaZdnc90MI2BktqP', '6l3HvQ5sa6mXTsMTB19rO5'),
('1vvnYpYEMVB4aq9I6tHIEB', '6l3HvQ5sa6mXTsMTB19rO5'),
('5rmcjZTrE9JR1YrbNZDFNW', '6l3HvQ5sa6mXTsMTB19rO5'),
('77IAeEz8LEchPN8UNjaTJ2', '6l3HvQ5sa6mXTsMTB19rO5'),
('0utlOiJy2weVl9WTkcEWHy', '6l3HvQ5sa6mXTsMTB19rO5'),
('3pjUyVbFmM96tYhSaKJwTt', '6l3HvQ5sa6mXTsMTB19rO5'),
('0HtOJj7Kl74s1Ngf3MWeif', '6l3HvQ5sa6mXTsMTB19rO5'),
('2z3joGXrdGL2iEjIKQTiN1', '6l3HvQ5sa6mXTsMTB19rO5'),
('6I6NX6tjGsxFAsIfGzY9lJ', '6l3HvQ5sa6mXTsMTB19rO5'),
('6AGON2BGdPmPMJGiiNuuwl', '6l3HvQ5sa6mXTsMTB19rO5'),
('3MWlVSkoLS1e66nlZ2tuWJ', '6l3HvQ5sa6mXTsMTB19rO5'),
('0Thqjtu54vKMP06pwZkAWp', '6l3HvQ5sa6mXTsMTB19rO5'),
('6K07Ahf6V7CAQn0ikrOztl', '5K4W6rqBFWDnAN6FQUkS6x'),
('6K07Ahf6V7CAQn0ikrOztl', '3nFkdlSjzX9mRTtwJOzDYB'),
('6K07Ahf6V7CAQn0ikrOztl', '0ONHkAv9pCAFxb0zJwDNTy'),
('6K07Ahf6V7CAQn0ikrOztl', '18HVMQsV3tINaTyzT5UIjH'),
('6K07Ahf6V7CAQn0ikrOztl', '2cADQgiLMjNhbsfeN52Bf3'),
('6K07Ahf6V7CAQn0ikrOztl', '4iCwCMnqsNZ6atvRiADgtn'),
('1ZHYJ2Wwgxes4m8Ba88PeK', '5K4W6rqBFWDnAN6FQUkS6x'),
('1ZHYJ2Wwgxes4m8Ba88PeK', '3nFkdlSjzX9mRTtwJOzDYB'),
('1ZHYJ2Wwgxes4m8Ba88PeK', '1sBkRIssrMs1AbVkOJbc7a'),
('1ZHYJ2Wwgxes4m8Ba88PeK', '0hCNtLu0JehylgoiP8L4Gh'),
('1ZHYJ2Wwgxes4m8Ba88PeK', '4LEiUm1SRbFMgfqnQTwUbQ'),
('22L7bfCiAkJo5xGSQgmiIO', '5K4W6rqBFWDnAN6FQUkS6x'),
('4D6TpthzUVNTjWQqfBW5Kb', '5K4W6rqBFWDnAN6FQUkS6x'),
('2gZUPNdnz5Y45eiGxpHGSc', '5K4W6rqBFWDnAN6FQUkS6x'),
('23SZWX2IaDnxmhFsSLvkG2', '5K4W6rqBFWDnAN6FQUkS6x'),
('23SZWX2IaDnxmhFsSLvkG2', '0fA0VVWsXO9YnASrzqfmYu'),
('23SZWX2IaDnxmhFsSLvkG2', '2yQf6b8hxahZaT5dHlWaB1'),
('7yNK27ZTpHew0c55VvIJgm', '5K4W6rqBFWDnAN6FQUkS6x'),
('1IjxCFAyR1ysajk10iHsKh', '2YZyLoL8N0Wb9xBt1NhZWg'),
('1IjxCFAyR1ysajk10iHsKh', '7sfgqEdoeBTjd8lQsPT3Cy'),
('4wshBvO4qMrxJnPlfkeUWi', '2YZyLoL8N0Wb9xBt1NhZWg'),
('4wshBvO4qMrxJnPlfkeUWi', '3nFkdlSjzX9mRTtwJOzDYB'),
('0NfYAsKygCYwPA2BgTZ1qg', '2YZyLoL8N0Wb9xBt1NhZWg'),
('0NfYAsKygCYwPA2BgTZ1qg', '1XkoF8ryArs86LZvFOkbyr'),
('6P6HGbOoWUynE2U7yLwLnY', '2YZyLoL8N0Wb9xBt1NhZWg'),
('5jHilrZDaP1vJMZfdN1He3', '2YZyLoL8N0Wb9xBt1NhZWg'),
('5jHilrZDaP1vJMZfdN1He3', '6DPYiyq5kWVQS4RGwxzPC7'),
('0O6cYePgIBlMQ0pAFate3q', '2YZyLoL8N0Wb9xBt1NhZWg'),
('0O6cYePgIBlMQ0pAFate3q', '6DPYiyq5kWVQS4RGwxzPC7'),
('5BwQjRasNcdRPuVWKcHto2', '6l3HvQ5sa6mXTsMTB19rO5'),
('5BwQjRasNcdRPuVWKcHto2', '70gP6Ry4Uo0Yx6uzPIdaiJ'),
('4YiY551vHi6glMtgVxuqAy', '6l3HvQ5sa6mXTsMTB19rO5'),
('5lLNBIyjp72btcnrjBG751', '6l3HvQ5sa6mXTsMTB19rO5'),
('08LwMWf5Tcfsd752EPzFV0', '6l3HvQ5sa6mXTsMTB19rO5'),
('0GAyuCo975IHGxxiLKDufB', '6l3HvQ5sa6mXTsMTB19rO5'),
('0GAyuCo975IHGxxiLKDufB', '70gP6Ry4Uo0Yx6uzPIdaiJ'),
('0GAyuCo975IHGxxiLKDufB', '4IVAbR2w4JJNJDDRFP3E83'),
('5W8jRrZ6tWrTrqnKRtIQBf', '6l3HvQ5sa6mXTsMTB19rO5'),
('5W8jRrZ6tWrTrqnKRtIQBf', '5f7VJjfbwm532GiveGC0ZK'),
('1D3z6HTiQsNmZxjl7F7eoG', '6l3HvQ5sa6mXTsMTB19rO5'),
('1D3z6HTiQsNmZxjl7F7eoG', '1URnnhqYAYcrqrcwql10ft'),
('1D3z6HTiQsNmZxjl7F7eoG', '44vREmJC0OlVZjZaGLqVEd'),
('2cnKST6T9qUo2i907lm8zX', '6l3HvQ5sa6mXTsMTB19rO5'),
('5R691ipUYRDYW6ehapjoj6', '6l3HvQ5sa6mXTsMTB19rO5');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `Id` varchar(85) NOT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `HasSetupSpotifyConnection` tinyint(1) DEFAULT NULL,
  `SpotifyConnectionSetAt` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`Id`, `CreationDate`, `Name`, `Email`, `HasSetupSpotifyConnection`, `SpotifyConnectionSetAt`) VALUES
('11276d3e-5252-4006-b54c-46bcd750b324', '2021-12-13 13:04:26', '123', '123@gmail.com', 0, 0),
('77f9c419-e9f0-4d48-8d1e-5d0cbee36801', '2021-10-16 14:54:25', 'admin', 'fontys.musix@gmail.com', 1, 1635724800000),
('895864ed-87a9-4649-bc96-2bfdeb5470a0', '2021-10-20 12:33:14', 'Test', 'ruben.otter3@gmail.com', 0, 0),
('f5121493-543b-41fb-a8c7-a7a933daf035', '2021-10-18 22:55:32', 'Ruben', '462404@student.fontys.nl', 0, NULL);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`Id`);

--
-- Indexen voor tabel `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`Id`);

--
-- Indexen voor tabel `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `ProfileUserId` (`ProfileUserId`),
  ADD KEY `CommentUserId` (`CommentUserId`);

--
-- Indexen voor tabel `follow`
--
ALTER TABLE `follow`
  ADD KEY `FollowedUserId` (`FollowedUserId`),
  ADD KEY `FollowingUserId` (`FollowingUserId`);

--
-- Indexen voor tabel `scrobble`
--
ALTER TABLE `scrobble`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `TrackId` (`TrackId`),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `ProfileUserId` (`ProfileUserId`);

--
-- Indexen voor tabel `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `AlbumId` (`AlbumId`);

--
-- Indexen voor tabel `trackartist`
--
ALTER TABLE `trackartist`
  ADD KEY `ArtistId` (`ArtistId`),
  ADD KEY `TrackId` (`TrackId`),
  ADD KEY `ArtistId_2` (`ArtistId`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_609D375E` FOREIGN KEY (`CommentUserId`) REFERENCES `user` (`Id`),
  ADD CONSTRAINT `FK_F773D22E` FOREIGN KEY (`ProfileUserId`) REFERENCES `user` (`Id`);

--
-- Beperkingen voor tabel `follow`
--
ALTER TABLE `follow`
  ADD CONSTRAINT `FK_24AB4872` FOREIGN KEY (`FollowedUserId`) REFERENCES `user` (`Id`),
  ADD CONSTRAINT `FK_25B76455` FOREIGN KEY (`FollowingUserId`) REFERENCES `user` (`Id`);

--
-- Beperkingen voor tabel `scrobble`
--
ALTER TABLE `scrobble`
  ADD CONSTRAINT `FK_6441DAFB` FOREIGN KEY (`TrackId`) REFERENCES `track` (`Id`),
  ADD CONSTRAINT `FK_CF2221E5` FOREIGN KEY (`ProfileUserId`) REFERENCES `user` (`Id`),
  ADD CONSTRAINT `FK_DEB60DF` FOREIGN KEY (`UserId`) REFERENCES `user` (`Id`);

--
-- Beperkingen voor tabel `track`
--
ALTER TABLE `track`
  ADD CONSTRAINT `FK_84F16688` FOREIGN KEY (`AlbumId`) REFERENCES `album` (`Id`);

--
-- Beperkingen voor tabel `trackartist`
--
ALTER TABLE `trackartist`
  ADD CONSTRAINT `FK_402A4377` FOREIGN KEY (`ArtistId`) REFERENCES `artist` (`Id`),
  ADD CONSTRAINT `FK_FA5BD5B8` FOREIGN KEY (`TrackId`) REFERENCES `track` (`Id`);
--
-- Database: `musix_identity`
--
DROP DATABASE IF EXISTS `musix_identity`;
CREATE DATABASE IF NOT EXISTS `musix_identity` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `musix_identity`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(85) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(85) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(85) DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `aspnetroles`
--

INSERT INTO `aspnetroles` (`Id`, `Name`, `NormalizedName`, `ConcurrencyStamp`) VALUES
('35329437-9888-4243-bc94-dca016d2053a', 'general', 'GENERAL', 'be98af51-0818-4f5c-88be-6ac3333cdd81'),
('df943ce0-b4fa-46c4-ac8a-c82bbb0346cb', 'administrator', 'ADMINISTRATOR', '34c015c2-3269-4feb-afe8-22e936850af4');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(85) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(85) NOT NULL,
  `ProviderKey` varchar(85) NOT NULL,
  `ProviderDisplayName` longtext DEFAULT NULL,
  `UserId` varchar(85) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(85) NOT NULL,
  `RoleId` varchar(85) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `aspnetuserroles`
--

INSERT INTO `aspnetuserroles` (`UserId`, `RoleId`) VALUES
('11276d3e-5252-4006-b54c-46bcd750b324', '35329437-9888-4243-bc94-dca016d2053a'),
('77f9c419-e9f0-4d48-8d1e-5d0cbee36801', 'df943ce0-b4fa-46c4-ac8a-c82bbb0346cb'),
('895864ed-87a9-4649-bc96-2bfdeb5470a0', 'df943ce0-b4fa-46c4-ac8a-c82bbb0346cb'),
('f5121493-543b-41fb-a8c7-a7a933daf035', '35329437-9888-4243-bc94-dca016d2053a');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(85) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(85) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(85) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext DEFAULT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('11276d3e-5252-4006-b54c-46bcd750b324', '123', '123', '123@gmail.com', '123@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEKPGyuPpC7CSOcL7TdAlXs7OvS6TH5DflNTuZryqhMrAdoL4Ch77TX3eqzRSRzUUxw==', 'VCKPHEBZ745L3L2AQQTICP7XKTOURZBV', '0d9f9891-5f53-4af1-8f41-c1dd88366781', NULL, 0, 0, NULL, 1, 0),
('77f9c419-e9f0-4d48-8d1e-5d0cbee36801', 'admin', 'ADMIN', 'fontys.musix@gmail.com', 'FONTYS.MUSIX@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEE4MNbGYdgpxuXeROpJ37tV4vMiaYfmm8OD3V0oxIwlweUbz8URsIO2FqFlbjRnpYQ==', 'BZKXSPNQ2MT5DYSMGYACKPQZQ55F7M3X', 'a41cb7b2-9993-43a4-9d78-14a89ad8723e', NULL, 0, 0, NULL, 1, 0),
('895864ed-87a9-4649-bc96-2bfdeb5470a0', 'Test', 'TEST', 'ruben.otter3@gmail.com', 'RUBEN.OTTER3@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAELpj8C8ShlNbw5SEPUWQVnER5P8x/9wdQR6txy2JPLFynNdavARKm/ccSTVpXMML4A==', '4QEAA2NOQ4BZOCRLCOBOC3KSPA35CBSD', '4955f9ff-bb56-4363-a5a0-2ef9a2609cf1', NULL, 0, 0, NULL, 1, 0),
('f5121493-543b-41fb-a8c7-a7a933daf035', 'Ruben', 'RUBEN', '462404@student.fontys.nl', '462404@STUDENT.FONTYS.NL', 0, 'AQAAAAEAACcQAAAAECCpTFjgGnAgdS3EWi1nWxBCEksxUzkcY1ZVwgh9epTQE1GjiagnpyvF36yh6Fnd/g==', '6WQDPXX6UOD7PRXRBOWSOHASEMTMIFPG', '790b423c-cef2-497a-9f8e-b5ac6c2d3cbb', NULL, 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(85) NOT NULL,
  `LoginProvider` varchar(85) NOT NULL,
  `Name` varchar(85) NOT NULL,
  `Value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20211015193646_Initialize', '5.0.11');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indexen voor tabel `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indexen voor tabel `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Indexen voor tabel `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Indexen voor tabel `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Indexen voor tabel `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Indexen voor tabel `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Indexen voor tabel `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
