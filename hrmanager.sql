-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 18, 2019 at 03:04 AM
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
-- Database: `hrmanager`
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
  `SqlQuery` text,
  `UserID` varchar(255) DEFAULT NULL,
  `ServerIP` varchar(255) DEFAULT NULL,
  `RequestUrl` text,
  `RequestData` text,
  `RequestCompleted` varchar(255) DEFAULT NULL,
  `RequestMsg` text,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_logs`
--

INSERT INTO `app_logs` (`log_id`, `Timestamp`, `Action`, `TableName`, `RecordID`, `SqlQuery`, `UserID`, `ServerIP`, `RequestUrl`, `RequestData`, `RequestCompleted`, `RequestMsg`) VALUES
(1, '2019-09-17 21:27:08', 'userlogout', NULL, NULL, NULL, '1', '::1', 'index/logout', '[]', 'true', NULL),
(2, '2019-09-17 21:27:17', 'userlogin', 'users', NULL, 'SELECT   * FROM users WHERE  username = ?  OR email = ?  LIMIT 1', '1', '::1', 'index/login/', '[]', 'true', NULL),
(3, '2019-09-17 21:30:48', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL),
(4, '2019-09-17 21:31:06', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL),
(5, '2019-09-17 21:31:14', 'accountview', 'users', '1', 'SELECT   * FROM users WHERE  id = ?  LIMIT 1', '1', '::1', 'account', '[]', 'true', NULL),
(6, '2019-09-17 21:31:42', 'accountview', 'users', '1', 'SELECT   * FROM users WHERE  id = ?  LIMIT 1', '1', '::1', 'account', '[]', 'true', NULL),
(7, '2019-09-17 21:32:24', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL),
(8, '2019-09-17 22:59:28', 'accountview', 'users', '1', 'SELECT   * FROM users WHERE  id = ?  LIMIT 1', '1', '::1', 'account', '[]', 'true', NULL),
(9, '2019-09-17 23:46:28', 'accountview', 'users', '1', 'SELECT   * FROM users WHERE  id = ?  LIMIT 1', '1', '::1', 'account', '[]', 'true', NULL),
(10, '2019-09-17 23:49:52', 'accountview', 'users', '1', 'SELECT   * FROM users WHERE  id = ?  LIMIT 1', '1', '::1', 'account', '[]', 'true', NULL),
(11, '2019-09-17 23:50:22', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date, date_modified FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL),
(12, '2019-09-17 23:54:55', 'accountview', 'users', '1', 'SELECT   * FROM users WHERE  id = ?  LIMIT 1', '1', '::1', 'account', '[]', 'true', NULL),
(13, '2019-09-17 23:55:31', 'edit', 'users', '1', 'SELECT   * FROM users WHERE  id = ?  LIMIT 1', '1', '::1', 'account/edit//', '{\"full_name\":\"Williams Johnson\",\"username\":\"willvin\",\"profile_pic\":\"http:\\/\\/localhost\\/hrmanager\\/uploads\\/files\\/cp6q9gobm1xj8ns.jpg\",\"role\":\"administrator\"}', 'true', NULL),
(14, '2019-09-17 23:55:31', 'accountview', 'users', '1', 'SELECT   * FROM users WHERE  id = ?  LIMIT 1', '1', '::1', 'account', '[]', 'true', NULL),
(15, '2019-09-17 23:57:57', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date, date_modified FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL),
(16, '2019-09-17 23:59:20', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date, date_modified FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL),
(17, '2019-09-17 23:59:54', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date, date_modified FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL),
(18, '2019-09-18 00:04:56', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date, date_modified FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL),
(19, '2019-09-18 00:06:24', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date, date_modified FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL),
(20, '2019-09-18 00:07:18', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date, date_modified FROM users WHERE  users.id = ?  LIMIT 1', NULL, '::1', 'users/view/1', '[]', 'true', NULL),
(21, '2019-09-18 00:07:50', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date, date_modified FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL),
(22, '2019-09-18 00:08:22', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date, date_modified FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL),
(23, '2019-09-18 00:11:25', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date, date_modified FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL),
(24, '2019-09-18 00:32:02', 'accountview', 'users', '1', 'SELECT   * FROM users WHERE  id = ?  LIMIT 1', '1', '::1', 'account', '[]', 'true', NULL),
(25, '2019-09-18 00:32:40', 'view', 'locations', '1700', 'SELECT   location_id, street_address, postal_code, city, state_province, country_id FROM locations WHERE  locations.location_id = ?  LIMIT 1', '1', '::1', 'locations/view/1700', '[]', 'true', NULL),
(26, '2019-09-18 00:32:53', 'view', 'jobs', '6', 'SELECT   job_id, job_title, min_salary, max_salary FROM jobs WHERE  jobs.job_id = ?  LIMIT 1', '1', '::1', 'jobs/view/6', '[]', 'true', NULL),
(27, '2019-09-18 00:33:19', 'view', 'locations', '1700', 'SELECT   location_id, street_address, postal_code, city, state_province, country_id FROM locations WHERE  locations.location_id = ?  LIMIT 1', '1', '::1', 'locations/view/1700', '[]', 'true', NULL),
(28, '2019-09-18 00:33:21', 'view', 'countries', 'US', 'SELECT   countries.country_id, countries.country_name, countries.region_id, regions.region_name AS regions_region_name FROM countries INNER JOIN regions ON countries.region_id = regions.region_id WHERE  countries.country_id = ?  LIMIT 1', '1', '::1', 'countries/view/US', '[]', 'true', NULL),
(29, '2019-09-18 00:33:23', 'view', 'regions', '2', 'SELECT   region_id, region_name FROM regions WHERE  regions.region_id = ?  LIMIT 1', '1', '::1', 'regions/view/2', '[]', 'true', NULL),
(30, '2019-09-18 00:34:37', 'view', 'locations', '1700', 'SELECT   location_id, street_address, postal_code, city, state_province, country_id FROM locations WHERE  locations.location_id = ?  LIMIT 1', '1', '::1', 'locations/view/1700', '[]', 'true', NULL),
(31, '2019-09-18 00:34:38', 'view', 'countries', 'US', 'SELECT   countries.country_id, countries.country_name, countries.region_id, regions.region_name AS regions_region_name FROM countries INNER JOIN regions ON countries.region_id = regions.region_id WHERE  countries.country_id = ?  LIMIT 1', '1', '::1', 'countries/view/US', '[]', 'true', NULL),
(32, '2019-09-18 00:34:40', 'view', 'regions', '2', 'SELECT   region_id, region_name FROM regions WHERE  regions.region_id = ?  LIMIT 1', '1', '::1', 'regions/view/2', '[]', 'true', NULL),
(33, '2019-09-18 00:36:24', 'view', 'jobs', '6', 'SELECT   job_id, job_title, min_salary, max_salary FROM jobs WHERE  jobs.job_id = ?  LIMIT 1', '1', '::1', 'jobs/view/6', '[]', 'true', NULL),
(34, '2019-09-18 00:40:11', 'view', 'employees', '121', 'SELECT   employees.employee_id, employees.first_name, employees.last_name, employees.email, employees.phone_number, employees.job_id, jobs.job_title AS jobs_job_title, employees.department_id, departments.department_name AS departments_department_name, employees.manager_id, employees.salary, employees.hire_date, hire_date AS howlong FROM employees INNER JOIN jobs ON employees.job_id = jobs.job_id INNER JOIN departments ON employees.department_id = departments.department_id WHERE  employees.employee_id = ?  LIMIT 1', '1', '::1', 'employees/view/121', '[]', 'true', NULL),
(35, '2019-09-18 00:41:35', 'view', 'departments', '11', 'SELECT   departments.department_id, departments.department_name, departments.location_id, locations.street_address AS locations_street_address FROM departments INNER JOIN locations ON departments.location_id = locations.location_id WHERE  departments.department_id = ?  LIMIT 1', '1', '::1', 'departments/view/11', '[]', 'true', NULL),
(36, '2019-09-18 00:41:41', 'view', 'locations', '1700', 'SELECT   location_id, street_address, postal_code, city, state_province, country_id FROM locations WHERE  locations.location_id = ?  LIMIT 1', '1', '::1', 'locations/view/1700', '[]', 'true', NULL),
(37, '2019-09-18 00:41:42', 'view', 'countries', 'US', 'SELECT   countries.country_id, countries.country_name, countries.region_id, regions.region_name AS regions_region_name FROM countries INNER JOIN regions ON countries.region_id = regions.region_id WHERE  countries.country_id = ?  LIMIT 1', '1', '::1', 'countries/view/US', '[]', 'true', NULL),
(38, '2019-09-18 00:41:44', 'view', 'regions', '2', 'SELECT   region_id, region_name FROM regions WHERE  regions.region_id = ?  LIMIT 1', '1', '::1', 'regions/view/2', '[]', 'true', NULL),
(39, '2019-09-18 00:41:53', 'view', 'jobs', '19', 'SELECT   job_id, job_title, min_salary, max_salary FROM jobs WHERE  jobs.job_id = ?  LIMIT 1', '1', '::1', 'jobs/view/19', '[]', 'true', NULL),
(40, '2019-09-18 00:41:56', 'view', 'employees', '100', 'SELECT   employees.employee_id, employees.first_name, employees.last_name, employees.email, employees.phone_number, employees.job_id, jobs.job_title AS jobs_job_title, employees.department_id, departments.department_name AS departments_department_name, employees.manager_id, employees.salary, employees.hire_date, hire_date AS howlong FROM employees INNER JOIN jobs ON employees.job_id = jobs.job_id INNER JOIN departments ON employees.department_id = departments.department_id WHERE  employees.employee_id = ?  LIMIT 1', '1', '::1', 'employees/view/100', '[]', 'true', NULL),
(41, '2019-09-18 00:41:58', 'view', 'jobs', '4', 'SELECT   job_id, job_title, min_salary, max_salary FROM jobs WHERE  jobs.job_id = ?  LIMIT 1', '1', '::1', 'jobs/view/4', '[]', 'true', NULL),
(42, '2019-09-18 00:42:00', 'view', 'employees', '100', 'SELECT   employees.employee_id, employees.first_name, employees.last_name, employees.email, employees.phone_number, employees.job_id, jobs.job_title AS jobs_job_title, employees.department_id, departments.department_name AS departments_department_name, employees.manager_id, employees.salary, employees.hire_date, hire_date AS howlong FROM employees INNER JOIN jobs ON employees.job_id = jobs.job_id INNER JOIN departments ON employees.department_id = departments.department_id WHERE  employees.employee_id = ?  LIMIT 1', '1', '::1', 'employees/view/100', '[]', 'true', NULL),
(43, '2019-09-18 00:42:02', 'view', 'departments', '9', 'SELECT   departments.department_id, departments.department_name, departments.location_id, locations.street_address AS locations_street_address FROM departments INNER JOIN locations ON departments.location_id = locations.location_id WHERE  departments.department_id = ?  LIMIT 1', '1', '::1', 'departments/view/9', '[]', 'true', NULL),
(44, '2019-09-18 00:42:04', 'view', 'locations', '1700', 'SELECT   location_id, street_address, postal_code, city, state_province, country_id FROM locations WHERE  locations.location_id = ?  LIMIT 1', '1', '::1', 'locations/view/1700', '[]', 'true', NULL),
(45, '2019-09-18 00:42:05', 'view', 'countries', 'US', 'SELECT   countries.country_id, countries.country_name, countries.region_id, regions.region_name AS regions_region_name FROM countries INNER JOIN regions ON countries.region_id = regions.region_id WHERE  countries.country_id = ?  LIMIT 1', '1', '::1', 'countries/view/US', '[]', 'true', NULL),
(46, '2019-09-18 00:42:07', 'view', 'regions', '2', 'SELECT   region_id, region_name FROM regions WHERE  regions.region_id = ?  LIMIT 1', '1', '::1', 'regions/view/2', '[]', 'true', NULL),
(47, '2019-09-18 00:42:10', 'view', 'employees', '100', 'SELECT   employees.employee_id, employees.first_name, employees.last_name, employees.email, employees.phone_number, employees.job_id, jobs.job_title AS jobs_job_title, employees.department_id, departments.department_name AS departments_department_name, employees.manager_id, employees.salary, employees.hire_date, hire_date AS howlong FROM employees INNER JOIN jobs ON employees.job_id = jobs.job_id INNER JOIN departments ON employees.department_id = departments.department_id WHERE  employees.employee_id = ?  LIMIT 1', '1', '::1', 'employees/view/100', '[]', 'true', NULL),
(48, '2019-09-18 00:42:11', 'view', 'employees', NULL, 'SELECT   employees.employee_id, employees.first_name, employees.last_name, employees.email, employees.phone_number, employees.job_id, jobs.job_title AS jobs_job_title, employees.department_id, departments.department_name AS departments_department_name, employees.manager_id, employees.salary, employees.hire_date, hire_date AS howlong FROM employees INNER JOIN jobs ON employees.job_id = jobs.job_id INNER JOIN departments ON employees.department_id = departments.department_id WHERE  employees.employee_id = NULL LIMIT 1', '1', '::1', 'employees/view/', '[]', 'false', 'No record found'),
(49, '2019-09-18 00:42:14', 'view', 'employees', '114', 'SELECT   employees.employee_id, employees.first_name, employees.last_name, employees.email, employees.phone_number, employees.job_id, jobs.job_title AS jobs_job_title, employees.department_id, departments.department_name AS departments_department_name, employees.manager_id, employees.salary, employees.hire_date, hire_date AS howlong FROM employees INNER JOIN jobs ON employees.job_id = jobs.job_id INNER JOIN departments ON employees.department_id = departments.department_id WHERE  employees.employee_id = ?  LIMIT 1', '1', '::1', 'employees/view/114', '[]', 'true', NULL),
(50, '2019-09-18 00:42:15', 'view', 'employees', '100', 'SELECT   employees.employee_id, employees.first_name, employees.last_name, employees.email, employees.phone_number, employees.job_id, jobs.job_title AS jobs_job_title, employees.department_id, departments.department_name AS departments_department_name, employees.manager_id, employees.salary, employees.hire_date, hire_date AS howlong FROM employees INNER JOIN jobs ON employees.job_id = jobs.job_id INNER JOIN departments ON employees.department_id = departments.department_id WHERE  employees.employee_id = ?  LIMIT 1', '1', '::1', 'employees/view/100', '[]', 'true', NULL),
(51, '2019-09-18 00:42:25', 'view', 'departments', '5', 'SELECT   departments.department_id, departments.department_name, departments.location_id, locations.street_address AS locations_street_address FROM departments INNER JOIN locations ON departments.location_id = locations.location_id WHERE  departments.department_id = ?  LIMIT 1', '1', '::1', 'departments/view/5', '[]', 'true', NULL),
(52, '2019-09-18 00:42:27', 'view', 'locations', '1500', 'SELECT   location_id, street_address, postal_code, city, state_province, country_id FROM locations WHERE  locations.location_id = ?  LIMIT 1', '1', '::1', 'locations/view/1500', '[]', 'true', NULL),
(53, '2019-09-18 00:42:28', 'view', 'countries', 'US', 'SELECT   countries.country_id, countries.country_name, countries.region_id, regions.region_name AS regions_region_name FROM countries INNER JOIN regions ON countries.region_id = regions.region_id WHERE  countries.country_id = ?  LIMIT 1', '1', '::1', 'countries/view/US', '[]', 'true', NULL),
(54, '2019-09-18 00:42:30', 'view', 'regions', '2', 'SELECT   region_id, region_name FROM regions WHERE  regions.region_id = ?  LIMIT 1', '1', '::1', 'regions/view/2', '[]', 'true', NULL),
(55, '2019-09-18 00:42:40', 'view', 'employees', '176', 'SELECT   employees.employee_id, employees.first_name, employees.last_name, employees.email, employees.phone_number, employees.job_id, jobs.job_title AS jobs_job_title, employees.department_id, departments.department_name AS departments_department_name, employees.manager_id, employees.salary, employees.hire_date, hire_date AS howlong FROM employees INNER JOIN jobs ON employees.job_id = jobs.job_id INNER JOIN departments ON employees.department_id = departments.department_id WHERE  employees.employee_id = ?  LIMIT 1', '1', '::1', 'employees/view/176', '[]', 'true', NULL),
(56, '2019-09-18 00:42:41', 'view', 'jobs', '16', 'SELECT   job_id, job_title, min_salary, max_salary FROM jobs WHERE  jobs.job_id = ?  LIMIT 1', '1', '::1', 'jobs/view/16', '[]', 'true', NULL),
(57, '2019-09-18 00:42:43', 'view', 'employees', '176', 'SELECT   employees.employee_id, employees.first_name, employees.last_name, employees.email, employees.phone_number, employees.job_id, jobs.job_title AS jobs_job_title, employees.department_id, departments.department_name AS departments_department_name, employees.manager_id, employees.salary, employees.hire_date, hire_date AS howlong FROM employees INNER JOIN jobs ON employees.job_id = jobs.job_id INNER JOIN departments ON employees.department_id = departments.department_id WHERE  employees.employee_id = ?  LIMIT 1', '1', '::1', 'employees/view/176', '[]', 'true', NULL),
(58, '2019-09-18 00:42:44', 'view', 'departments', '8', 'SELECT   departments.department_id, departments.department_name, departments.location_id, locations.street_address AS locations_street_address FROM departments INNER JOIN locations ON departments.location_id = locations.location_id WHERE  departments.department_id = ?  LIMIT 1', '1', '::1', 'departments/view/8', '[]', 'true', NULL),
(59, '2019-09-18 00:42:47', 'view', 'locations', '2500', 'SELECT   location_id, street_address, postal_code, city, state_province, country_id FROM locations WHERE  locations.location_id = ?  LIMIT 1', '1', '::1', 'locations/view/2500', '[]', 'true', NULL),
(60, '2019-09-18 00:42:50', 'view', 'employees', '176', 'SELECT   employees.employee_id, employees.first_name, employees.last_name, employees.email, employees.phone_number, employees.job_id, jobs.job_title AS jobs_job_title, employees.department_id, departments.department_name AS departments_department_name, employees.manager_id, employees.salary, employees.hire_date, hire_date AS howlong FROM employees INNER JOIN jobs ON employees.job_id = jobs.job_id INNER JOIN departments ON employees.department_id = departments.department_id WHERE  employees.employee_id = ?  LIMIT 1', '1', '::1', 'employees/view/176', '[]', 'true', NULL),
(61, '2019-09-18 00:42:52', 'view', 'jobs', '16', 'SELECT   job_id, job_title, min_salary, max_salary FROM jobs WHERE  jobs.job_id = ?  LIMIT 1', '1', '::1', 'jobs/view/16', '[]', 'true', NULL),
(62, '2019-09-18 00:42:55', 'view', 'employees', '176', 'SELECT   employees.employee_id, employees.first_name, employees.last_name, employees.email, employees.phone_number, employees.job_id, jobs.job_title AS jobs_job_title, employees.department_id, departments.department_name AS departments_department_name, employees.manager_id, employees.salary, employees.hire_date, hire_date AS howlong FROM employees INNER JOIN jobs ON employees.job_id = jobs.job_id INNER JOIN departments ON employees.department_id = departments.department_id WHERE  employees.employee_id = ?  LIMIT 1', '1', '::1', 'employees/view/176', '[]', 'true', NULL),
(63, '2019-09-18 00:42:57', 'view', 'departments', '8', 'SELECT   departments.department_id, departments.department_name, departments.location_id, locations.street_address AS locations_street_address FROM departments INNER JOIN locations ON departments.location_id = locations.location_id WHERE  departments.department_id = ?  LIMIT 1', '1', '::1', 'departments/view/8', '[]', 'true', NULL),
(64, '2019-09-18 00:43:01', 'view', 'locations', '2500', 'SELECT   location_id, street_address, postal_code, city, state_province, country_id FROM locations WHERE  locations.location_id = ?  LIMIT 1', '1', '::1', 'locations/view/2500', '[]', 'true', NULL),
(65, '2019-09-18 00:43:05', 'view', 'countries', 'UK', 'SELECT   countries.country_id, countries.country_name, countries.region_id, regions.region_name AS regions_region_name FROM countries INNER JOIN regions ON countries.region_id = regions.region_id WHERE  countries.country_id = ?  LIMIT 1', '1', '::1', 'countries/view/UK', '[]', 'true', NULL),
(66, '2019-09-18 00:43:07', 'view', 'regions', '1', 'SELECT   region_id, region_name FROM regions WHERE  regions.region_id = ?  LIMIT 1', '1', '::1', 'regions/view/1', '[]', 'true', NULL),
(67, '2019-09-18 00:43:09', 'view', 'employees', '146', 'SELECT   employees.employee_id, employees.first_name, employees.last_name, employees.email, employees.phone_number, employees.job_id, jobs.job_title AS jobs_job_title, employees.department_id, departments.department_name AS departments_department_name, employees.manager_id, employees.salary, employees.hire_date, hire_date AS howlong FROM employees INNER JOIN jobs ON employees.job_id = jobs.job_id INNER JOIN departments ON employees.department_id = departments.department_id WHERE  employees.employee_id = ?  LIMIT 1', '1', '::1', 'employees/view/146', '[]', 'true', NULL),
(68, '2019-09-18 00:43:26', 'view', 'dependents', '30', 'SELECT   dependents.dependent_id, dependents.first_name, dependents.last_name, dependents.relationship, dependents.employee_id, employees.first_name AS employees_first_name FROM dependents INNER JOIN employees ON dependents.employee_id = employees.employee_id WHERE  dependents.dependent_id = ?  LIMIT 1', '1', '::1', 'dependents/view/30', '[]', 'true', NULL),
(69, '2019-09-18 00:43:32', 'view', 'employees', '121', 'SELECT   employees.employee_id, employees.first_name, employees.last_name, employees.email, employees.phone_number, employees.job_id, jobs.job_title AS jobs_job_title, employees.department_id, departments.department_name AS departments_department_name, employees.manager_id, employees.salary, employees.hire_date, hire_date AS howlong FROM employees INNER JOIN jobs ON employees.job_id = jobs.job_id INNER JOIN departments ON employees.department_id = departments.department_id WHERE  employees.employee_id = ?  LIMIT 1', '1', '::1', 'employees/view/121', '[]', 'true', NULL),
(70, '2019-09-18 00:43:37', 'view', 'countries', 'GH', 'SELECT   countries.country_id, countries.country_name, countries.region_id, regions.region_name AS regions_region_name FROM countries INNER JOIN regions ON countries.region_id = regions.region_id WHERE  countries.country_id = ?  LIMIT 1', '1', '::1', 'countries/view/GH', '[]', 'true', NULL),
(71, '2019-09-18 00:43:38', 'view', 'regions', '4', 'SELECT   region_id, region_name FROM regions WHERE  regions.region_id = ?  LIMIT 1', '1', '::1', 'regions/view/4', '[]', 'true', NULL),
(72, '2019-09-18 00:43:40', 'view', 'locations', '2701', 'SELECT   location_id, street_address, postal_code, city, state_province, country_id FROM locations WHERE  locations.location_id = ?  LIMIT 1', '1', '::1', 'locations/view/2701', '[]', 'true', NULL),
(73, '2019-09-18 00:43:47', 'view', 'regions', '2', 'SELECT   region_id, region_name FROM regions WHERE  regions.region_id = ?  LIMIT 1', '1', '::1', 'regions/view/2', '[]', 'true', NULL),
(74, '2019-09-18 00:43:50', 'view', 'countries', 'AR', 'SELECT   countries.country_id, countries.country_name, countries.region_id, regions.region_name AS regions_region_name FROM countries INNER JOIN regions ON countries.region_id = regions.region_id WHERE  countries.country_id = ?  LIMIT 1', '1', '::1', 'countries/view/AR', '[]', 'true', NULL),
(75, '2019-09-18 00:43:52', 'view', 'regions', '2', 'SELECT   region_id, region_name FROM regions WHERE  regions.region_id = ?  LIMIT 1', '1', '::1', 'regions/view/2', '[]', 'true', NULL),
(76, '2019-09-18 00:44:07', 'view', 'regions', '4', 'SELECT   region_id, region_name FROM regions WHERE  regions.region_id = ?  LIMIT 1', '1', '::1', 'regions/view/4', '[]', 'true', NULL),
(77, '2019-09-18 00:44:17', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date, date_modified FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL),
(78, '2019-09-18 00:48:49', 'view', 'departments', '11', 'SELECT   departments.department_id, departments.department_name, departments.location_id, locations.street_address AS locations_street_address FROM departments INNER JOIN locations ON departments.location_id = locations.location_id WHERE  departments.department_id = ?  LIMIT 1', '1', '::1', 'departments/view/11', '[]', 'true', NULL),
(79, '2019-09-18 00:53:28', 'view', 'departments', '11', 'SELECT   departments.department_id, departments.department_name, departments.location_id, locations.street_address AS locations_street_address FROM departments INNER JOIN locations ON departments.location_id = locations.location_id WHERE  departments.department_id = ?  LIMIT 1', '1', '::1', 'departments/view/11', '[]', 'true', NULL),
(80, '2019-09-18 00:55:48', 'view', 'departments', '11', 'SELECT   departments.department_id, departments.department_name, departments.location_id, locations.street_address AS locations_street_address FROM departments INNER JOIN locations ON departments.location_id = locations.location_id WHERE  departments.department_id = ?  LIMIT 1', '1', '::1', 'departments/view/11', '[]', 'true', NULL),
(81, '2019-09-18 00:56:00', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date, date_modified FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL),
(82, '2019-09-18 01:01:22', 'view', 'departments', '11', 'SELECT   departments.department_id, departments.department_name, departments.location_id, locations.street_address AS locations_street_address FROM departments INNER JOIN locations ON departments.location_id = locations.location_id WHERE  departments.department_id = ?  LIMIT 1', '1', '::1', 'departments/view/11', '[]', 'true', NULL),
(83, '2019-09-18 01:02:38', 'view', 'departments', '11', 'SELECT   departments.department_id, departments.department_name, departments.location_id, locations.street_address AS locations_street_address FROM departments INNER JOIN locations ON departments.location_id = locations.location_id WHERE  departments.department_id = ?  LIMIT 1', '1', '::1', 'departments/view/11', '[]', 'true', NULL),
(84, '2019-09-18 01:10:17', 'accountview', 'users', '1', 'SELECT   * FROM users WHERE  id = ?  LIMIT 1', '1', '::1', 'account', '[]', 'true', NULL),
(85, '2019-09-18 01:11:04', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date, date_modified FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL),
(86, '2019-09-18 02:44:42', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date, date_modified FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL),
(87, '2019-09-18 02:53:52', 'view', 'departments', '11', 'SELECT   departments.department_id, departments.department_name, departments.location_id, locations.street_address AS locations_street_address FROM departments INNER JOIN locations ON departments.location_id = locations.location_id WHERE  departments.department_id = ?  LIMIT 1', '1', '::1', 'departments/view/11', '[]', 'true', NULL),
(88, '2019-09-18 02:54:19', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date, date_modified FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL),
(89, '2019-09-18 02:54:25', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date, date_modified FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL),
(90, '2019-09-18 02:54:34', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date, date_modified FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL),
(91, '2019-09-18 02:55:32', 'view', 'departments', '11', 'SELECT   departments.department_id, departments.department_name, departments.location_id, locations.street_address AS locations_street_address FROM departments INNER JOIN locations ON departments.location_id = locations.location_id WHERE  departments.department_id = ?  LIMIT 1', '1', '::1', 'departments/view/11', '[]', 'true', NULL),
(92, '2019-09-18 02:55:41', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date, date_modified FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL),
(93, '2019-09-18 02:56:06', 'view', 'departments', '11', 'SELECT   departments.department_id, departments.department_name, departments.location_id, locations.street_address AS locations_street_address FROM departments INNER JOIN locations ON departments.location_id = locations.location_id WHERE  departments.department_id = ?  LIMIT 1', '1', '::1', 'departments/view/11', '[]', 'true', NULL),
(94, '2019-09-18 02:56:43', 'view', 'users', '1', 'SELECT   id, full_name, username, email, role, date, date_modified FROM users WHERE  users.id = ?  LIMIT 1', '1', '::1', 'users/view/1', '[]', 'true', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `country_id` char(2) NOT NULL,
  `country_name` varchar(40) DEFAULT NULL,
  `region_id` int(11) NOT NULL,
  PRIMARY KEY (`country_id`),
  KEY `region_id` (`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `region_id`) VALUES
('AR', 'Argentina', 2),
('AU', 'Australia', 3),
('BE', 'Belgium', 1),
('BR', 'Brazil', 2),
('CA', 'Canada', 2),
('CH', 'Switzerland', 1),
('CN', 'China', 3),
('DE', 'Germany', 1),
('DK', 'Denmark', 1),
('EG', 'Egypt', 4),
('FR', 'France', 1),
('HK', 'HongKong', 3),
('IL', 'Israel', 4),
('IN', 'India', 3),
('IT', 'Italy', 1),
('JP', 'Japan', 3),
('KW', 'Kuwait', 4),
('MX', 'Mexico', 2),
('NG', 'Nigeria', 4),
('NL', 'Netherlands', 1),
('SG', 'Singapore', 3),
('UK', 'United Kingdom', 1),
('US', 'United States of America', 2),
('ZM', 'Zambia', 4),
('ZW', 'Zimbabwe', 4),
('GH', 'Ghana', 4);

-- --------------------------------------------------------

--
-- Table structure for table `countries_list`
--

DROP TABLE IF EXISTS `countries_list`;
CREATE TABLE IF NOT EXISTS `countries_list` (
  `code` char(2) CHARACTER SET latin1 NOT NULL,
  `name_en` tinytext CHARACTER SET latin1,
  `name_fr` tinytext CHARACTER SET latin1,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries_list`
--

INSERT INTO `countries_list` (`code`, `name_en`, `name_fr`) VALUES
('AD', 'Andorra', 'Andorre'),
('AE', 'United Arab Emirates', 'Émirats arabes unis'),
('AF', 'Afghanistan', 'Afghanistan'),
('AG', 'Antigua and Barbuda', 'Antigua-et-Barbuda'),
('AI', 'Anguilla', 'Anguilla'),
('AL', 'Albania', 'Albanie'),
('AM', 'Armenia', 'Arménie'),
('AO', 'Angola', 'Angola'),
('AQ', 'Antarctica', 'Antarctique'),
('AR', 'Argentina', 'Argentine'),
('AS', 'American Samoa', 'Samoa américaine'),
('AT', 'Austria', 'Autriche'),
('AU', 'Australia', 'Australie'),
('AW', 'Aruba', 'Aruba'),
('AX', 'Åland Islands', 'Îles d\'Åland'),
('AZ', 'Azerbaijan', 'Azerbaïdjan'),
('BA', 'Bosnia and Herzegovina', 'Bosnie-Herzégovine'),
('BB', 'Barbados', 'Barbade'),
('BD', 'Bangladesh', 'Bangladesh'),
('BE', 'Belgium', 'Belgique'),
('BF', 'Burkina Faso', 'Burkina Faso'),
('BG', 'Bulgaria', 'Bulgarie'),
('BH', 'Bahrain', 'Bahreïn'),
('BI', 'Burundi', 'Burundi'),
('BJ', 'Benin', 'Bénin'),
('BL', 'Saint Barthélemy', 'Saint-Barthélemy'),
('BM', 'Bermuda', 'Bermudes'),
('BN', 'Brunei Darussalam', 'Brunei Darussalam'),
('BO', 'Bolivia', 'Bolivie'),
('BQ', 'Caribbean Netherlands ', 'Pays-Bas caribéens'),
('BR', 'Brazil', 'Brésil'),
('BS', 'Bahamas', 'Bahamas'),
('BT', 'Bhutan', 'Bhoutan'),
('BV', 'Bouvet Island', 'Île Bouvet'),
('BW', 'Botswana', 'Botswana'),
('BY', 'Belarus', 'Bélarus'),
('BZ', 'Belize', 'Belize'),
('CA', 'Canada', 'Canada'),
('CC', 'Cocos (Keeling) Islands', 'Îles Cocos (Keeling)'),
('CD', 'Congo, Democratic Republic of', 'Congo, République démocratique du'),
('CF', 'Central African Republic', 'République centrafricaine'),
('CG', 'Congo', 'Congo'),
('CH', 'Switzerland', 'Suisse'),
('CI', 'Côte d\'Ivoire', 'Côte d\'Ivoire'),
('CK', 'Cook Islands', 'Îles Cook'),
('CL', 'Chile', 'Chili'),
('CM', 'Cameroon', 'Cameroun'),
('CN', 'China', 'Chine'),
('CO', 'Colombia', 'Colombie'),
('CR', 'Costa Rica', 'Costa Rica'),
('CU', 'Cuba', 'Cuba'),
('CV', 'Cape Verde', 'Cap-Vert'),
('CW', 'Curaçao', 'Curaçao'),
('CX', 'Christmas Island', 'Île Christmas'),
('CY', 'Cyprus', 'Chypre'),
('CZ', 'Czech Republic', 'République tchèque'),
('DE', 'Germany', 'Allemagne'),
('DJ', 'Djibouti', 'Djibouti'),
('DK', 'Denmark', 'Danemark'),
('DM', 'Dominica', 'Dominique'),
('DO', 'Dominican Republic', 'République dominicaine'),
('DZ', 'Algeria', 'Algérie'),
('EC', 'Ecuador', 'Équateur'),
('EE', 'Estonia', 'Estonie'),
('EG', 'Egypt', 'Égypte'),
('EH', 'Western Sahara', 'Sahara Occidental'),
('ER', 'Eritrea', 'Érythrée'),
('ES', 'Spain', 'Espagne'),
('ET', 'Ethiopia', 'Éthiopie'),
('FI', 'Finland', 'Finlande'),
('FJ', 'Fiji', 'Fidji'),
('FK', 'Falkland Islands', 'Îles Malouines'),
('FM', 'Micronesia, Federated States of', 'Micronésie, États fédérés de'),
('FO', 'Faroe Islands', 'Îles Féroé'),
('FR', 'France', 'France'),
('GA', 'Gabon', 'Gabon'),
('GB', 'United Kingdom', 'Royaume-Uni'),
('GD', 'Grenada', 'Grenade'),
('GE', 'Georgia', 'Géorgie'),
('GF', 'French Guiana', 'Guyane française'),
('GG', 'Guernsey', 'Guernesey'),
('GH', 'Ghana', 'Ghana'),
('GI', 'Gibraltar', 'Gibraltar'),
('GL', 'Greenland', 'Groenland'),
('GM', 'Gambia', 'Gambie'),
('GN', 'Guinea', 'Guinée'),
('GP', 'Guadeloupe', 'Guadeloupe'),
('GQ', 'Equatorial Guinea', 'Guinée équatoriale'),
('GR', 'Greece', 'Grèce'),
('GS', 'South Georgia and the South Sandwich Islands', 'Géorgie du Sud et les îles Sandwich du Sud'),
('GT', 'Guatemala', 'Guatemala'),
('GU', 'Guam', 'Guam'),
('GW', 'Guinea-Bissau', 'Guinée-Bissau'),
('GY', 'Guyana', 'Guyana'),
('HK', 'Hong Kong', 'Hong Kong'),
('HM', 'Heard and McDonald Islands', 'Îles Heard et McDonald'),
('HN', 'Honduras', 'Honduras'),
('HR', 'Croatia', 'Croatie'),
('HT', 'Haiti', 'Haïti'),
('HU', 'Hungary', 'Hongrie'),
('ID', 'Indonesia', 'Indonésie'),
('IE', 'Ireland', 'Irlande'),
('IL', 'Israel', 'Israël'),
('IM', 'Isle of Man', 'Île de Man'),
('IN', 'India', 'Inde'),
('IO', 'British Indian Ocean Territory', 'Territoire britannique de l\'océan Indien'),
('IQ', 'Iraq', 'Irak'),
('IR', 'Iran', 'Iran'),
('IS', 'Iceland', 'Islande'),
('IT', 'Italy', 'Italie'),
('JE', 'Jersey', 'Jersey'),
('JM', 'Jamaica', 'Jamaïque'),
('JO', 'Jordan', 'Jordanie'),
('JP', 'Japan', 'Japon'),
('KE', 'Kenya', 'Kenya'),
('KG', 'Kyrgyzstan', 'Kirghizistan'),
('KH', 'Cambodia', 'Cambodge'),
('KI', 'Kiribati', 'Kiribati'),
('KM', 'Comoros', 'Comores'),
('KN', 'Saint Kitts and Nevis', 'Saint-Kitts-et-Nevis'),
('KP', 'North Korea', 'Corée du Nord'),
('KR', 'South Korea', 'Corée du Sud'),
('KW', 'Kuwait', 'Koweït'),
('KY', 'Cayman Islands', 'Îles Caïmans'),
('KZ', 'Kazakhstan', 'Kazakhstan'),
('LA', 'Lao People\'s Democratic Republic', 'Laos'),
('LB', 'Lebanon', 'Liban'),
('LC', 'Saint Lucia', 'Sainte-Lucie'),
('LI', 'Liechtenstein', 'Liechtenstein'),
('LK', 'Sri Lanka', 'Sri Lanka'),
('LR', 'Liberia', 'Libéria'),
('LS', 'Lesotho', 'Lesotho'),
('LT', 'Lithuania', 'Lituanie'),
('LU', 'Luxembourg', 'Luxembourg'),
('LV', 'Latvia', 'Lettonie'),
('LY', 'Libya', 'Libye'),
('MA', 'Morocco', 'Maroc'),
('MC', 'Monaco', 'Monaco'),
('MD', 'Moldova', 'Moldavie'),
('ME', 'Montenegro', 'Monténégro'),
('MF', 'Saint-Martin (France)', 'Saint-Martin (France)'),
('MG', 'Madagascar', 'Madagascar'),
('MH', 'Marshall Islands', 'Îles Marshall'),
('MK', 'Macedonia', 'Macédoine'),
('ML', 'Mali', 'Mali'),
('MM', 'Myanmar', 'Myanmar'),
('MN', 'Mongolia', 'Mongolie'),
('MO', 'Macau', 'Macao'),
('MP', 'Northern Mariana Islands', 'Mariannes du Nord'),
('MQ', 'Martinique', 'Martinique'),
('MR', 'Mauritania', 'Mauritanie'),
('MS', 'Montserrat', 'Montserrat'),
('MT', 'Malta', 'Malte'),
('MU', 'Mauritius', 'Maurice'),
('MV', 'Maldives', 'Maldives'),
('MW', 'Malawi', 'Malawi'),
('MX', 'Mexico', 'Mexique'),
('MY', 'Malaysia', 'Malaisie'),
('MZ', 'Mozambique', 'Mozambique'),
('NA', 'Namibia', 'Namibie'),
('NC', 'New Caledonia', 'Nouvelle-Calédonie'),
('NE', 'Niger', 'Niger'),
('NF', 'Norfolk Island', 'Île Norfolk'),
('NG', 'Nigeria', 'Nigeria'),
('NI', 'Nicaragua', 'Nicaragua'),
('NL', 'The Netherlands', 'Pays-Bas'),
('NO', 'Norway', 'Norvège'),
('NP', 'Nepal', 'Népal'),
('NR', 'Nauru', 'Nauru'),
('NU', 'Niue', 'Niue'),
('NZ', 'New Zealand', 'Nouvelle-Zélande'),
('OM', 'Oman', 'Oman'),
('PA', 'Panama', 'Panama'),
('PE', 'Peru', 'Pérou'),
('PF', 'French Polynesia', 'Polynésie française'),
('PG', 'Papua New Guinea', 'Papouasie-Nouvelle-Guinée'),
('PH', 'Philippines', 'Philippines'),
('PK', 'Pakistan', 'Pakistan'),
('PL', 'Poland', 'Pologne'),
('PM', 'St. Pierre and Miquelon', 'Saint-Pierre-et-Miquelon'),
('PN', 'Pitcairn', 'Pitcairn'),
('PR', 'Puerto Rico', 'Puerto Rico'),
('PS', 'Palestine, State of', 'Palestine'),
('PT', 'Portugal', 'Portugal'),
('PW', 'Palau', 'Palau'),
('PY', 'Paraguay', 'Paraguay'),
('QA', 'Qatar', 'Qatar'),
('RE', 'Réunion', 'Réunion'),
('RO', 'Romania', 'Roumanie'),
('RS', 'Serbia', 'Serbie'),
('RU', 'Russian Federation', 'Russie'),
('RW', 'Rwanda', 'Rwanda'),
('SA', 'Saudi Arabia', 'Arabie saoudite'),
('SB', 'Solomon Islands', 'Îles Salomon'),
('SC', 'Seychelles', 'Seychelles'),
('SD', 'Sudan', 'Soudan'),
('SE', 'Sweden', 'Suède'),
('SG', 'Singapore', 'Singapour'),
('SH', 'Saint Helena', 'Sainte-Hélène'),
('SI', 'Slovenia', 'Slovénie'),
('SJ', 'Svalbard and Jan Mayen Islands', 'Svalbard et île de Jan Mayen'),
('SK', 'Slovakia', 'Slovaquie'),
('SL', 'Sierra Leone', 'Sierra Leone'),
('SM', 'San Marino', 'Saint-Marin'),
('SN', 'Senegal', 'Sénégal'),
('SO', 'Somalia', 'Somalie'),
('SR', 'Suriname', 'Suriname'),
('SS', 'South Sudan', 'Soudan du Sud'),
('ST', 'Sao Tome and Principe', 'Sao Tomé-et-Principe'),
('SV', 'El Salvador', 'El Salvador'),
('SX', 'Sint Maarten (Dutch part)', 'Saint-Martin (Pays-Bas)'),
('SY', 'Syria', 'Syrie'),
('SZ', 'Swaziland', 'Swaziland'),
('TC', 'Turks and Caicos Islands', 'Îles Turks et Caicos'),
('TD', 'Chad', 'Tchad'),
('TF', 'French Southern Territories', 'Terres australes françaises'),
('TG', 'Togo', 'Togo'),
('TH', 'Thailand', 'Thaïlande'),
('TJ', 'Tajikistan', 'Tadjikistan'),
('TK', 'Tokelau', 'Tokelau'),
('TL', 'Timor-Leste', 'Timor-Leste'),
('TM', 'Turkmenistan', 'Turkménistan'),
('TN', 'Tunisia', 'Tunisie'),
('TO', 'Tonga', 'Tonga'),
('TR', 'Turkey', 'Turquie'),
('TT', 'Trinidad and Tobago', 'Trinité-et-Tobago'),
('TV', 'Tuvalu', 'Tuvalu'),
('TW', 'Taiwan', 'Taïwan'),
('TZ', 'Tanzania', 'Tanzanie'),
('UA', 'Ukraine', 'Ukraine'),
('UG', 'Uganda', 'Ouganda'),
('UM', 'United States Minor Outlying Islands', 'Îles mineures éloignées des États-Unis'),
('US', 'United States', 'États-Unis'),
('UY', 'Uruguay', 'Uruguay'),
('UZ', 'Uzbekistan', 'Ouzbékistan'),
('VA', 'Vatican', 'Vatican'),
('VC', 'Saint Vincent and the Grenadines', 'Saint-Vincent-et-les-Grenadines'),
('VE', 'Venezuela', 'Venezuela'),
('VG', 'Virgin Islands (British)', 'Îles Vierges britanniques'),
('VI', 'Virgin Islands (U.S.)', 'Îles Vierges américaines'),
('VN', 'Vietnam', 'Vietnam'),
('VU', 'Vanuatu', 'Vanuatu'),
('WF', 'Wallis and Futuna Islands', 'Îles Wallis-et-Futuna'),
('WS', 'Samoa', 'Samoa'),
('YE', 'Yemen', 'Yémen'),
('YT', 'Mayotte', 'Mayotte'),
('ZA', 'South Africa', 'Afrique du Sud'),
('ZM', 'Zambia', 'Zambie'),
('ZW', 'Zimbabwe', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(30) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`department_id`),
  KEY `location_id` (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`, `location_id`) VALUES
(1, 'Administration', 1700),
(2, 'Marketing', 1800),
(3, 'Purchasing', 1700),
(4, 'Human Resources', 2400),
(5, 'Shipping', 1500),
(6, 'IT', 1400),
(7, 'Public Relations', 2700),
(8, 'Sales', 2500),
(9, 'Executive', 1700),
(10, 'Finance', 1700),
(11, 'Accounting', 1700);

-- --------------------------------------------------------

--
-- Table structure for table `dependents`
--

DROP TABLE IF EXISTS `dependents`;
CREATE TABLE IF NOT EXISTS `dependents` (
  `dependent_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `relationship` varchar(25) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`dependent_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dependents`
--

INSERT INTO `dependents` (`dependent_id`, `first_name`, `last_name`, `relationship`, `employee_id`) VALUES
(1, 'Penelope', 'Gietz', 'Child', 206),
(2, 'Nick', 'Higgins', 'Child', 205),
(3, 'Ed', 'Whalen', 'Child', 200),
(4, 'Jennifer', 'King', 'Child', 100),
(5, 'Johnny', 'Kochhar', 'Child', 101),
(6, 'Bette', 'De Haan', 'Child', 102),
(7, 'Grace', 'Faviet', 'Child', 109),
(8, 'Matthew', 'Chen', 'Child', 110),
(9, 'Joe', 'Sciarra', 'Child', 111),
(10, 'Christian', 'Urman', 'Child', 112),
(11, 'Zero', 'Popp', 'Child', 113),
(12, 'Karl', 'Greenberg', 'Child', 108),
(13, 'Uma', 'Mavris', 'Child', 203),
(14, 'Vivien', 'Hunold', 'Child', 103),
(15, 'Cuba', 'Ernst', 'Child', 104),
(16, 'Fred', 'Austin', 'Child', 105),
(17, 'Helen', 'Pataballa', 'Child', 106),
(18, 'Dan', 'Lorentz', 'Child', 107),
(19, 'Bob', 'Hartstein', 'Child', 201),
(20, 'Lucille', 'Fay', 'Child', 202),
(21, 'Kirsten', 'Baer', 'Child', 204),
(22, 'Elvis', 'Khoo', 'Child', 115),
(23, 'Sandra', 'Baida', 'Child', 116),
(24, 'Cameron', 'Tobias', 'Child', 117),
(25, 'Kevin', 'Himuro', 'Child', 118),
(26, 'Rip', 'Colmenares', 'Child', 119),
(27, 'Julia', 'Raphaely', 'Child', 114),
(28, 'Woody', 'Russell', 'Child', 145),
(29, 'Alec', 'Partners', 'Child', 146),
(30, 'Sandra', 'Taylor', 'Child', 176);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `hire_date` date NOT NULL,
  `job_id` int(11) NOT NULL,
  `salary` decimal(8,2) NOT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `job_id` (`job_id`),
  KEY `department_id` (`department_id`),
  KEY `manager_id` (`manager_id`)
) ENGINE=MyISAM AUTO_INCREMENT=207 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `first_name`, `last_name`, `email`, `phone_number`, `hire_date`, `job_id`, `salary`, `manager_id`, `department_id`) VALUES
(100, 'Steven', 'King', 'steven.king@sqltutorial.org', '515.123.4567', '1987-06-17', 4, '24000.00', NULL, 9),
(101, 'Neena', 'Kochhar', 'neena.kochhar@sqltutorial.org', '515.123.4568', '1989-09-21', 5, '17000.00', 100, 9),
(102, 'Lex', 'De Haan', 'lex.de haan@sqltutorial.org', '515.123.4569', '1993-01-13', 5, '17000.00', 100, 9),
(103, 'Alexander', 'Hunold', 'alexander.hunold@sqltutorial.org', '590.423.4567', '1990-01-03', 9, '9000.00', 102, 6),
(104, 'Bruce', 'Ernst', 'bruce.ernst@sqltutorial.org', '590.423.4568', '1991-05-21', 9, '6000.00', 103, 6),
(105, 'David', 'Austin', 'david.austin@sqltutorial.org', '590.423.4569', '1997-06-25', 9, '4800.00', 103, 6),
(106, 'Valli', 'Pataballa', 'valli.pataballa@sqltutorial.org', '590.423.4560', '1998-02-05', 9, '4800.00', 103, 6),
(107, 'Diana', 'Lorentz', 'diana.lorentz@sqltutorial.org', '590.423.5567', '1999-02-07', 9, '4200.00', 103, 6),
(108, 'Nancy', 'Greenberg', 'nancy.greenberg@sqltutorial.org', '515.124.4569', '1994-08-17', 7, '12000.00', 101, 10),
(109, 'Daniel', 'Faviet', 'daniel.faviet@sqltutorial.org', '515.124.4169', '1994-08-16', 6, '9000.00', 108, 10),
(110, 'John', 'Chen', 'john.chen@sqltutorial.org', '515.124.4269', '1997-09-28', 6, '8200.00', 108, 10),
(111, 'Ismael', 'Sciarra', 'ismael.sciarra@sqltutorial.org', '515.124.4369', '1997-09-30', 6, '7700.00', 108, 10),
(112, 'Jose Manuel', 'Urman', 'jose manuel.urman@sqltutorial.org', '515.124.4469', '1998-03-07', 6, '7800.00', 108, 10),
(113, 'Luis', 'Popp', 'luis.popp@sqltutorial.org', '515.124.4567', '1999-12-07', 6, '6900.00', 108, 10),
(114, 'Den', 'Raphaely', 'den.raphaely@sqltutorial.org', '515.127.4561', '1994-12-07', 14, '11000.00', 100, 3),
(115, 'Alexander', 'Khoo', 'alexander.khoo@sqltutorial.org', '515.127.4562', '1995-05-18', 13, '3100.00', 114, 3),
(116, 'Shelli', 'Baida', 'shelli.baida@sqltutorial.org', '515.127.4563', '1997-12-24', 13, '2900.00', 114, 3),
(117, 'Sigal', 'Tobias', 'sigal.tobias@sqltutorial.org', '515.127.4564', '1997-07-24', 13, '2800.00', 114, 3),
(118, 'Guy', 'Himuro', 'guy.himuro@sqltutorial.org', '515.127.4565', '1998-11-15', 13, '2600.00', 114, 3),
(119, 'Karen', 'Colmenares', 'karen.colmenares@sqltutorial.org', '515.127.4566', '1999-08-10', 13, '2500.00', 114, 3),
(120, 'Matthew', 'Weiss', 'matthew.weiss@sqltutorial.org', '650.123.1234', '1996-07-18', 19, '8000.00', 100, 5),
(121, 'Adam', 'Fripp', 'adam.fripp@sqltutorial.org', '650.123.2234', '1997-04-10', 19, '8200.00', 100, 5),
(122, 'Payam', 'Kaufling', 'payam.kaufling@sqltutorial.org', '650.123.3234', '1995-05-01', 19, '7900.00', 100, 5),
(123, 'Shanta', 'Vollman', 'shanta.vollman@sqltutorial.org', '650.123.4234', '1997-10-10', 19, '6500.00', 100, 5),
(126, 'Irene', 'Mikkilineni', 'irene.mikkilineni@sqltutorial.org', '650.124.1224', '1998-09-28', 18, '2700.00', 120, 5),
(145, 'John', 'Russell', 'john.russell@sqltutorial.org', NULL, '1996-10-01', 15, '14000.00', 100, 8),
(146, 'Karen', 'Partners', 'karen.partners@sqltutorial.org', NULL, '1997-01-05', 15, '13500.00', 100, 8),
(176, 'Jonathon', 'Taylor', 'jonathon.taylor@sqltutorial.org', NULL, '1998-03-24', 16, '8600.00', 100, 8),
(177, 'Jack', 'Livingston', 'jack.livingston@sqltutorial.org', NULL, '1998-04-23', 16, '8400.00', 100, 8),
(178, 'Kimberely', 'Grant', 'kimberely.grant@sqltutorial.org', NULL, '1999-05-24', 16, '7000.00', 100, 8),
(179, 'Charles', 'Johnson', 'charles.johnson@sqltutorial.org', NULL, '2000-01-04', 16, '6200.00', 100, 8),
(192, 'Sarah', 'Bell', 'sarah.bell@sqltutorial.org', '650.501.1876', '1996-02-04', 17, '4000.00', 123, 5),
(193, 'Britney', 'Everett', 'britney.everett@sqltutorial.org', '650.501.2876', '1997-03-03', 17, '3900.00', 123, 5),
(200, 'Jennifer', 'Whalen', 'jennifer.whalen@sqltutorial.org', '515.123.4444', '1987-09-17', 3, '4400.00', 101, 1),
(201, 'Michael', 'Hartstein', 'michael.hartstein@sqltutorial.org', '515.123.5555', '1996-02-17', 10, '13000.00', 100, 2),
(202, 'Pat', 'Fay', 'pat.fay@sqltutorial.org', '603.123.6666', '1997-08-17', 11, '6000.00', 201, 2),
(203, 'Susan', 'Mavris', 'susan.mavris@sqltutorial.org', '515.123.7777', '1994-06-07', 8, '6500.00', 101, 4),
(204, 'Hermann', 'Baer', 'hermann.baer@sqltutorial.org', '515.123.8888', '1994-06-07', 12, '10000.00', 101, 7),
(205, 'Shelley', 'Higgins', 'shelley.higgins@sqltutorial.org', '515.123.8080', '1994-06-07', 2, '12000.00', 101, 11),
(206, 'William', 'Gietz', 'william.gietz@sqltutorial.org', '515.123.8181', '1994-06-07', 1, '8300.00', 205, 11);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(35) NOT NULL,
  `min_salary` decimal(8,2) DEFAULT NULL,
  `max_salary` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`job_id`, `job_title`, `min_salary`, `max_salary`) VALUES
(1, 'Public Accountant', '4200.00', '9000.00'),
(2, 'Accounting Manager', '8200.00', '16000.00'),
(3, 'Administration Assistant', '3000.00', '6000.00'),
(4, 'President', '20000.00', '40000.00'),
(5, 'Administration Vice President', '15000.00', '30000.00'),
(6, 'Accountant', '4200.00', '9000.00'),
(7, 'Finance Manager', '8200.00', '16000.00'),
(8, 'Human Resources Representative', '4000.00', '9000.00'),
(9, 'Programmer', '4000.00', '10000.00'),
(10, 'Marketing Manager', '9000.00', '15000.00'),
(11, 'Marketing Representative', '4000.00', '9000.00'),
(12, 'Public Relations Representative', '4500.00', '10500.00'),
(13, 'Purchasing Clerk', '2500.00', '5500.00'),
(14, 'Purchasing Manager', '8000.00', '15000.00'),
(15, 'Sales Manager', '10000.00', '20000.00'),
(16, 'Sales Representative', '6000.00', '12000.00'),
(17, 'Shipping Clerk', '2500.00', '5500.00'),
(18, 'Stock Clerk', '2000.00', '5000.00'),
(19, 'Stock Manager', '5500.00', '8500.00');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
CREATE TABLE IF NOT EXISTS `locations` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `street_address` varchar(40) DEFAULT NULL,
  `postal_code` varchar(12) DEFAULT NULL,
  `city` varchar(30) NOT NULL,
  `state_province` varchar(25) DEFAULT NULL,
  `country_id` char(2) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `country_id` (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2702 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `street_address`, `postal_code`, `city`, `state_province`, `country_id`) VALUES
(1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'),
(1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US'),
(1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'),
(1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA'),
(2400, '8204 Arthur St', NULL, 'London', NULL, 'UK'),
(2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK'),
(2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE'),
(2701, 'Applaku, barrier', '233', 'Accra', 'Greater Accra', 'GH');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
CREATE TABLE IF NOT EXISTS `regions` (
  `region_id` int(11) NOT NULL AUTO_INCREMENT,
  `region_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`region_id`, `region_name`) VALUES
(1, 'Europe'),
(2, 'Americas'),
(3, 'Asia'),
(4, 'Middle East and Africa');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'user',
  `date` datetime DEFAULT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(20) DEFAULT NULL,
  `password_reset_key` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `email`, `password`, `profile_pic`, `role`, `date`, `login_session_key`, `email_status`, `password_reset_key`, `date_modified`) VALUES
(1, 'Williams Johnson', 'willvin', 'will@example.org', '$2y$10$Dc9vJDSXiy9EkHCoSwxPP.hB1p21X9R7BBG4M0uQC8H0wc2jZLkVO', 'http://localhost/hrmanager/uploads/files/cp6q9gobm1xj8ns.jpg', 'administrator', '2019-09-17 00:00:00', NULL, NULL, NULL, '2019-09-17 23:55:31');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
