# API for Barix devices

API for Barix devices to send their status messges.

## Usage
* create a mySQL Database and insert DB-Structure from database.sql
* Copy `sensors/data/include/config.inc.php.template` to `sensors/data/include/config.inc.php` and enter the database credentials.
* The barix devices expect the `sensors` directory on a subdomain of your choice.
