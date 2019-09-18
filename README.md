# PHPRad HR Manager
![Screenshot of Dashboad](Screenshot(Dashboard).png)
A PHPRad <b>HR Manager project</b> file, to generate a webapp with the below features, which also help users understand how to implement or configure such feature in PHPRad. In the project we avoid using custom page and field editing.

*Click "Watch and Star" to get an email notification once an update is made to this repository. And contributions are also welcomed.*

<b>Admin Details</b><br>
Username: willvin<br>
Password: 12345

## Requirement
- PHPRad Classic Edition (Minimum: version 2.6.0)
- A web server (Recommended: Apache (WAMP, XAMP, etc))
- A MySQL server if not using Apache (WAMP, XAMP, etc)

## Features
- Admin Dashboard with counters, linechart and piechart
- Job Titles
- Departments
- Employees
- Employees Benifactor (Dependents)
- Company locations
- Countries
- Regions
- User management
- Role based access(Administrator, Staff, User)
- System logs

## Project Import
How to import the project to phprad classic.
1. Create a database using <b>PhpMyAdmin</b> and import the .sql file into the database created.
2. Launch PHPRad Classic Edition Version 2.6.0 or above.
3. Click on "<b>Open Project</b>" button.
4. Locate and select the <b>.ppm</b> project file(an import dialog comes up).
5. Enter the name you want to use for the project in <b>Project Name</b>.
6. Select/Enter the directory location of your local server in the <b>Project Location</b> field.
7. Enter the link/address to access the generated app, usually <b>http://localhost/{PROJECT-NAME}</b> for WAMP and XAMPP local servers.
8. Enter your "MySQL" server ip and port in <b>Server</b> and <b>Port</b> fields repectively, leave at default if using local server.
9. Enter your "MySQL" server username and password in <b>User</b> and <b>Password</b> fields repectively.
10. If your "MySQL" connection settings are correct, you should see a list of you database when you click on the <b>Database</b> select field.
11. Now select the previouly created database and click on <b>Import Project</b> button.
