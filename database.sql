SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `Device_Type` int(11) NOT NULL,
  `mac` varchar(12) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `device_typs`
--

CREATE TABLE `device_typs` (
  `ID` int(11) NOT NULL,
  `Device_Type` varchar(50) NOT NULL,
  `Description` varchar(254) NOT NULL,
  `Vendor_URL` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `monitoring`
--

CREATE TABLE `monitoring` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mac` varchar(12) NOT NULL,
  `alarm` tinyint(1) NOT NULL,
  `BufferLevel` int(11) NOT NULL,
  `Latency` int(11) NOT NULL,
  `FrameLoss` int(11) NOT NULL,
  `FrameDup` int(11) NOT NULL,
  `FrameDrop` int(11) NOT NULL,
  `SoftErrorCount` int(11) NOT NULL,
  `StreamNumber` int(11) NOT NULL,
  `Bitrate` int(11) NOT NULL,
  `Reconnects` int(11) NOT NULL,
  `Error` int(11) NOT NULL,
  `Volume` int(11) NOT NULL,
  `UpTime` int(11) NOT NULL,
  `IP_address` text NOT NULL,
  `URL` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indizes für die Tabelle `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `device_typs`
--
ALTER TABLE `device_typs`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `monitoring`
--
ALTER TABLE `monitoring`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für Tabelle `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `device_typs`
--
ALTER TABLE `device_typs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `monitoring`
--
ALTER TABLE `monitoring`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5970;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
