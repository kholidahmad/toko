-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2021 at 12:33 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_kholid`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('gamlk8gef7dedrpkk7jju4p813p11ebk', '::1', 1614777398, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343737373339383b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a353139393939393b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226338316537323864396434633266363336663036376638396363313438363263223b613a363a7b733a323a226964223b733a313a2232223b733a333a22717479223b643a313b733a353a227072696365223b643a353139393939393b733a343a226e616d65223b733a31313a224e696b6f6e204433333030223b733a353a22726f776964223b733a33323a226338316537323864396434633266363336663036376638396363313438363263223b733a383a22737562746f74616c223b643a353139393939393b7d7d),
('74vv6kqs2qk2c9irbm0e6qn01g6es6bb', '::1', 1614778394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343737383339343b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a353139393939393b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226338316537323864396434633266363336663036376638396363313438363263223b613a363a7b733a323a226964223b733a313a2232223b733a333a22717479223b643a313b733a353a227072696365223b643a353139393939393b733a343a226e616d65223b733a31313a224e696b6f6e204433333030223b733a353a22726f776964223b733a33323a226338316537323864396434633266363336663036376638396363313438363263223b733a383a22737562746f74616c223b643a353139393939393b7d7d),
('cb5lmlmuavcl7qaigd3pnt51hokfk9e8', '::1', 1614778888, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343737383838383b6c6f676765645f696e7c623a313b),
('t29o8n3td1if6vcb1nk5e9fg1isamkvr', '::1', 1614779916, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343737393931363b),
('qvtmaq28par8adu1on2k06irr3o67k1v', '::1', 1614780597, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738303539373b),
('99srnnm87bm9927stsn4j6psi8b8q1jf', '::1', 1614780971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738303937313b),
('ngi0d5dtk2rm3c6g7lf8fvuogu3lft5g', '::1', 1614781468, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738313436383b),
('pib1kgfhql3kvpb2gs6qarj8ht3sg998', '::1', 1614781777, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738313737373b),
('vk4mi22vb1391nemtkpv5beem6o8q1h0', '::1', 1614782131, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738323133313b),
('uo8rjf29ookgo8v5mjjt5jc2clekk2ue', '::1', 1614782435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738323433353b),
('h0rptreo11d5i555rftnbj9tlchlaekk', '::1', 1614782860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738323836303b),
('c0doo47n61qpekbqd8lue6m4dmnttlp8', '::1', 1614783194, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738333139343b),
('6sr5h32ea14vf3e92nvoqpk989far31p', '::1', 1614783531, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738333533313b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a343030303030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226138376666363739613266336537316439313831613637623735343231323263223b613a363a7b733a323a226964223b733a313a2234223b733a333a22717479223b643a313b733a353a227072696365223b643a343030303030303b733a343a226e616d65223b733a31343a2241737573205a656e666f6e652032223b733a353a22726f776964223b733a33323a226138376666363739613266336537316439313831613637623735343231323263223b733a383a22737562746f74616c223b643a343030303030303b7d7d),
('i2vk2leu4rn1jsi1qbujthlquhgbfq93', '::1', 1614784473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738343437333b),
('q9bdisqtdpm7de6kf1mfrhiadqjn08sd', '::1', 1614784790, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738343739303b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a31373139393939393b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b613a363a7b733a323a226964223b733a313a2231223b733a333a22717479223b643a323b733a353a227072696365223b643a363030303030303b733a343a226e616d65223b733a31343a2253616d73756e6720546162205332223b733a353a22726f776964223b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b733a383a22737562746f74616c223b643a31323030303030303b7d733a33323a226338316537323864396434633266363336663036376638396363313438363263223b613a363a7b733a323a226964223b733a313a2232223b733a333a22717479223b643a313b733a353a227072696365223b643a353139393939393b733a343a226e616d65223b733a31313a224e696b6f6e204433333030223b733a353a22726f776964223b733a33323a226338316537323864396434633266363336663036376638396363313438363263223b733a383a22737562746f74616c223b643a353139393939393b7d7d),
('gud4fp1g5gv0c8afee5n4c573fn6pntt', '::1', 1614785296, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738353239363b),
('eb9nqucfh1tjn8sup0k0lqpsiidj1o70', '::1', 1614785639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738353633393b),
('qvs6c4rs7mdeo3jjf033e53bfuds5s1l', '::1', 1614785940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738353934303b),
('rqg9t0f8abeo1qki7t2he0rhsjjq5lke', '::1', 1614786247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738363234373b),
('buh497ktfd71k8lnqkkue6jvjjmrncbh', '::1', 1614786646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738363634363b),
('k21b9lgndo4rlk44f17u4c9afdhsdka6', '::1', 1614786973, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738363937333b),
('sbpq9nlnb791vkdbmo3d72mma432ftjm', '::1', 1614787278, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738373237383b),
('rj5i814efaa079jn39fes9m8k5lrop5q', '::1', 1614787841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738373834313b),
('ao8dcu209vjritefs1gfm82ijdnprk7t', '::1', 1614788151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738383135313b),
('da5a7o56kus4ac3qsjrobadbm5fllnm3', '::1', 1614788461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738383436313b),
('jengh4haqi3a3udprk1ej2pk365m8l3k', '::1', 1614788777, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738383737373b),
('5gqbqbseam5cikv0v4m8eku6b7f68lin', '::1', 1614789145, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738393134353b),
('fkviavnd1j50em32skot7qg2goivjnil', '::1', 1614789469, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738393436393b),
('bmq1fgk8m5dqehp62478r0p32h2q8tco', '::1', 1614789812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343738393831323b),
('13eq4guo6lc14duuq4sjd78un99l7pln', '::1', 1614790144, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739303134343b),
('a5m7ukldsjtjl12aqnvtt4b37cvr3tcg', '::1', 1614790463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739303436333b),
('jj59o90epu7h5asp6tou5bsc0tm58fap', '::1', 1614790884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739303838343b),
('aojgb55srj8jib4p4b1040h44i7m880n', '::1', 1614791258, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739313235383b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a363030303030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b613a363a7b733a323a226964223b733a313a2231223b733a333a22717479223b643a313b733a353a227072696365223b643a363030303030303b733a343a226e616d65223b733a31343a2253616d73756e6720546162205332223b733a353a22726f776964223b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b733a383a22737562746f74616c223b643a363030303030303b7d7d),
('q7aombreetr1qr9glmjmqtu2n1mf6s9c', '::1', 1614791630, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739313633303b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a31323030303030303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b613a363a7b733a323a226964223b733a313a2231223b733a333a22717479223b643a323b733a353a227072696365223b643a363030303030303b733a343a226e616d65223b733a31343a2253616d73756e6720546162205332223b733a353a22726f776964223b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b733a383a22737562746f74616c223b643a31323030303030303b7d7d),
('3cm3e68dbggmu6evmi473cirhj7ugtcf', '::1', 1614792026, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739323032363b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a31323030303030303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b613a363a7b733a323a226964223b733a313a2231223b733a333a22717479223b643a323b733a353a227072696365223b643a363030303030303b733a343a226e616d65223b733a31343a2253616d73756e6720546162205332223b733a353a22726f776964223b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b733a383a22737562746f74616c223b643a31323030303030303b7d7d),
('22fgusih6bls9shju59eu8rhpocoj68r', '::1', 1614792462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739323436323b),
('9crvmu8shdvnd063uu7911qmbqmmmn04', '::1', 1614792787, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739323738373b),
('0qhoi8tmdtlgr736ufkl0op0l6d4blcs', '::1', 1614792944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739323738373b),
('krrf888nnh22sreebfvaaqietd1lv0ue', '::1', 1614793108, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739333031303b),
('9pa7cd0v2tddabef8ltp9vk3bm3svapn', '::1', 1614793992, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739333939323b),
('oi72ngicmurbke8hsp2qhdlu6j20bqli', '::1', 1614794396, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739343339363b),
('m1fsaithp5ofmp167dflthmt8qubkj46', '::1', 1614794763, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739343736333b),
('ls2tiiq6q43np7v3if6fss1k3fsvc0vk', '::1', 1614795069, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739353036393b),
('05pvnpd28ccitg7ug1d8ft0d9b36qust', '::1', 1614795072, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739353036393b),
('sageoelq5i49fb7uo6ca7pj4o4chs99a', '::1', 1614795487, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739353438373b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a363030303030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b613a363a7b733a323a226964223b733a313a2231223b733a333a22717479223b643a313b733a353a227072696365223b643a363030303030303b733a343a226e616d65223b733a31343a2253616d73756e6720546162205332223b733a353a22726f776964223b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b733a383a22737562746f74616c223b643a363030303030303b7d7d),
('3c86gvdbo5tjl6qq7lj2hr8eol3ajgf2', '::1', 1614795821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739353832313b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a363030303030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b613a363a7b733a323a226964223b733a313a2231223b733a333a22717479223b643a313b733a353a227072696365223b643a363030303030303b733a343a226e616d65223b733a31343a2253616d73756e6720546162205332223b733a353a22726f776964223b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b733a383a22737562746f74616c223b643a363030303030303b7d7d),
('deohc5aelcess2pkvsrb0hhp37vaq351', '::1', 1614796165, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739363136353b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a363030303030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b613a363a7b733a323a226964223b733a313a2231223b733a333a22717479223b643a313b733a353a227072696365223b643a363030303030303b733a343a226e616d65223b733a31343a2253616d73756e6720546162205332223b733a353a22726f776964223b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b733a383a22737562746f74616c223b643a363030303030303b7d7d),
('5cld31cigv71lg9egrb0ggj73lf7p841', '::1', 1614796544, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739363534343b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a363030303030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b613a363a7b733a323a226964223b733a313a2231223b733a333a22717479223b643a313b733a353a227072696365223b643a363030303030303b733a343a226e616d65223b733a31343a2253616d73756e6720546162205332223b733a353a22726f776964223b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b733a383a22737562746f74616c223b643a363030303030303b7d7d),
('uguv6kc3kg13qo0op4hbumhjbge466l3', '::1', 1614796544, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739363534343b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a363030303030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b613a363a7b733a323a226964223b733a313a2231223b733a333a22717479223b643a313b733a353a227072696365223b643a363030303030303b733a343a226e616d65223b733a31343a2253616d73756e6720546162205332223b733a353a22726f776964223b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b733a383a22737562746f74616c223b643a363030303030303b7d7d),
('ept2nm5r3905oh3u8rk4prpchvc1p967', '::1', 1614796991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739363939313b),
('6ithujpaiqs4399kbflq6jteab72jq44', '::1', 1614797317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739373331373b),
('5k16kek80p775proq6seaseacj33q5ca', '::1', 1614797716, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739373731363b),
('0n9dcj1hdrerdvfes0ab9vmoa82m12oh', '::1', 1614798088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739383038383b),
('bpvd3pspv6sqn0v3avkmfu9c0vtlj7lk', '::1', 1614798263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739383038383b),
('kik4lq4ja6hqcqiocdkqf3vsvb3pjl68', '::1', 1614798618, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739383631383b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a363030303030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b613a363a7b733a323a226964223b733a313a2231223b733a333a22717479223b643a313b733a353a227072696365223b643a363030303030303b733a343a226e616d65223b733a31343a2253616d73756e6720546162205332223b733a353a22726f776964223b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b733a383a22737562746f74616c223b643a363030303030303b7d7d),
('52fl4vniq5mvd2oa9n5qa9r9ljvikagu', '::1', 1614798653, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343739383631383b),
('ugqvnshrbo8vmohl7la6bbhc9219c2su', '::1', 1614813094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343831333039343b),
('mrch8af2oljvb8ghpvbqadsb9a5euafv', '::1', 1614813512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343831333531323b),
('7463hh2ikagjp2alq1madlig1sto47lp', '::1', 1614813857, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343831333835373b),
('fpgon4j4no4dp3qm68h7fdn6t70dn8s3', '::1', 1614814159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343831343135393b),
('ahdmtq5qg1u5nsjeb91hmfgf4qut8rig', '::1', 1614814326, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343831343135393b6c6f676765645f696e7c623a313b);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nope` varchar(14) NOT NULL,
  `alamat` text NOT NULL,
  `date` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `nama`, `nope`, `alamat`, `date`, `due_date`, `status`) VALUES
(9, 'Fadly', '081213070702', 'pedurenan bekasi', '2016-11-08 16:22:07', '2016-11-09 16:22:07', 'unpaid'),
(10, 'jisung', '081213070702', 'dsfdsfsd', '2016-11-09 01:29:35', '2016-11-10 01:29:35', 'unpaid'),
(11, 'ayu', '081213070702', 'PNJ', '2016-11-09 11:20:23', '2016-11-10 11:20:23', 'unpaid'),
(13, 'kholidd', '085464564456', 'Kendal, jateng', '2021-03-03 08:29:57', '2021-03-04 08:29:57', 'lunas'),
(14, 'Napis', '08342234234', 'Balikpapan', '2021-03-03 08:36:58', '2021-03-04 08:36:58', 'unpaid'),
(15, 'Suseno', '08345345345', 'Boyolali, jawa', '2021-03-03 14:34:48', '2021-03-04 14:34:48', 'lunas'),
(17, 'Travis', '0823435345', 'jl sesama', '2021-03-03 19:41:06', '2021-03-04 19:41:06', 'unpaid'),
(18, 'lalsasd', '45645', 'sfsdfdsg', '2021-03-03 19:55:54', '2021-03-04 19:55:54', 'unpaid'),
(19, 'sfsdf', '465456546', 'dgdfgdfg', '2021-03-03 20:00:04', '2021-03-04 20:00:04', 'unpaid'),
(20, 'sfsdf', '465456546', 'dgdfgdfg', '2021-03-03 20:01:28', '2021-03-04 20:01:28', 'unpaid'),
(21, 'sfsdf', '465456546', 'dgdfgdfg', '2021-03-03 20:01:35', '2021-03-04 20:01:35', 'unpaid'),
(22, 'sdfsd', '456456', 'dfgdfgdfg', '2021-03-03 20:01:59', '2021-03-04 20:01:59', 'unpaid'),
(23, 'asdasd', '345345', 'asdasdad', '2021-03-03 20:10:33', '2021-03-04 20:10:33', 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Handphone'),
(2, 'Kamera'),
(3, 'Laptop'),
(7, 'Aksesoris');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id` int(5) NOT NULL,
  `invoice_id` int(5) NOT NULL,
  `status` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`id`, `invoice_id`, `status`, `tanggal`, `gambar`) VALUES
(2, 9, 0, '2016-11-12 02:43:41', 'WhatsApp_Image_2016-11-01_at_05_03_431.jpeg'),
(3, 13, 1, '2021-03-03 07:31:54', 'asignment_angular_udemy_-_8.PNG'),
(4, 14, 0, '2021-03-03 07:37:31', 'contoh_portfolio_3.png'),
(5, 15, 1, '2021-03-03 13:36:46', 'contoh_portfolio_31.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `invoice_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `qty` int(3) NOT NULL,
  `price` int(9) NOT NULL,
  `options` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `product_id`, `product_name`, `qty`, `price`, `options`) VALUES
(16, 9, 1, 'Samsung Tab S2', 2, 6000000, ''),
(17, 9, 2, 'Nikon D3300', 1, 5199999, ''),
(18, 10, 1, 'Samsung Tab S2', 1, 6000000, ''),
(19, 11, 1, 'Samsung Tab S2', 2, 6000000, ''),
(20, 11, 2, 'Nikon D3300', 1, 5199999, ''),
(21, 12, 1, 'Samsung Tab S2', 1, 6000000, ''),
(22, 12, 2, 'Nikon D3300', 2, 5199999, ''),
(23, 13, 3, 'Lenovo A6000', 1, 1600000, ''),
(24, 13, 6, 'Nyamnyung S3', 1, 4000000, ''),
(25, 14, 2, 'Nikon D3300', 1, 5199999, ''),
(26, 15, 2, 'Nikon D3300', 1, 5199999, ''),
(27, 15, 4, 'Asus Zenfone 2', 1, 4000000, ''),
(28, 15, 3, 'Lenovoaaaaa A6000', 1, 1600000, ''),
(29, 16, 4, 'Asus Zenfone 2', 1, 4000000, ''),
(30, 18, 1, 'Samsung Tab S2', 1, 6000000, ''),
(31, 19, 1, 'Samsung Tab S2', 1, 6000000, ''),
(32, 22, 2, 'Nikon D3300', 1, 5199999, ''),
(33, 23, 1, 'Samsung Tab S2', 1, 6000000, '');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(5) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `dimensi` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `harga` int(8) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kategori`, `brand`, `model`, `dimensi`, `keterangan`, `harga`, `gambar`) VALUES
(1, 'Handphone', 'Samsung', 'Tab S2', 'Layar 8.0', '<h5>Features Samsung Tab S2</h5>14 Megapixels. 18.0 x Optical Zoom. 3.0-inch LCD Screen. Full HD photos and 1280 x 720p HD movie capture. ISO sensitivity ISO6400 at reduced resolution. Tracking Auto Focus. Motion Panorama Mode. Face Detection technology with Blink detection and Smile and shoot mode. 4 x AA batteries not included. WxDxH 110.2 ×81.4x73.4mm. Weight 0.341kg (excluding battery and memory card). Weight 0.437kg (including battery and memory card).<br>OND363338<h4>Editorial Reviews</h4><h5>Manufacturer\'s Description</h5>With a generous 18x Fujinon optical zoom lens, the S2950 really packs a punch, especially when matched with its 14 megapixel sensor, large 3.0\" LCD screen and 720p HD (30fps) movie capture.<h5>Electric powered Fujinon 18x zoom lens</h5>The S2950 sports an impressive 28mm – 504mm* high precision Fujinon optical zoom lens. Simple to operate with an electric powered zoom lever, the huge zoom range means that you can capture all the detail, even when you\'re at a considerable distance away. You can even operate the zoom during video shooting. Unlike a bulky D-SLR, bridge cameras allow you great versatility of zoom, without the hassle of carrying a bag of lenses.<h5>Impressive panoramas</h5>With its easy to use Panoramic shooting mode you can get creative on the S2950, however basic your skills, and rest assured that you will not risk shooting uneven landscapes or shaky horizons. The camera enables you to take three successive shots with a helpful tool which automatically releases the shutter once the images are fully aligned to seamlessly stitch the shots together in-camera. It\'s so easy and the results are impressive.<h5>Sharp, clear shots</h5>Even at the longest zoom settings or in the most challenging of lighting conditions, the S2950 is able to produce crisp, clean results. With its mechanically stabilised 1/2 3\", 14 megapixel CCD sensor, and high ISO sensitivity settings, Fujifilm\'s Dual Image Stabilisation technology combines to reduce the blurring effects of both hand-shake and subject movement to provide superb pictures.', 6000000, 'samsungs22.jpg'),
(2, 'Kamera', 'Nikon', 'D3300', '3.0? 921k-Dot LCD Monitor', '<h5>Features Nikon</h5>14 Megapixels. 18.0 x Optical Zoom. 3.0-inch LCD Screen. Full HD photos and 1280 x 720p HD movie capture. ISO sensitivity ISO6400 at reduced resolution. Tracking Auto Focus. Motion Panorama Mode. Face Detection technology with Blink detection and Smile and shoot mode. 4 x AA batteries not included. WxDxH 110.2 ×81.4x73.4mm. Weight 0.341kg (excluding battery and memory card). Weight 0.437kg (including battery and memory card).<br>OND363338<h4>Editorial Reviews</h4><h5>Manufacturer\'s Description</h5>With a generous 18x Fujinon optical zoom lens, the S2950 really packs a punch, especially when matched with its 14 megapixel sensor, large 3.0\" LCD screen and 720p HD (30fps) movie capture.<h5>Electric powered Fujinon 18x zoom lens</h5>The S2950 sports an impressive 28mm – 504mm* high precision Fujinon optical zoom lens. Simple to operate with an electric powered zoom lever, the huge zoom range means that you can capture all the detail, even when you\'re at a considerable distance away. You can even operate the zoom during video shooting. Unlike a bulky D-SLR, bridge cameras allow you great versatility of zoom, without the hassle of carrying a bag of lenses.<h5>Impressive panoramas</h5>With its easy to use Panoramic shooting mode you can get creative on the S2950, however basic your skills, and rest assured that you will not risk shooting uneven landscapes or shaky horizons. The camera enables you to take three successive shots with a helpful tool which automatically releases the shutter once the images are fully aligned to seamlessly stitch the shots together in-camera. It\'s so easy and the results are impressive.<h5>Sharp, clear shots</h5>Even at the longest zoom settings or in the most challenging of lighting conditions, the S2950 is able to produce crisp, clean results. With its mechanically stabilised 1/2 3\", 14 megapixel CCD sensor, and high ISO sensitivity settings, Fujifilm\'s Dual Image Stabilisation technology combines to reduce the blurring effects of both hand-shake and subject movement to provide superb pictures.', 5199999, 'Nikon-D3300-700x5255.png'),
(3, 'Handphone', 'Lenovoaaaaa', 'A6000', '141 x 70 x 8.2 mm (5.55 x 2.76 x 0.32 in) ', '<h5>Features Lenovo A6000aaa</h5>14 Megapixels. 18.0 x Optical Zoom. 3.0-inch LCD Screen. Full HD photos and 1280 x 720p HD movie capture. ISO sensitivity ISO6400 at reduced resolution. Tracking Auto Focus. Motion Panorama Mode. Face Detection technology with Blink detection and Smile and shoot mode. 4 x AA batteries not included. WxDxH 110.2 ×81.4x73.4mm. Weight 0.341kg (excluding battery and memory card). Weight 0.437kg (including battery and memory card).<br>OND363338<h4>Editorial Reviews</h4><h5>Manufacturer\'s Description</h5>With a generous 18x Fujinon optical zoom lens, the S2950 really packs a punch, especially when matched with its 14 megapixel sensor, large 3.0\" LCD screen and 720p HD (30fps) movie capture.<h5>Electric powered Fujinon 18x zoom lens</h5>The S2950 sports an impressive 28mm – 504mm* high precision Fujinon optical zoom lens. Simple to operate with an electric powered zoom lever, the huge zoom range means that you can capture all the detail, even when you\'re at a considerable distance away. You can even operate the zoom during video shooting. Unlike a bulky D-SLR, bridge cameras allow you great versatility of zoom, without the hassle of carrying a bag of lenses.<h5>Impressive panoramas</h5>With its easy to use Panoramic shooting mode you can get creative on the S2950, however basic your skills, and rest assured that you will not risk shooting uneven landscapes or shaky horizons. The camera enables you to take three successive shots with a helpful tool which automatically releases the shutter once the images are fully aligned to seamlessly stitch the shots together in-camera. It\'s so easy and the results are impressive.<h5>Sharp, clear shots</h5>Even at the longest zoom settings or in the most challenging of lighting conditions, the S2950 is able to produce crisp, clean results. With its mechanically stabilised 1/2 3\", 14 megapixel CCD sensor, and high ISO sensitivity settings, Fujifilm\'s Dual Image Stabilisation technology combines to reduce the blurring effects of both hand-shake and subject movement to provide superb pictures.', 1600000, 'samsungs23.jpg'),
(4, 'Laptop', 'Asus', 'Zenfone 2', '16x16', '<h5>Features Asus Zenfone 2</h5>14 Megapixels. 18.0 x Optical Zoom. 3.0-inch LCD Screen. Full HD photos and 1280 x 720p HD movie capture. ISO sensitivity ISO6400 at reduced resolution. Tracking Auto Focus. Motion Panorama Mode. Face Detection technology with Blink detection and Smile and shoot mode. 4 x AA batteries not included. WxDxH 110.2 ×81.4x73.4mm. Weight 0.341kg (excluding battery and memory card). Weight 0.437kg (including battery and memory card).<br>OND363338<h4>Editorial Reviews</h4><h5>Manufacturer\'s Description</h5>With a generous 18x Fujinon optical zoom lens, the S2950 really packs a punch, especially when matched with its 14 megapixel sensor, large 3.0\" LCD screen and 720p HD (30fps) movie capture.<h5>Electric powered Fujinon 18x zoom lens</h5>The S2950 sports an impressive 28mm – 504mm* high precision Fujinon optical zoom lens. Simple to operate with an electric powered zoom lever, the huge zoom range means that you can capture all the detail, even when you\'re at a considerable distance away. You can even operate the zoom during video shooting. Unlike a bulky D-SLR, bridge cameras allow you great versatility of zoom, without the hassle of carrying a bag of lenses.<h5>Impressive panoramas</h5>With its easy to use Panoramic shooting mode you can get creative on the S2950, however basic your skills, and rest assured that you will not risk shooting uneven landscapes or shaky horizons. The camera enables you to take three successive shots with a helpful tool which automatically releases the shutter once the images are fully aligned to seamlessly stitch the shots together in-camera. It\'s so easy and the results are impressive.<h5>Sharp, clear shots</h5>Even at the longest zoom settings or in the most challenging of lighting conditions, the S2950 is able to produce crisp, clean results. With its mechanically stabilised 1/2 3\", 14 megapixel CCD sensor, and high ISO sensitivity settings, Fujifilm\'s Dual Image Stabilisation technology combines to reduce the blurring effects of both hand-shake and subject movement to provide superb pictures.', 4000000, 'Nikon-D3300-700x5256.png');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `nama` text NOT NULL,
  `nope` int(14) NOT NULL,
  `alamat` text NOT NULL,
  `status` int(1) NOT NULL,
  `bukti` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
