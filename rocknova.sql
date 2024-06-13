-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2024 at 03:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rocknova`
--
CREATE DATABASE IF NOT EXISTS `rocknova` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci;
USE `rocknova`;

-- --------------------------------------------------------

--
-- Table structure for table `koncerti`
--

CREATE TABLE `koncerti` (
  `id` int(11) NOT NULL,
  `naziv` varchar(64) NOT NULL,
  `kratkiOpis` varchar(255) NOT NULL,
  `duziOpis` varchar(800) NOT NULL,
  `lokacija` varchar(32) NOT NULL,
  `zanr` varchar(32) NOT NULL,
  `slika` varchar(64) NOT NULL,
  `predgrupa` varchar(32) NOT NULL,
  `datumObjavljivanja` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `koncerti`
--

INSERT INTO `koncerti` (`id`, `naziv`, `kratkiOpis`, `duziOpis`, `lokacija`, `zanr`, `slika`, `predgrupa`, `datumObjavljivanja`) VALUES
(1, '††† (Crosses)  Tvornica Kulture', 'Kupi karte odnosno ulaznice za Crosses u Tvornici kulture!, 11.06.2024. u Tvornica Kulture P232, Zagreb', 'Crosses (obično stiliziran kao †††) američki je glazbeni prateći projekt pjevača Deftones China Morena i gitarista Fara Shauna Lopeza, sa sjedištem u Los Angelesu, Kalifornija, [1] i osnovan 2011. godine.\r\n\r\n', 'Croatia', 'Metal', '../img/1718133885_crosses.jpg', 'Smrdljivi Martini', '2024-06-11 21:24:45'),
(2, 'Polpyhia TOKYO', 'Polyphia Tokyo 27.5.2024 kupite karte što prije!', 'Polyphia je primarno instrumentalni progresivni rock sastav sa sjedištem u Planu u Teksasu, osnovan 2010. Grupu čine gitaristi Tim Henson i Scott LePage, basist Clay Gober i bubnjar Clay Aeschliman.\r\n\r\nPolyphijin zvuk poznat je po spajanju virtuoznih gitarskih dionica s drugim stilovima glazbe. U početku ukorijenjena u tonu fokusiranom na metal u njihovim ranim izdanjima, glazba benda je evoluirala do progresivnijeg rock zvuka u njihovim kasnijim produkcijama, kombinirajući elektronsku glazbu i hip hop. Polyphia je izdala četiri studijska albuma, jedan live album, dva EP-a i brojne singlove.', 'Japan', 'Prog', '../img/1718134175_Polyphia.jpg', 'Johan Lenox', '2024-06-11 21:29:35'),
(3, 'Graspop Metal Meeting 2024', 'Graspop Metal Meeting je belgijski heavy metal festival.', 'Line-up: Avenged Sevenfold, Five Finger Death Punch, Scorpions, Tool, Judas Priest, Pendulum, Extreme, While She Sleeps, Electric Callboy, All Them Witches, and more…\r\n\r\nGraspop Metal Meeting, Dessel, Belgium', 'Dessel', 'Metal', '../img/1718134931_graspop.jpg', 'Nema', '2024-06-11 21:42:11'),
(4, 'Mr. Bungle American Tour 2024', 'Mr. Bungle najavio je američku turneju koja uključuje više gradova.\r\n', 'Putovanje počinje 6. svibnja u Dallasu i traje do 19. svibnja u Minneapolisu, a uključuje tri prethodno najavljene festivalske stanice: Welcome to Rockville (10. svibnja u Daytona Beachu, Florida); Sonic Temple (17. svibnja u Columbusu, Ohio); i Milwaukee Metal Fest (18. svibnja u Milwaukeeju, Wisconsin). Otto Von Schirach će podržati glavne emisije.', 'Zagreb', 'Prog', '../img/1718193647_1915189-822928-35.jpg', 'MELVINS', '2024-06-12 14:00:47'),
(5, 'Bearstone FESTIVAL 2024', 'Bear Stone Festival, prvi hrvatski festival na otvorenom posvećen Stoner/Psychedelic Rocku', 'Ove godine će nastupiti 28 bendova na 3 pozornice uz festivalske veterane Sviraj!Jam koji preuzimaju Jam pozornicom kao i u ranijim edicijama.  Objavit će se još nekoliko iznenađenja kako se festival bude približavao. Pratite festivalske objave na društvenim mrežama i budite u toku sa svim novostima. Standardne festivalske ulaznice su u prodaji i uključuju parking i kampiranje od srijede, 03.07. do ponedjeljka 08.07. Ulaznice su dostupne na web stranici festivala i putem sustava Entrio. Neće biti dnevnih ulaznica.', 'Zagreb', 'Metal', '../img/1718212068_bearstone.jpg', 'NEMA', '2024-06-12 19:07:48'),
(6, 'Periphery AUSTRIA 2024', 'Periphery AUSTRIA 2024 kupite karte na Entrio danas!', 'Periphery je američki progresivni metal bend osnovan u Washingtonu, D.C., 2005. Njihov glazbeni stil opisan je kao progresivni metal, dgent, i progresivni metalcore. Smatraju se jednim od pionira dgent pokreta unutar progresivnog metala. Također su bili nominirani za Grammy. Bend čine pjevač Spencer Sotelo, gitaristi Misha Mansoor, Mark Holcomb, Jake Bowen i bubnjar Matt Halpern.', 'Austria', 'Prog', '../img/1718240111_wildfire.jpg', 'Covet', '2024-06-13 02:55:11'),
(7, 'YOASOBI USA TOUR', 'YOASOBI završava veliku godinu u kojoj je njihova pjesma \"Idol\" postala pjesma no.1 godine', 'Nakon nadolazećeg nastupa na Crunchyroll Anime Awards 2. ožujka i oko njihovog debija na Coachelli 12. i 19. travnja, YOASOBI će nastupiti u Los Angelesu u Shrine Auditorium & Expo Hallu 18. travnja, nakon čega slijedi San Francisco u The Warfieldu 21. travnja.', 'United States', 'Pop', '../img/1718240309_yoasobi.png', 'NEMA', '2024-06-13 02:58:29'),
(8, 'Rise Against 2024', 'Rise Against je američki punk rock sastav iz Chicaga, osnovan 1999. godine.', 'Trenutnu postavu grupe čine pjevač/ritam gitarist Tim McIlrath, glavni gitarist Zach Blair, basist Joe Principe i bubnjar Brandon Barnes. Ukorijenjena u hardcore punku i melodičkom hardcoreu, glazba Rise Againsta naglašava melodiju, zarazne hookove, agresivan zvuk i stil igre te brza tempa. Što se tiče tekstova, bend je poznat po svojim otvorenim društvenim komentarima, koji pokrivaju širok raspon tema kao što su politička nepravda, prava životinja, humanitarizam i zaštita okoliša.', 'Canada', 'Rock', '../img/1718240447_riseagainst.jpg', 'Dead Sara', '2024-06-13 03:00:47'),
(9, '1000mods Dolazi u Vintage!', '1000mods je stoner metal bend iz Chiliomodija, Grčka, osnovan 2006.', '1000mods je osnovan 2006. Bend je objavio dva EP-a, Blank Reality 2007. i Liquid Sleep 2009.\r\n\r\nU listopadu 2010. producirali su svoj prvi album Super Van Vacation s Billyjem Andersonom (Sleep, Neurosis). Kako bi promovirali svoj debi album, odsvirali su dvije europske turneje sa 40 nastupa u 15 zemalja, uključujući festivale kao što su Rockwave Festival, Desertfest i Lake on Fire.\r\n\r\n', 'Croatia', 'Rock', '../img/1718240667_1000mods.jpg', 'Truckfighters', '2024-06-13 03:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(32) NOT NULL,
  `prezime` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `username`, `email`, `password`) VALUES
(1, 'Zvonimir', 'Curiš', 'zvonjimir', 'zcuris@tvz.hr', 'tvz123'),
(2, 'admin', 'admin', 'admin', 'admin@rocknova.hr', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `vijesti`
--

CREATE TABLE `vijesti` (
  `id` int(11) NOT NULL,
  `naziv` varchar(64) NOT NULL,
  `kratkiOpis` varchar(255) NOT NULL,
  `duziOpis` varchar(800) NOT NULL,
  `datumObjave` datetime NOT NULL,
  `slika` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vijesti`
--

INSERT INTO `vijesti` (`id`, `naziv`, `kratkiOpis`, `duziOpis`, `datumObjave`, `slika`) VALUES
(1, 'Turneja Avenged Sevenfold 2024. počinje s novom setlistom', 'Avenged Sevenfold službeno su započeli svoju turneju 2024. s početnim nastupom u srijedu navečer (6. ožujka) u Buffalo\'s Keybank Center.', 'Večer otvaranja donijela je nekoliko iznenađenja, uključujući dva debija uživo kao i tri dodatne pjesme koje bend nije izvodio dulje vrijeme.\r\n\r\nGrupa je iskoristila večer otvaranja kako bi \"Roman Sky\" debitirala uživo otprilike na sredini bendovog seta. Potom su za kraj večeri prvi put uživo na bisu izveli pjesmu \"Cosmic\".\r\n\r\nOsim toga, \"Shepherd of Fire\" se našao u setu prvi put od 2018., a grupa je otišla još dublje izbacivši \"Blinded in Chains\" (prvi put od 2006. i prvi put s Brooksom Wackermanom na bubnjevima) i \" Spasi me\" (koja nije izvedena od 2011., a bila je i prva Wackermanova).', '2024-06-05 16:50:58', '../img/avengedsevenfold.jpg'),
(2, 'Što Serj Tankian misli o Sleep Tokenu i drugim novijim bendovima', 'U novom intervjuu, Serj Tankian podijelio je svoje mišljenje o Sleep Tokenu, Falling in Reverse i nekim drugim novijim rock i metal bendovima.', 'Frontmen The System of a Down nedavno je gostovao u emisiji The Jesea Lee Show, gdje je raspravljao o medijskoj upotrebi podžanrovskih oznaka unutar rocka i metala radi lakše klasifikacije, posebice nu-metala.\r\n\r\n\"Bilo nam je čudno jer nismo baš osjećali da zvučimo kao... Mislim postoje elementi koje sam mogao vidjeti od nu-metal tipa stvari unutar naše glazbe... Nije da nema elemenata toga , ali System je bio potpuno drugačiji, mislim, od većine bendova u L.A.-u u to vrijeme,\" Tankian se prisjetio etiketiranja Systema.\r\n\r\n\"Novinari moraju imati kutije u koje mogu smjestiti stvari kako bi mogli udobno pisati članke. To ima smisla, logično. Ali mislim da smo uvijek bili anomalija, ne samo za našu scenu, nego za rock bendove u cjelini.\"\r\n\r\nBudući da su Sleep Token moderna grupa koja stvarno ', '2024-06-05 16:52:14', '../img/serj.png'),
(3, 'Producent Metallice ima teoriju o Bassu na \"And Justice for All\"', 'Flemming Rasmussen, producent koji je radio na nekoliko albuma Metallice 1980-ih, ima teoriju zašto je bas odbijen na ...And Justice for All. ', 'Rasmussen je prvo radio s Metallicom na njihovom drugom albumu Ride the Lightning, a bend je ponovno radio s njim na Master of Puppets i ...And Justice for All. Potonji je poznat po tome što ima neslavno nisku glasnoću basa do točke u kojoj se gotovo uopće ne čuje.\r\n\r\nMetallica je dovela Jasona Newsteda kao svog novog basistu u listopadu 1986., samo mjesec dana nakon smrti Cliffa Burtona. Newsted je u intervjuima priznao da je \"bio jebeno bijesan\" kad je prvi put čuo gotovu verziju njihovog albuma iz 1988. - svog prvog s grupom - zbog toga koliko je bas bio nizak.\r\n\r\nRasmussen se u prošlosti dotakao glasnoće basa na ploči, ali u nedavnom YouTube intervjuu s Danielom Sarkissianom, podijelio je teoriju zašto je mislio da su James Hetfield i Lars Ulrich željeli da bas praktički ne zvuči.', '2024-06-05 16:53:27', '../img/metallica.png'),
(4, 'Osvojite potpisano Motley Crue Opno!', 'Evo vaše prilike da osvojite bubanj s potpisom Motley Cruea zahvaljujući RockNova Nights!', 'Povratak benda uživo na glazbenu scenu divlje su prihvatili obožavatelji koji su prepuni stadione kako bi vidjeli žestoke heroje na djelu. A za ovo natjecanje, dajemo vam priliku da osvojite nešto iz postava uživo, jer su Vince Neil, John 5, Nikki Sixx i Tommy Lee potpisali glavu bubnja s vlastitim doodleom odmah ispod logotipa REMO krune. Naravno, ne samo da su se Motley Crue vratili u live postavu, već su se vratili i snimajući originalni materijal, nakon što su upravo objavili pjesmu \"Dogs of War\" u travnju.\r\n\r\n\"Cijela ideja i vibra [\'Dogs of War\'] bila je kao, znate što, idemo s ovim. Ovaj definitivno predstavlja gdje smo u ovom trenutku. Idemo s ovim,\" Tommy Lee je rekao intervjueru Loudwire Nightsa Kevinu Vargasu ranije ove godine.\r\n', '2024-06-12 14:32:21', '../img/attachment-Motley-Crue-With-Signed-Drumhead.png'),
(5, '10 rock bendova iz 1990-ih koji nikada nisu dorasli hypeu', '1990-e proizvele su mnogo bendova \"sljedeće velike stvari\", ali u nekim slučajevima rezultati nikada nisu bili u skladu s hypeom. ', 'Devedesete su bile svjedoci uspona legendarnih rock bendova poput Nirvane i Pearl Jama, čija je sirova, tjeskobna glazba definirala eru grungea. Međutim, usred priča o uspjehu, mnogi su se bendovi borili održati svoj početni hype. Čimbenici poput trendova u industriji, unutarnjih sukoba i razvoja glazbenog ukusa igrali su ulogu u njihovim izazovima. Bendovi kao što su Smashing Pumpkins i Weezer pomicali su granice, ali su se suočavali s pritiskom da se razvijaju. Njihovo nasljeđe odražava nestalnu prirodu slave i trajan utjecaj rocka 90-ih na današnju glazbu, unatoč tome što neki bendovi nestaju.', '2024-06-13 02:50:47', '../img/1718239847_bendovi.PNG'),
(6, 'Kada su se Dave Mustaine i Metallica prestali svađati?', 'Kada su se Dave Mustaine i Metallica prestali svađati? U drugom nastavku naše serije Iza svađe, osvrćemo se na to kako je rivalstvo počelo, što se dogodilo i kada je završilo.', 'Većina metalaca zna da je Mustaine izvorno bio gitarist Metallice, ali je početkom 1983. dobio otkaz zbog destruktivnog ponašanja uzrokovanog opijanjem. Da se situacija nije odigrala kako jest, Mustaine nikada ne bi osnovao Megadeth, ali je svejedno dovelo do dugogodišnjeg rivalstva između thrash grupa.\r\n\r\nDok je Mustaine u tisku bio prilično transparentan o svojim osjećajima prema bivšim kolegama iz benda, James Hetfield i Lars Ulrich iz Metallice također nisu bili potpuno nevini. Obje strane su se naizmjenično prepucavale u intervjuima, no negdje u 90-ima vatra se počela stišavati.', '2024-06-13 02:52:55', '../img/1718239975_BEEF.PNG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `koncerti`
--
ALTER TABLE `koncerti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vijesti`
--
ALTER TABLE `vijesti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `koncerti`
--
ALTER TABLE `koncerti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vijesti`
--
ALTER TABLE `vijesti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
