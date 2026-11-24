-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 24, 2026 at 10:57 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atlas_optyki`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `correction` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `title`, `content`, `image`, `correction`) VALUES
(1, 1, 'Budowa oka', 'Oko jest narządem wzroku umożliwiającym odbieranie bodźców świetlnych i przekształcanie ich w informacje przekazywane do mózgu. Składa się między innymi z rogówki, tęczówki, źrenicy, soczewki oraz siatkówki. Światło wpada przez rogówkę, przechodzi przez źrenicę i soczewkę, a następnie trafia na siatkówkę, gdzie powstaje obraz.', 'images/articles/oko.jpg', NULL),
(2, 1, 'Siatkówka', 'Siatkówka jest wewnętrzną warstwą oka odpowiedzialną za odbieranie światła. Znajdują się w niej fotoreceptory zwane pręcikami i czopkami. Pręciki umożliwiają widzenie przy słabym oświetleniu, natomiast czopki odpowiadają za widzenie kolorów i szczegółów.', 'images/articles/siatkowka.jpg', NULL),
(3, 1, 'Rogówka', 'Rogówka to przezroczysta część znajdująca się z przodu oka. Jej zadaniem jest załamywanie promieni świetlnych wpadających do oka. To właśnie rogówka odpowiada za znaczną część zdolności skupiającej ludzkiego narządu wzroku.', 'images/articles/rogowka.jpg', NULL),
(4, 2, 'Soczewka skupiająca', 'Soczewka skupiająca jest grubsza w środku niż na brzegach. Po przejściu przez nią równoległe promienie światła zostają skupione w jednym punkcie zwanym ogniskiem. Tego rodzaju soczewki stosowane są w lupach, mikroskopach oraz okularach korygujących dalekowzroczność.', 'images/articles/soczewka-skupiajaca.jpg', NULL),
(5, 2, 'Soczewka rozpraszająca', 'Soczewka rozpraszająca jest cieńsza w środku niż na brzegach. Powoduje rozchodzenie się promieni świetlnych po przejściu przez jej powierzchnię. Wykorzystuje się ją między innymi w okularach korygujących krótkowzroczność.', 'images/articles/soczewka-rozpraszajaca.jpg', NULL),
(6, 2, 'Ogniskowa soczewki', 'Ogniskowa jest odległością pomiędzy środkiem optycznym soczewki a jej ogniskiem. Wielkość ta określa zdolność soczewki do skupiania lub rozpraszania światła. Im krótsza ogniskowa, tym silniejsze działanie soczewki.', 'images/articles/ogniskowa.jpg', NULL),
(7, 3, 'Czym jest światło', 'Światło jest promieniowaniem elektromagnetycznym widzialnym dla ludzkiego oka. Rozchodzi się w próżni z prędkością około 300 tysięcy kilometrów na sekundę. Dzięki światłu możemy obserwować otaczający nas świat i rozpoznawać kolory.', 'images/articles/swiatlo.jpg', NULL),
(8, 3, 'Barwa światła', 'Barwa światła zależy od długości fali promieniowania elektromagnetycznego. Światło białe składa się z wielu kolorów, które można rozdzielić przy użyciu pryzmatu. Zakres widzialny obejmuje między innymi kolory czerwony, zielony oraz niebieski.', 'images/articles/barwa.jpg', NULL),
(9, 3, 'Źródła światła', 'Źródła światła dzielą się na naturalne i sztuczne. Do naturalnych zalicza się między innymi Słońce oraz gwiazdy. Do źródeł sztucznych należą żarówki, diody LED oraz lampy fluorescencyjne.', 'images/articles/zrodla.jpg', NULL),
(10, 4, 'Tęcza', 'Tęcza jest zjawiskiem optycznym powstającym w wyniku załamania, odbicia oraz rozszczepienia światła słonecznego w kroplach deszczu. Efektem jest widoczne na niebie widmo barw od czerwonej do fioletowej.', 'images/articles/tecza.jpg', NULL),
(11, 4, 'Odbicie światła', 'Odbicie światła zachodzi wtedy, gdy promień świetlny napotyka powierzchnię i zmienia kierunek rozchodzenia. Kąt padania jest równy kątowi odbicia. Zjawisko to wykorzystywane jest między innymi w lustrach.', 'images/articles/odbicie.jpg', NULL),
(12, 4, 'Załamanie światła', 'Załamanie światła występuje podczas przechodzenia promienia z jednego ośrodka do drugiego. Zmiana prędkości światła powoduje zmianę kierunku jego rozchodzenia. Dzięki temu działają soczewki oraz wiele przyrządów optycznych.', 'images/articles/zalamanie.jpg', NULL),
(13, 5, 'Mikroskop', 'Mikroskop jest przyrządem optycznym służącym do obserwacji bardzo małych obiektów. Wykorzystuje układ soczewek tworzących powiększony obraz badanego preparatu. Znajduje zastosowanie w biologii, medycynie oraz naukach przyrodniczych.', 'images/articles/mikroskop.jpg', NULL),
(14, 5, 'Teleskop', 'Teleskop umożliwia obserwację odległych obiektów astronomicznych. Dzięki układowi soczewek lub luster zbiera dużą ilość światła i pozwala na obserwację gwiazd, planet oraz galaktyk.', 'images/articles/teleskop.jpg', NULL),
(15, 5, 'Lornetka', 'Lornetka jest przyrządem optycznym składającym się z dwóch połączonych lunet. Pozwala obserwować odległe obiekty obojgiem oczu, dzięki czemu obraz wydaje się bardziej naturalny i przestrzenny.', 'images/articles/lornetka.jpg', NULL),
(16, 6, 'Krótkowzroczność', 'Krótkowzroczność jest wadą wzroku, w której obraz odległych przedmiotów powstaje przed siatkówką oka. Osoby cierpiące na tę wadę dobrze widzą z bliska, natomiast gorzej dostrzegają obiekty znajdujące się daleko.', 'images/articles/krotkowzrocznosc.jpg', 'Soczewki rozpraszające'),
(17, 6, 'Dalekowzroczność', 'Dalekowzroczność polega na powstawaniu obrazu za siatkówką oka. Powoduje trudności w wyraźnym widzeniu przedmiotów znajdujących się blisko.', 'images/articles/dalekowzrocznosc.jpg', 'Soczewki skupiające'),
(18, 6, 'Astygmatyzm', 'Astygmatyzm jest wadą wzroku wynikającą z nieregularnego kształtu rogówki lub soczewki. Powoduje zniekształcenie obrazu i trudności z wyraźnym widzeniem szczegółów.', 'images/articles/astygmatyzm.jpg', 'Soczewki cylindryczne');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`) VALUES
(1, 'Budowa oka', 'oko'),
(2, 'Soczewki', 'soczewki'),
(3, 'Światło', 'swiatlo'),
(4, 'Zjawiska optyczne', 'zjawiska'),
(5, 'Przyrządy optyczne', 'przyrzady'),
(6, 'Wady wzroku', 'wady');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `facts`
--

CREATE TABLE `facts` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facts`
--

INSERT INTO `facts` (`id`, `content`) VALUES
(1, 'Ludzkie oko potrafi rozróżnić miliony kolorów.'),
(2, 'Światło ze Słońca dociera do Ziemi w około 8 minut.'),
(3, 'Tęcza powstaje dzięki załamaniu i odbiciu światła w kroplach deszczu.'),
(4, 'Pierwsze okulary pojawiły się około XIII wieku.'),
(5, 'Mikroskopy pozwalają obserwować obiekty niewidoczne gołym okiem.'),
(6, 'Teleskopy umożliwiają obserwację bardzo odległych obiektów kosmicznych.'),
(7, 'Rogówka odpowiada za dużą część zdolności skupiającej oka.'),
(8, 'Światło w próżni porusza się z prędkością około 300 000 km/s.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer_a` varchar(255) NOT NULL,
  `answer_b` varchar(255) NOT NULL,
  `answer_c` varchar(255) NOT NULL,
  `answer_d` varchar(255) NOT NULL,
  `correct_answer` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`id`, `question`, `answer_a`, `answer_b`, `answer_c`, `answer_d`, `correct_answer`) VALUES
(1, 'Jaką wadę wzroku korygują soczewki rozpraszające?', 'Krótkowzroczność', 'Dalekowzroczność', 'Astygmatyzm', 'Zaćmę', 'A'),
(2, 'Która część oka odpowiada za odbiór światła?', 'Siatkówka', 'Rogówka', 'Tęczówka', 'Źrenica', 'A'),
(3, 'Tęcza powstaje dzięki?', 'Odbiciu i załamaniu światła', 'Grawitacji', 'Magnetyzmowi', 'Parowaniu', 'A'),
(4, 'Który przyrząd służy do obserwacji gwiazd?', 'Mikroskop', 'Teleskop', 'Lupa', 'Lornetka', 'B');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeksy dla tabeli `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `facts`
--
ALTER TABLE `facts`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `facts`
--
ALTER TABLE `facts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
