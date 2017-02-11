# API for Barix devices

API for Barix devices to send their status messges.

## Usage
* Create a MySQL Database and insert the DB-Structure from `database/database.sql`.
* Copy `sensors/data/include/config.inc.php.template` to `sensors/data/include/config.inc.php` and enter the database credentials.
* The barix devices expect the `sensors` directory on a subdomain of your choice.
