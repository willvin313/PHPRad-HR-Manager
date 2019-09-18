-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 11, 2019 at 11:41 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankaccount`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_logs`
--

DROP TABLE IF EXISTS `app_logs`;
CREATE TABLE IF NOT EXISTS `app_logs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `Timestamp` varchar(255) DEFAULT NULL,
  `Action` varchar(255) DEFAULT NULL,
  `TableName` varchar(255) DEFAULT NULL,
  `RecordID` varchar(255) DEFAULT NULL,
  `SqlQuery` varchar(255) DEFAULT NULL,
  `UserID` varchar(255) DEFAULT NULL,
  `ServerIP` varchar(255) DEFAULT NULL,
  `RequestUrl` text,
  `RequestData` text,
  `RequestCompleted` varchar(255) DEFAULT NULL,
  `RequestMsg` text,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_logs`
--

INSERT INTO `app_logs` (`log_id`, `Timestamp`, `Action`, `TableName`, `RecordID`, `SqlQuery`, `UserID`, `ServerIP`, `RequestUrl`, `RequestData`, `RequestCompleted`, `RequestMsg`) VALUES
(1, '2019-09-10 23:08:40', 'view', 'bank', '2', 'SELECT   id, bank_name, branch, acct_name, acct_number, balance, signature_picture, date FROM bank WHERE  bank.id = ?  LIMIT 1', '1', '::1', 'bank/view/2', '[]', 'true', NULL),
(2, '2019-09-10 23:20:37', 'view', 'bank', '2', 'SELECT   id, bank_name, branch, acct_name, acct_number, balance, signature_picture, date FROM bank WHERE  bank.id = ?  LIMIT 1', '1', '::1', 'bank/view/2', '[]', 'true', NULL),
(3, '2019-09-10 23:26:12', 'view', 'bank', '2', 'SELECT   id, bank_name, branch, acct_name, acct_number, balance, signature_picture, date FROM bank WHERE  bank.id = ?  LIMIT 1', '1', '::1', 'bank/view/2', '[]', 'true', NULL),
(4, '2019-09-11 18:42:56', 'userlogout', NULL, NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(5, '2019-09-11 18:43:07', 'userlogin', 'users', NULL, 'SELECT   * FROM users WHERE  username = ?  OR email = ?  LIMIT 1', '1', '::1', 'index/login/', '[]', 'true', NULL),
(6, '2019-09-11 18:43:50', 'view', 'person', '1', 'SELECT   id, first_name, last_name, phone, address, date FROM person WHERE  person.id = ?  LIMIT 1', '1', '::1', 'person/view/1', '[]', 'true', NULL),
(7, '2019-09-11 19:57:26', 'edit', 'users', '2', 'UPDATE users SET `firstname` = ?, `lastname` = ?, `username` = ?, `phone` = ?, `email` = ?, `address` = ?, `gender` = ?, `dob` = ?, `user_role` = ? WHERE  users.id = ? ', '1', '::1', 'users/edit/2/', '{\"firstname\":\"Daniel\",\"lastname\":\"Johnson\",\"username\":\"dsaved\",\"phone\":\"53434343\",\"email\":\"dsaved@example.org\",\"address\":\"rgreg  ge rge gr\",\"gender\":\"Male\",\"dob\":\"1994-11-05 23:00:00\",\"user_role\":\"user\"}', 'true', NULL),
(8, '2019-09-11 20:18:52', 'userlogin', 'users', NULL, 'SELECT   * FROM users WHERE  username = ?  OR email = ?  LIMIT 1', '1', '::1', 'index/login/', '[]', 'true', NULL),
(9, '2019-09-11 20:37:28', 'accountview', 'users', '1', 'SELECT   * FROM users WHERE  id = ?  LIMIT 1', '1', '::1', 'account', '[]', 'true', NULL),
(10, '2019-09-11 20:38:52', 'accountview', 'users', '1', 'SELECT   * FROM users WHERE  id = ?  LIMIT 1', '1', '::1', 'account', '[]', 'true', NULL),
(11, '2019-09-11 22:43:08', 'add', 'bank', '3', 'INSERT INTO bank (`bank_name`, `branch`, `acct_name`, `acct_number`, `balance`, `signature_picture`)  VALUES (?, ?, ?, ?, ?, ?)', '1', '::1', 'bank/add', '{\"bank_name\":\"Guaranty Trust Bank\",\"branch\":\"Woji\",\"acct_name\":\"Emmanuel Johnson\",\"acct_number\":\"4454154543\",\"balance\":\"0\",\"signature_picture\":\"\"}', 'true', NULL),
(12, '2019-09-11 22:46:56', 'add', 'transactions', '8', 'INSERT INTO transactions (`date`, `bank_id`, `account_type`, `credit_amount`, `debit_amount`, `withdraw_or_deposit_id`, `description`, `datetime`)  VALUES (?, ?, ?, ?, ?, ?, ?, ?)', '1', '::1', 'transactions/add', '{\"date\":\"2019-09-11 22:46:32\",\"bank_id\":\"3\",\"account_type\":\"credit\",\"credit_amount\":\"22.12\",\"debit_amount\":\"0\",\"withdraw_or_deposit_id\":\"87487878\",\"description\":\"\"}', 'true', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
CREATE TABLE IF NOT EXISTS `bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) DEFAULT NULL,
  `acct_name` varchar(255) DEFAULT NULL,
  `acct_number` varchar(15) DEFAULT NULL,
  `balance` double NOT NULL DEFAULT '0',
  `branch` varchar(255) DEFAULT NULL,
  `signature_picture` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `bank_name`, `acct_name`, `acct_number`, `balance`, `branch`, `signature_picture`, `date`) VALUES
(1, 'Access Bank', 'John Doe', '2545454564', 9586, 'Kaneshi', 'http://localhost/mybank/uploads/photos/signature_3r7g1fc20nxwdja.jpg', '2019-09-09 20:43:32'),
(2, 'Ecobank', 'Jane Doe', '5648436845', 9235, 'Accra', 'http://localhost/mybank/uploads/photos/signature_w7yz409jxruamk1.png', '2019-09-09 20:46:06'),
(3, 'Guaranty Trust Bank', 'Emmanuel Johnson', '4454154543', 22.12, 'Woji', '', '2019-09-11 22:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
CREATE TABLE IF NOT EXISTS `loan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `details` text,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `outstanding` varchar(255) DEFAULT NULL,
  `due_date` varchar(255) DEFAULT NULL,
  `loan_ref_number` varchar(255) DEFAULT NULL,
  `percentage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`id`, `user_name`, `phone`, `amount`, `details`, `date`, `outstanding`, `due_date`, `loan_ref_number`, `percentage`) VALUES
(1, 'Williams Johnson', '6646848468', 400, 'rweew wfewfwf  wef', '2019-09-10 14:22:11', '-19', '2019-09-26 12:00:0', '5458878962', '20'),
(4, 'Williams Johnson', '6646848468', 700, 'dfw f wg rg reg rg', '2019-09-10 17:44:13', '910', '2019-10-15 17:44:00', '9367180524', '30'),
(5, 'Williams Johnson', '6646848468', 1000, 'ggargeg gqqag wqagf', '2019-09-10 18:43:31', '800', '2019-11-28 18:43:00', '9653710842', '30');

-- --------------------------------------------------------

--
-- Table structure for table `loan_payments`
--

DROP TABLE IF EXISTS `loan_payments`;
CREATE TABLE IF NOT EXISTS `loan_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `details` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `loan_ref` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_payments`
--

INSERT INTO `loan_payments` (`id`, `user_name`, `phone`, `amount`, `details`, `date`, `loan_ref`) VALUES
(1, '1', '6646848468', 499, 'ccdF F FAFEFEEFE ', '2019-09-10 14:38:59', '5458878962'),
(4, '1', '6646848468', 500, 'effe f qf f ewf eff', '2019-09-10 18:48:11', '9653710842');

--
-- Triggers `loan_payments`
--
DROP TRIGGER IF EXISTS `loanpayment_Delete_trigger`;
DELIMITER $$
CREATE TRIGGER `loanpayment_Delete_trigger` AFTER DELETE ON `loan_payments` FOR EACH ROW UPDATE loan SET outstanding = ( SELECT (((loan.percentage / 100) * loan.amount) + loan.amount) - SUM(loan_payments.amount) FROM loan_payments WHERE loan_payments.loan_ref = loan.loan_ref_number)
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `loanpayment_Insert_Trigger`;
DELIMITER $$
CREATE TRIGGER `loanpayment_Insert_Trigger` AFTER INSERT ON `loan_payments` FOR EACH ROW UPDATE loan SET outstanding = ( SELECT (((loan.percentage / 100) * loan.amount) + loan.amount) - SUM(loan_payments.amount) FROM loan_payments WHERE loan_payments.loan_ref = loan.loan_ref_number)
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `loanpayment_Update_Trigger`;
DELIMITER $$
CREATE TRIGGER `loanpayment_Update_Trigger` AFTER UPDATE ON `loan_payments` FOR EACH ROW UPDATE loan SET outstanding = ( SELECT (((loan.percentage / 100) * loan.amount) + loan.amount) - SUM(loan_payments.amount) FROM loan_payments WHERE loan_payments.loan_ref = loan.loan_ref_number)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `first_name`, `last_name`, `phone`, `address`, `date`) VALUES
(1, 'Williams', 'Johnson', '6646848468', 'Another address', '2019-09-10 13:56:10');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `account_type` varchar(255) DEFAULT NULL,
  `bank_id` varchar(255) DEFAULT NULL,
  `withdraw_or_deposit_id` varchar(255) DEFAULT NULL,
  `credit_amount` double DEFAULT NULL,
  `debit_amount` double DEFAULT NULL,
  `description` text,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `date`, `account_type`, `bank_id`, `withdraw_or_deposit_id`, `credit_amount`, `debit_amount`, `description`, `datetime`) VALUES
(1, '2019-09-09 23:09:55', 'credit', '2', '6464646', 0, 500, 'This is a test description.', '2019-09-09 23:15:50'),
(2, '2019-09-09 23:28:23', 'debit', '1', '6515611', 10040, 0, 'xhxdtxdxcht', '2019-09-09 23:29:24'),
(3, '2019-09-09 23:28:23', 'credit', '2', '6515611', 5640, 0, 'xhxdtxdxcht', '2019-09-09 23:29:24'),
(4, '2019-09-10 00:18:52', 'debit', '1', '454446', 0, 454, 'dadada', '2019-09-10 00:19:51'),
(5, '2019-09-09 23:28:23', 'credit', '2', '90534611', 40, 0, 'xhxdtxdxcht', '2019-09-09 23:29:24'),
(6, '2019-09-09 23:28:23', 'credit', '2', '90534611', 4055, 0, 'xhxdtxdxcht', '2019-09-09 23:29:24'),
(8, '2019-09-11 22:46:32', 'credit', '3', '87487878', 22.12, 0, '', '2019-09-11 22:46:56');

--
-- Triggers `transactions`
--
DROP TRIGGER IF EXISTS `balance_Delete_Trigger`;
DELIMITER $$
CREATE TRIGGER `balance_Delete_Trigger` AFTER DELETE ON `transactions` FOR EACH ROW UPDATE bank SET balance = ( SELECT SUM(transactions.credit_amount) - SUM(transactions.debit_amount) FROM transactions WHERE transactions.bank_id = bank.id)
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `balance_Insert_Trigger`;
DELIMITER $$
CREATE TRIGGER `balance_Insert_Trigger` AFTER INSERT ON `transactions` FOR EACH ROW UPDATE bank SET balance = ( SELECT SUM(transactions.credit_amount) - SUM(transactions.debit_amount) FROM transactions WHERE transactions.bank_id = bank.id)
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `balance_Update_Trigger`;
DELIMITER $$
CREATE TRIGGER `balance_Update_Trigger` AFTER UPDATE ON `transactions` FOR EACH ROW UPDATE bank SET balance = ( SELECT SUM(transactions.credit_amount) - SUM(transactions.debit_amount) FROM transactions WHERE transactions.bank_id = bank.id)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` text,
  `gender` varchar(30) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `user_role` varchar(255) NOT NULL DEFAULT 'user',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(20) DEFAULT NULL,
  `password_reset_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `phone`, `email`, `password`, `address`, `gender`, `dob`, `user_role`, `date`, `login_session_key`, `email_status`, `password_reset_key`) VALUES
(1, 'Williams', 'Johnson', 'willvin', '6646848468', 'willvin@example.org', '$2y$10$oIH.AvwieUJRTjFZEOjz7.7ag7sdQypP8DD6gHugdXOv4VWuqGi8e', 'old barrier, accra, ghana.', 'Male', '1995-09-12 13:47:00', 'administrator', '2019-09-10 13:47:32', NULL, NULL, NULL),
(2, 'Daniel', 'Johnson', 'dsaved', '53434343', 'dsaved@example.org', '$2y$10$oIH.AvwieUJRTjFZEOjz7.7ag7sdQypP8DD6gHugdXOv4VWuqGi8e', 'rgreg  ge rge gr', 'Male', '1994-11-05 23:00:00', 'user', '2019-09-10 23:02:27', NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
