# Fix MySQL server has gone away error

I faced the MySQL server has gone away error recently in two different environments and I found out two possible solutions on [this site](https://matomo.org/faq/troubleshooting/faq_183/) that worked for me.

As the referenced post says, the error can be produced in two circunstances:

1. Because server timed out and closed the connection. This can be fixed by setting the `wait_timeout` MySQL variable in the `my.cnf` (usually at `/etc/mysql/my.cnf`) configuration file to a larger value (e.g. `wait_timeout = 31536000`). Sometimes it may also be necessary to use a larger value for `interactive_timeout`.

2. Because the server dropped an incorrect or too large packet (if mysqld gets a packet that is too large or incorrect, then it assumes that something has gone wrong with the client and closes the connection). This can be fixed by increasing `max_allowed_packet` MySQL variable in the `my.cnf` configuration file (e.g. `max_allowed_packet = 500M`).

After changing the configuration file, restart the MySQL server with `sudo /etc/init.d/mysql restart`.
