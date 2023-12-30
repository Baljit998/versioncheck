frappe@exp:~$ ls
'5TnTaknkIptEEppwlm?tobc1690113912489'   frappe-bench-1
 api.pyMeeting                           frappe-bench.confBackUp20230730
 bakfrappe-bench                         frappe-benchRai
 calendar.js                             his2.txt
 certbot.lock20231114                    hisDiya.txt
 checkVesrion.sh                         his.txt
 checkVesrion.sh~                        HSR
 common_site_config.json                 install.sh
 data.py                                 md2mermaid.sh
 DEADJOE                                 md2mermaid.sh~
 erpN3b.sh                               meeting1
 erpN3b.sh~                              nginxHSR.conf
 erpN3c.sh                               poll
 erpN3c.sh~                              poll_vote.py
 erpN3d.sh                               QC
 erpN3.sh                                site.py
 erpRai.sh                               snap
 erpRai.sh~                              timeManagement.txt
 FDP_ATAL_QC                             timeManagement.txt~
 frappe-bench                            TmpRai
frappe@exp:~$ sudo service mysql stop

frappe@exp:~$ sudo systemctl stop mysql
frappe@exp:~$ sudo mysqld_safe --skip-grant-tables &
[1] 1867541
frappe@exp:~$ 231230 16:15:16 mysqld_safe Logging to syslog.
231230 16:15:16 mysqld_safe Starting mariadbd daemon with databases from /var/lib/mysql
mysql -uroot
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 3
Server version: 10.6.12-MariaDB-0ubuntu0.22.04.1 Ubuntu 22.04

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]>update user set authentication_string=PASSWORD("baljit123") where User='root';
ERROR 1348 (HY000): Column 'authentication_string' is not updatable
MariaDB [mysql]> use mysql;
Database changed
MariaDB [mysql]> update user set authentication_string=PASSWORD("baljit123") where User='root';
ERROR 1348 (HY000): Column 'authentication_string' is not updatable
MariaDB [mysql]> ALTER USER 'root'@'localhost' IDENTIFIED BY 'baljit123';
ERROR 1290 (HY000): The MariaDB server is running with the --skip-grant-tables option so it cannot execute this statement
MariaDB [mysql]> exit
Bye
frappe@exp:~$ sudo systemctl stop mariadb
frappe@exp:~$ sudo mysqld_safe --skip-grant-tables &
[2] 1867912
frappe@exp:~$ 231230 16:20:00 mysqld_safe Logging to syslog.
231230 16:20:00 mysqld_safe A mysqld process already exists
mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 25
Server version: 10.6.12-MariaDB-0ubuntu0.22.04.1 Ubuntu 22.04

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> USE mysql;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MariaDB [mysql]> ALTER USER 'root'@'localhost' IDENTIFIED BY 'baljit123';
ERROR 1290 (HY000): The MariaDB server is running with the --skip-grant-tables option so it cannot execute this statement
MariaDB [mysql]> exit
Bye
[2]+  Exit 1                  sudo mysqld_safe --skip-grant-tables
frappe@exp:~$ sudo pkill mysqld_safe
frappe@exp:~$ sudo mysqld_safe &
[2] 1868085
frappe@exp:~$ 231230 16:21:27 mysqld_safe Logging to syslog.
231230 16:21:27 mysqld_safe A mysqld process already exists
mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 35
Server version: 10.6.12-MariaDB-0ubuntu0.22.04.1 Ubuntu 22.04

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> USE mysql;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MariaDB [mysql]> UPDATE user SET authentication_string = PASSWORD('baljit123') WHERE User = 'root';
ERROR 1348 (HY000): Column 'authentication_string' is not updatable
MariaDB [mysql]> UPDATE user SET authentication_string = CONCAT('*', UPPER(SHA1(UNHEX(SHA1('baljit123'))))) WHERE User = 'root';
ERROR 1348 (HY000): Column 'authentication_string' is not updatable
MariaDB [mysql]> UPDATE user SET password = PASSWORD('baljit123') WHERE User = 'root';
ERROR 1348 (HY000): Column 'Password' is not updatable
MariaDB [mysql]> ALTER USER 'root'@'localhost' IDENTIFIED BY 'baljit123';
ERROR 1290 (HY000): The MariaDB server is running with the --skip-grant-tables option so it cannot execute this statement
MariaDB [mysql]> exit
Bye
[2]+  Exit 1                  sudo mysqld_safe
frappe@exp:~$ sudo systemctl stop mariadb
frappe@exp:~$  sudo pkill mysqld_safe
frappe@exp:~$ sudo mysqld_safe --skip-grant-tables &
[2] 1868303
frappe@exp:~$ 231230 16:25:19 mysqld_safe Logging to syslog.
231230 16:25:19 mysqld_safe A mysqld process already exists
mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 50
Server version: 10.6.12-MariaDB-0ubuntu0.22.04.1 Ubuntu 22.04

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> USE mysql;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MariaDB [mysql]> UPDATE user SET authentication_string = PASSWORD('baljit123') WHERE User = 'root';
ERROR 1348 (HY000): Column 'authentication_string' is not updatable
MariaDB [mysql]> ALTER USER 'root'@'localhost' IDENTIFIED BY 'baljit123';
ERROR 1290 (HY000): The MariaDB server is running with the --skip-grant-tables option so it cannot execute this statement
MariaDB [mysql]> UPDATE user SET password = OLD_PASSWORD('baljit123') WHERE User = 'root';
ERROR 1348 (HY000): Column 'Password' is not updatable
MariaDB [mysql]> exiy
    -> exit
    -> Ctrl-C -- exit!
Aborted
[2]+  Exit 1                  sudo mysqld_safe --skip-grant-tables
frappe@exp:~$ sudo systemctl stop mariadb
frappe@exp:~$ sudo mysqld_safe --skip-grant-tables --skip-networking &
[2] 1868477
frappe@exp:~$ 231230 16:28:23 mysqld_safe Logging to syslog.
231230 16:28:23 mysqld_safe A mysqld process already exists
sudo mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 57
Server version: 10.6.12-MariaDB-0ubuntu0.22.04.1 Ubuntu 22.04

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> mysql -u root
    -> UPDATE user SET password = OLD_PASSWORD('baljit123') WHERE User = 'root';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'mysql -u root
UPDATE user SET password = OLD_PASSWORD('baljit123') WHERE User...' at line 1
MariaDB [(none)]> USE mysql;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MariaDB [mysql]> UPDATE user SET password = OLD_PASSWORD('baljit123') WHERE User = 'root';
ERROR 1348 (HY000): Column 'Password' is not updatable
MariaDB [mysql]> UPDATE user SET authentication_string = PASSWORD('baljit123') WHERE User = 'root';
ERROR 1348 (HY000): Column 'authentication_string' is not updatable
MariaDB [mysql]> ALTER USER 'root'@'localhost' IDENTIFIED BY 'baljit123';
ERROR 1290 (HY000): The MariaDB server is running with the --skip-grant-tables option so it cannot execute this statement
MariaDB [mysql]> UPDATE user SET password = PASSWORD('baljit123') WHERE User = 'root';
ERROR 1348 (HY000): Column 'Password' is not updatable
MariaDB [mysql]> exit
Bye
[2]+  Exit 1                  sudo mysqld_safe --skip-grant-tables --skip-networking
frappe@exp:~$ sudo pkill mysqld_safe
frappe@exp:~$ sudo systemctl stop mariadb
frappe@exp:~$ sudo mysqld --skip-grant-tables &
[2] 1868785
frappe@exp:~$ mysqld: Can't create file '/var/log/mysql/error.log' (errno: 13 "Permission denied")
2023-12-30 16:32:38 0 [Note] Starting MariaDB 10.6.12-MariaDB-0ubuntu0.22.04.1 source revision  as process 1868787
2023-12-30 16:32:38 0 [ERROR] mysqld: Can't lock aria control file '/var/lib/mysql/aria_log_control' for exclusive use, error: 11. Will retry for 30 seconds
mysql -u root mysql
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 87
Server version: 10.6.12-MariaDB-0ubuntu0.22.04.1 Ubuntu 22.04

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [mysql]> 2023-12-30 16:33:08 0 [ERROR] mysqld: Got error 'Could not get an exclusive lock; file is probably in use by another process' when trying to use aria control file '/var/lib/mysql/aria_log_control'
2023-12-30 16:33:08 0 [ERROR] Plugin 'Aria' init function returned error.
2023-12-30 16:33:08 0 [ERROR] Plugin 'Aria' registration as a STORAGE ENGINE failed.
2023-12-30 16:33:08 0 [Note] InnoDB: Compressed tables use zlib 1.2.11
2023-12-30 16:33:08 0 [Note] InnoDB: Using transactional memory
2023-12-30 16:33:08 0 [Note] InnoDB: Number of pools: 1
2023-12-30 16:33:08 0 [Note] InnoDB: Using crc32 + pclmulqdq instructions
2023-12-30 16:33:08 0 [Note] InnoDB: Initializing buffer pool, total size = 134217728, chunk size = 134217728
2023-12-30 16:33:08 0 [Note] InnoDB: Completed initialization of buffer pool
2023-12-30 16:33:08 0 [Note] InnoDB: Starting crash recovery from checkpoint LSN=868446261,868446261
2023-12-30 16:33:08 0 [Note] InnoDB: Starting final batch to recover 14 pages from redo log.
2023-12-30 16:33:08 0 [Note] InnoDB: 128 rollback segments are active.
2023-12-30 16:33:08 0 [Note] InnoDB: Removed temporary tablespace data file: "./ibtmp1"
2023-12-30 16:33:08 0 [Note] InnoDB: Creating shared tablespace for temporary tables
2023-12-30 16:33:08 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
2023-12-30 16:33:08 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
2023-12-30 16:33:08 0 [Note] InnoDB: 10.6.12 started; log sequence number 868468759; transaction id 3268687
2023-12-30 16:33:08 0 [Note] Plugin 'FEEDBACK' is disabled.
2023-12-30 16:33:08 0 [ERROR] Failed to initialize plugins.
2023-12-30 16:33:08 0 [ERROR] Aborting
FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.005 sec)

MariaDB [mysql]> ALTER USER 'root'@'localhost' IDENTIFIED BY 'baljit123';
Query OK, 0 rows affected (0.002 sec)

MariaDB [mysql]> FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.004 sec)

MariaDB [mysql]> exit
Bye
[2]+  Exit 1                  sudo mysqld --skip-grant-tables
frappe@exp:~$ sudo killall -9 mysqld
mysqld: no process found
frappe@exp:~$ sudo service mysql start
Job for mariadb.service failed because the control process exited with error code.
See "systemctl status mariadb.service" and "journalctl -xeu mariadb.service" for details.
frappe@exp:~$ sudo mysqladmin -S /var/run/mysqld/mysqld.sock shutdown
mysqladmin: connect to server at 'localhost' failed
error: 'Access denied for user 'root'@'localhost' (using password: NO)'
frappe@exp:~$ sudo systemctl start mariadb
Job for mariadb.service failed because the control process exited with error code.
See "systemctl status mariadb.service" and "journalctl -xeu mariadb.service" for details.
frappe@exp:~$ mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 103
Server version: 10.6.12-MariaDB-0ubuntu0.22.04.1 Ubuntu 22.04

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> exit
Bye
frappe@exp:~$ sudo systemctl restart mariadb
Job for mariadb.service failed because the control process exited with error code.
See "systemctl status mariadb.service" and "journalctl -xeu mariadb.service" for details.
frappe@exp:~$ sudo service mysql restart
Job for mariadb.service failed because the control process exited with error code.
See "systemctl status mariadb.service" and "journalctl -xeu mariadb.service" for details.
frappe@exp:~$ sudo systemctl status mariadb
× mariadb.service - MariaDB 10.6.12 database server
     Loaded: loaded (/lib/systemd/system/mariadb.service; enabled; vendor preset: enabled)
     Active: failed (Result: exit-code) since Sat 2023-12-30 16:38:39 IST; 21s ago
       Docs: man:mariadbd(8)
             https://mariadb.com/kb/en/library/systemd/
    Process: 1869201 ExecStartPre=/usr/bin/install -m 755 -o mysql -g root -d /var/run/mysql>    Process: 1869202 ExecStartPre=/bin/sh -c systemctl unset-environment _WSREP_START_POSITI>    Process: 1869204 ExecStartPre=/bin/sh -c [ ! -e /usr/bin/galera_recovery ] && VAR= ||   >    Process: 1869290 ExecStart=/usr/sbin/mariadbd $MYSQLD_OPTS $_WSREP_NEW_CLUSTER $_WSREP_S>   Main PID: 1869290 (code=exited, status=1/FAILURE)
     Status: "MariaDB server is down"
        CPU: 408ms

Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [Note] InnoDB: Starting shutdow>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [ERROR] Plugin 'InnoDB' init fu>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [ERROR] Plugin 'InnoDB' registr>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [Note] Plugin 'FEEDBACK' is dis>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [ERROR] Could not open mysql.pl>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [ERROR] Failed to initialize pl>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [ERROR] Aborting
Dec 30 16:38:39 exp systemd[1]: mariadb.service: Main process exited, code=exited, status=1/>Dec 30 16:38:39 exp systemd[1]: mariadb.service: Failed with result 'exit-code'.
Dec 30 16:38:39 exp systemd[1]: Failed to start MariaDB 10.6.12 database server.
lines 1-23/23 (END)...skipping...
× mariadb.service - MariaDB 10.6.12 database server
     Loaded: loaded (/lib/systemd/system/mariadb.service; enabled; vendor preset: enabled)
     Active: failed (Result: exit-code) since Sat 2023-12-30 16:38:39 IST; 21s ago
       Docs: man:mariadbd(8)
             https://mariadb.com/kb/en/library/systemd/
    Process: 1869201 ExecStartPre=/usr/bin/install -m 755 -o mysql -g root -d /var/run/mysql>    Process: 1869202 ExecStartPre=/bin/sh -c systemctl unset-environment _WSREP_START_POSITI>    Process: 1869204 ExecStartPre=/bin/sh -c [ ! -e /usr/bin/galera_recovery ] && VAR= ||   >    Process: 1869290 ExecStart=/usr/sbin/mariadbd $MYSQLD_OPTS $_WSREP_NEW_CLUSTER $_WSREP_S>   Main PID: 1869290 (code=exited, status=1/FAILURE)
     Status: "MariaDB server is down"
        CPU: 408ms

Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [Note] InnoDB: Starting shutdow>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [ERROR] Plugin 'InnoDB' init fu>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [ERROR] Plugin 'InnoDB' registr>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [Note] Plugin 'FEEDBACK' is dis>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [ERROR] Could not open mysql.pl>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [ERROR] Failed to initialize pl>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [ERROR] Aborting
Dec 30 16:38:39 exp systemd[1]: mariadb.service: Main process exited, code=exited, status=1/>Dec 30 16:38:39 exp systemd[1]: mariadb.service: Failed with result 'exit-code'.
Dec 30 16:38:39 exp systemd[1]: Failed to start MariaDB 10.6.12 database server.
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
frappe@exp:~$
frappe@exp:~$ sudo service mysql status
× mariadb.service - MariaDB 10.6.12 database server
     Loaded: loaded (/lib/systemd/system/mariadb.service; enabled; vendor preset: enabled)
     Active: failed (Result: exit-code) since Sat 2023-12-30 16:38:39 IST; 40s ago
       Docs: man:mariadbd(8)
             https://mariadb.com/kb/en/library/systemd/
    Process: 1869201 ExecStartPre=/usr/bin/install -m 755 -o mysql -g root -d /var/run/mysql>    Process: 1869202 ExecStartPre=/bin/sh -c systemctl unset-environment _WSREP_START_POSITI>    Process: 1869204 ExecStartPre=/bin/sh -c [ ! -e /usr/bin/galera_recovery ] && VAR= ||   >    Process: 1869290 ExecStart=/usr/sbin/mariadbd $MYSQLD_OPTS $_WSREP_NEW_CLUSTER $_WSREP_S>   Main PID: 1869290 (code=exited, status=1/FAILURE)
     Status: "MariaDB server is down"
        CPU: 408ms

Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [Note] InnoDB: Starting shutdow>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [ERROR] Plugin 'InnoDB' init fu>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [ERROR] Plugin 'InnoDB' registr>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [Note] Plugin 'FEEDBACK' is dis>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [ERROR] Could not open mysql.pl>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [ERROR] Failed to initialize pl>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [ERROR] Aborting
Dec 30 16:38:39 exp systemd[1]: mariadb.service: Main process exited, code=exited, status=1/>Dec 30 16:38:39 exp systemd[1]: mariadb.service: Failed with result 'exit-code'.
Dec 30 16:38:39 exp systemd[1]: Failed to start MariaDB 10.6.12 database server.
lines 1-23/23 (END)...skipping...
× mariadb.service - MariaDB 10.6.12 database server
     Loaded: loaded (/lib/systemd/system/mariadb.service; enabled; vendor preset: enabled)
     Active: failed (Result: exit-code) since Sat 2023-12-30 16:38:39 IST; 40s ago
       Docs: man:mariadbd(8)
             https://mariadb.com/kb/en/library/systemd/
    Process: 1869201 ExecStartPre=/usr/bin/install -m 755 -o mysql -g root -d /var/run/mysql>    Process: 1869202 ExecStartPre=/bin/sh -c systemctl unset-environment _WSREP_START_POSITI>    Process: 1869204 ExecStartPre=/bin/sh -c [ ! -e /usr/bin/galera_recovery ] && VAR= ||   >    Process: 1869290 ExecStart=/usr/sbin/mariadbd $MYSQLD_OPTS $_WSREP_NEW_CLUSTER $_WSREP_S>   Main PID: 1869290 (code=exited, status=1/FAILURE)
     Status: "MariaDB server is down"
        CPU: 408ms

Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [Note] InnoDB: Starting shutdow>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [ERROR] Plugin 'InnoDB' init fu>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [ERROR] Plugin 'InnoDB' registr>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [Note] Plugin 'FEEDBACK' is dis>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [ERROR] Could not open mysql.pl>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [ERROR] Failed to initialize pl>Dec 30 16:38:39 exp mariadbd[1869290]: 2023-12-30 16:38:39 0 [ERROR] Aborting
Dec 30 16:38:39 exp systemd[1]: mariadb.service: Main process exited, code=exited, status=1/>Dec 30 16:38:39 exp systemd[1]: mariadb.service: Failed with result 'exit-code'.
Dec 30 16:38:39 exp systemd[1]: Failed to start MariaDB 10.6.12 database server.
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
frappe@exp:~$ sudo /etc/init.d/mysql stop
sudo: /etc/init.d/mysql: command not found
frappe@exp:~$ sudo service mysql start
Job for mariadb.service failed because the control process exited with error code.
See "systemctl status mariadb.service" and "journalctl -xeu mariadb.service" for details.
frappe@exp:~$ systemctl status mariadb.service
× mariadb.service - MariaDB 10.6.12 database server
     Loaded: loaded (/lib/systemd/system/mariadb.service; enabled; vendor preset: enabled)
     Active: failed (Result: exit-code) since Sat 2023-12-30 16:41:01 IST; 36s ago
       Docs: man:mariadbd(8)
             https://mariadb.com/kb/en/library/systemd/
    Process: 1869367 ExecStartPre=/usr/bin/install -m 755 -o mysql -g root -d /var/run/mysql>    Process: 1869368 ExecStartPre=/bin/sh -c systemctl unset-environment _WSREP_START_POSITI>    Process: 1869370 ExecStartPre=/bin/sh -c [ ! -e /usr/bin/galera_recovery ] && VAR= ||   >    Process: 1869456 ExecStart=/usr/sbin/mariadbd $MYSQLD_OPTS $_WSREP_NEW_CLUSTER $_WSREP_S>   Main PID: 1869456 (code=exited, status=1/FAILURE)
     Status: "MariaDB server is down"
        CPU: 408ms
...skipping...
× mariadb.service - MariaDB 10.6.12 database server
     Loaded: loaded (/lib/systemd/system/mariadb.service; enabled; vendor preset: enabled)
     Active: failed (Result: exit-code) since Sat 2023-12-30 16:41:01 IST; 36s ago
       Docs: man:mariadbd(8)
             https://mariadb.com/kb/en/library/systemd/
    Process: 1869367 ExecStartPre=/usr/bin/install -m 755 -o mysql -g root -d /var/run/mysql>    Process: 1869368 ExecStartPre=/bin/sh -c systemctl unset-environment _WSREP_START_POSITI>    Process: 1869370 ExecStartPre=/bin/sh -c [ ! -e /usr/bin/galera_recovery ] && VAR= ||   >    Process: 1869456 ExecStart=/usr/sbin/mariadbd $MYSQLD_OPTS $_WSREP_NEW_CLUSTER $_WSREP_S>   Main PID: 1869456 (code=exited, status=1/FAILURE)
     Status: "MariaDB server is down"
        CPU: 408ms
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
...skipping...
× mariadb.service - MariaDB 10.6.12 database server
     Loaded: loaded (/lib/systemd/system/mariadb.service; enabled; vendor preset: enabled)
     Active: failed (Result: exit-code) since Sat 2023-12-30 16:41:01 IST; 36s ago
       Docs: man:mariadbd(8)
             https://mariadb.com/kb/en/library/systemd/
    Process: 1869367 ExecStartPre=/usr/bin/install -m 755 -o mysql -g root -d /var/run/mysql>    Process: 1869368 ExecStartPre=/bin/sh -c systemctl unset-environment _WSREP_START_POSITI>    Process: 1869370 ExecStartPre=/bin/sh -c [ ! -e /usr/bin/galera_recovery ] && VAR= ||   >    Process: 1869456 ExecStart=/usr/sbin/mariadbd $MYSQLD_OPTS $_WSREP_NEW_CLUSTER $_WSREP_S>   Main PID: 1869456 (code=exited, status=1/FAILURE)
     Status: "MariaDB server is down"
        CPU: 408ms
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
× mariadb.service - MariaDB 10.6.12 database server
     Loaded: loaded (/lib/systemd/system/mariadb.service; enabled; vendor preset: enabled)
     Active: failed (Result: exit-code) since Sat 2023-12-30 16:41:01 IST; 36s ago
       Docs: man:mariadbd(8)
             https://mariadb.com/kb/en/library/systemd/
    Process: 1869367 ExecStartPre=/usr/bin/install -m 755 -o mysql -g root -d /var/run/mysql>    Process: 1869368 ExecStartPre=/bin/sh -c systemctl unset-environment _WSREP_START_POSITI>    Process: 1869370 ExecStartPre=/bin/sh -c [ ! -e /usr/bin/galera_recovery ] && VAR= ||   >    Process: 1869456 ExecStart=/usr/sbin/mariadbd $MYSQLD_OPTS $_WSREP_NEW_CLUSTER $_WSREP_S>   Main PID: 1869456 (code=exited, status=1/FAILURE)
     Status: "MariaDB server is down"
        CPU: 408ms
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
...skipping...
× mariadb.service - MariaDB 10.6.12 database server
     Loaded: loaded (/lib/systemd/system/mariadb.service; enabled; vendor preset: enabled)
     Active: failed (Result: exit-code) since Sat 2023-12-30 16:41:01 IST; 36s ago
       Docs: man:mariadbd(8)
             https://mariadb.com/kb/en/library/systemd/
    Process: 1869367 ExecStartPre=/usr/bin/install -m 755 -o mysql -g root -d /var/run/mysql>    Process: 1869368 ExecStartPre=/bin/sh -c systemctl unset-environment _WSREP_START_POSITI>    Process: 1869370 ExecStartPre=/bin/sh -c [ ! -e /usr/bin/galera_recovery ] && VAR= ||   >    Process: 1869456 ExecStart=/usr/sbin/mariadbd $MYSQLD_OPTS $_WSREP_NEW_CLUSTER $_WSREP_S>   Main PID: 1869456 (code=exited, status=1/FAILURE)
     Status: "MariaDB server is down"
        CPU: 408ms
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
× mariadb.service - MariaDB 10.6.12 database server
     Loaded: loaded (/lib/systemd/system/mariadb.service; enabled; vendor preset: enabled)
     Active: failed (Result: exit-code) since Sat 2023-12-30 16:41:01 IST; 36s ago
       Docs: man:mariadbd(8)
             https://mariadb.com/kb/en/library/systemd/
    Process: 1869367 ExecStartPre=/usr/bin/install -m 755 -o mysql -g root -d /var/run/mysql>    Process: 1869368 ExecStartPre=/bin/sh -c systemctl unset-environment _WSREP_START_POSITI>    Process: 1869370 ExecStartPre=/bin/sh -c [ ! -e /usr/bin/galera_recovery ] && VAR= ||   >    Process: 1869456 ExecStart=/usr/sbin/mariadbd $MYSQLD_OPTS $_WSREP_NEW_CLUSTER $_WSREP_S>   Main PID: 1869456 (code=exited, status=1/FAILURE)
     Status: "MariaDB server is down"
        CPU: 408ms
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
frappe@exp:~$ journalctl -xeu mariadb.service
Hint: You are currently not seeing messages from other users and the system.
      Users in groups 'adm', 'systemd-journal' can see all messages.
      Pass -q to turn off this notice.
Dec 22 19:43:18 exp systemd[1]: Starting MariaDB 10.6.12 database server...
░░ Subject: A start job for unit mariadb.service has begun execution
░░ Defined-By: systemd
░░ Support: http://www.ubuntu.com/support
░░
░░ A start job for unit mariadb.service has begun execution.
░░
░░ The job identifier is 363900.
Dec 22 19:43:19 exp mariadbd[1614138]: /usr/sbin/mariadbd: Can't create file '/var/log/mysql>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] Starting MariaDB 10.6.12>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Compressed table>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Using transactio>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Number of pools:>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Using crc32 + pc>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Initializing buf>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Completed initia>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: 128 rollback seg>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Creating shared >Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Setting file './>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: File './ibtmp1' >Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: 10.6.12 started;>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Loading buffer p>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] Plugin 'FEEDBACK' is dis>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Warning] 'innodb-file-format' >Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Warning] 'innodb-large-prefix'>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Warning] You need to use --log>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] Server socket created on>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] /usr/sbin/mariadbd: read>Dec 22 19:43:19 exp mariadbd[1614138]: Version: '10.6.12-MariaDB-0ubuntu0.22.04.1'  socket: >Dec 22 19:43:19 exp systemd[1]: Started MariaDB 10.6.12 database server.
░░ Subject: A start job for unit mariadb.service has finished successfully
░░ Defined-By: systemd
░░ Support: http://www.ubuntu.com/support
░░
░░ A start job for unit mariadb.service has finished successfully.
░░
░░ The job identifier is 363900.
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614161]: Upgrading MySQL tables if necessary.
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614164]: Looking for 'mariadb' as: /usr/bin/mar>Dec 22 19:43:20 exp /etc/mysql/debian-start[1614164]: Looking for 'mariadb-check' as: /usr/b>Dec 22 19:43:20 exp /etc/mysql/debian-start[1614164]: This installation of MariaDB is alread>Dec 22 19:43:20 exp /etc/mysql/debian-start[1614164]: There is no need to run mysql_upgrade >Dec 22 19:43:20 exp /etc/mysql/debian-start[1614164]: You can use --force if you still want >Dec 22 19:43:20 exp /etc/mysql/debian-start[1614189]: Checking for insecure root accounts.
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614194]: Triggering myisam-recover for all MyIS>Dec 22 19:43:22 exp mariadbd[1614138]: 2023-12-22 19:43:22 0 [Note] InnoDB: Buffer pool(s) l>lines 29-74/74 (END)
Dec 22 19:43:18 exp systemd[1]: Starting MariaDB 10.6.12 database server...
░░ Subject: A start job for unit mariadb.service has begun execution
░░ Defined-By: systemd
░░ Support: http://www.ubuntu.com/support
░░
░░ A start job for unit mariadb.service has begun execution.
░░
░░ The job identifier is 363900.
Dec 22 19:43:19 exp mariadbd[1614138]: /usr/sbin/mariadbd: Can't create file '/var/log/mysql/error.log' (errno: 13 "Permission denied")
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] Starting MariaDB 10.6.12-MariaDB-0ubuntu0.22.04.1 source revision  as process 1614138
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Compressed tables use zlib 1.2.11
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Using transactional memory
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Number of pools: 1
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Using crc32 + pclmulqdq instructions
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Initializing buffer pool, total size = 134217728, chunk size = 134217728
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Completed initialization of buffer pool
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: 128 rollback segments are active.
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Creating shared tablespace for temporary tables
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: 10.6.12 started; log sequence number 850101924; transaction id 3190996
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] Plugin 'FEEDBACK' is disabled.
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Warning] 'innodb-file-format' was removed. It does nothing now and exists only for compatibility with old my.cnf files.
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Warning] 'innodb-large-prefix' was removed. It does nothing now and exists only for compatibility with old my.cnf files.
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Warning] You need to use --log-bin to make --expire-logs-days or --binlog-expire-logs-seconds work.
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] Server socket created on IP: '127.0.0.1'.
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] /usr/sbin/mariadbd: ready for connections.
Dec 22 19:43:19 exp mariadbd[1614138]: Version: '10.6.12-MariaDB-0ubuntu0.22.04.1'  socket: '/run/mysqld/mysqld.sock'  port: 3306  Ubuntu 22.04
Dec 22 19:43:19 exp systemd[1]: Started MariaDB 10.6.12 database server.
░░ Subject: A start job for unit mariadb.service has finished successfully
░░ Defined-By: systemd
░░ Support: http://www.ubuntu.com/support
░░
░░ A start job for unit mariadb.service has finished successfully.
░░
░░ The job identifier is 363900.
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614161]: Upgrading MySQL tables if necessary.
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614164]: Looking for 'mariadb' as: /usr/bin/mariadb
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614164]: Looking for 'mariadb-check' as: /usr/bin/mariadb-check
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614164]: This installation of MariaDB is already upgraded to 10.6.12-MariaDB.
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614164]: There is no need to run mysql_upgrade again for 10.6.12-MariaDB.
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614164]: You can use --force if you still want to run mysql_upgrade
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614189]: Checking for insecure root accounts.
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614194]: Triggering myisam-recover for all MyISAM tables and aria-recover for all Aria tables
Dec 22 19:43:22 exp mariadbd[1614138]: 2023-12-22 19:43:22 0 [Note] InnoDB: Buffer pool(s) load completed at 231222 19:43:22
lines 29-74/74 (END)
Dec 22 19:43:18 exp systemd[1]: Starting MariaDB 10.6.12 database server...
░░ Subject: A start job for unit mariadb.service has begun execution
░░ Defined-By: systemd
░░ Support: http://www.ubuntu.com/support
░░
░░ A start job for unit mariadb.service has begun execution.
░░
░░ The job identifier is 363900.
Dec 22 19:43:19 exp mariadbd[1614138]: /usr/sbin/mariadbd: Can't create file '/var/log/mys>
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] Starting MariaDB 10.6.>
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Compressed tab>
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Using transact>
Dec 22 19:43:19 exp mariadbd[1614138]
Dec 22 19:43:18 exp systemd[1]: Starting MariaDB 10.6.12 database server...
░░ Subject: A start job for unit mariadb.service has begun execution
░░ Defined-By: systemd
░░ Support: http://www.ubuntu.com/support
░░
░░ A start job for unit mariadb.service has begun execution.
░░
░░ The job identifier is 363900.
Dec 22 19:43:19 exp mariadbd[1614138]: /usr/sbin/mariadbd: Can't create file '/var/log/mys>
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] Starting MariaDB 10.6.>
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Compressed tab>
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Using transact>
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Number of pool>
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Using crc32 + >
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Initializing b>
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Completed init>
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: 128 rollback s>
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Creating share>
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Setting file '>
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: File './ibtmp1>
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: 10.6.12 starte>
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Loading buffer>
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] Plugin 'FEEDBACK' is d>
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Warning] 'innodb-file-format>
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Warning] 'innodb-large-prefi>
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Warning] You need to use --l>
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] Server socket created >
Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] /usr/sbin/mariadbd: re>
Dec 22 19:43:19 exp mariadbd[1614138]: Version: '10.6.12-MariaDB-0ubuntu0.22.04.1'  socket>
Dec 22 19:43:19 exp systemd[1]: Started MariaDB 10.6.12 database server.
░░ Subject: A start job for unit mariadb.service has finished successfully
░░ Defined-By: systemd
░░ Support: http://www.ubuntu.com/support
░░
░░ A start job for unit mariadb.service has finished successfully.
░░
░░ The job identifier is 363900.
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614161]: Upgrading MySQL tables if necessary.
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614164]: Looking for 'mariadb' as: /usr/bin/m>
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614164]: Looking for 'mariadb-check' as: /usr>
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614164]: This installation of MariaDB is alre>
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614164]: There is no need to run mysql_upgrad>
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614164]: You can use --force if you still wan>
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614189]: Checking for insecure root accounts.
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614194]: Triggering myisam-recover for all My>
lines 29-73/74 98%
Dec 22 19:43:18 exp systemd[1]: Starting MariaDB 10.6.12 database server...
░░ Subject: A start job for unit mariadb.service has begun execution
░░ Defined-By: systemd
░░ Support: http://www.ubuntu.com/support
░░
░░ A start job for unit mariadb.service has begun execution.
░░
░░ The job identifier is 363900.
Dec 22 19:43:19 exp mariadbd[1614138]: /usr/sbin/mariadbd: Can't create file '/var/log/mysql>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] Starting MariaDB 10.6.12>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Compressed table>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Using transactio>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Number of pools:>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Using crc32 + pc>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Initializing buf>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Completed initia>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: 128 rollback seg>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Creating shared >Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Setting file './>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: File './ibtmp1' >Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: 10.6.12 started;>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] InnoDB: Loading buffer p>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] Plugin 'FEEDBACK' is dis>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Warning] 'innodb-file-format' >Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Warning] 'innodb-large-prefix'>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Warning] You need to use --log>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] Server socket created on>Dec 22 19:43:19 exp mariadbd[1614138]: 2023-12-22 19:43:19 0 [Note] /usr/sbin/mariadbd: read>Dec 22 19:43:19 exp mariadbd[1614138]: Version: '10.6.12-MariaDB-0ubuntu0.22.04.1'  socket: >Dec 22 19:43:19 exp systemd[1]: Started MariaDB 10.6.12 database server.
░░ Subject: A start job for unit mariadb.service has finished successfully
░░ Defined-By: systemd
░░ Support: http://www.ubuntu.com/support
░░
░░ A start job for unit mariadb.service has finished successfully.
░░
░░ The job identifier is 363900.
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614161]: Upgrading MySQL tables if necessary.
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614164]: Looking for 'mariadb' as: /usr/bin/mar>Dec 22 19:43:20 exp /etc/mysql/debian-start[1614164]: Looking for 'mariadb-check' as: /usr/b>Dec 22 19:43:20 exp /etc/mysql/debian-start[1614164]: This installation of MariaDB is alread>Dec 22 19:43:20 exp /etc/mysql/debian-start[1614164]: There is no need to run mysql_upgrade >Dec 22 19:43:20 exp /etc/mysql/debian-start[1614164]: You can use --force if you still want >Dec 22 19:43:20 exp /etc/mysql/debian-start[1614189]: Checking for insecure root accounts.
Dec 22 19:43:20 exp /etc/mysql/debian-start[1614194]: Triggering myisam-recover for all MyIS>Dec 22 19:43:22 exp mariadbd[1614138]: 2023-12-22 19:43:22 0 [Note] InnoDB: Buffer pool(s) l>frappe@exp:~$ sudo /etc/init.d/mysql stop
sudo: /etc/init.d/mysql: command not found
frappe@exp:~$ sudo mkdir -v /var/run/mysqld && sudo chown mysql /var/run/mysqld
mkdir: cannot create directory ‘/var/run/mysqld’: File exists
frappe@exp:~$ mysqld
2023-12-30 16:45:27 0 [Warning] Can't create test file /var/lib/mysql/exp.lower-test
mysqld: One can only use the --user switch if running as root
frappe@exp:~$ sudo mysqld --skip-grant-tables &
[2] 1869584
frappe@exp:~$ mysqld: Can't create file '/var/log/mysql/error.log' (errno: 13 "Permission denied")
2023-12-30 16:45:49 0 [Note] Starting MariaDB 10.6.12-MariaDB-0ubuntu0.22.04.1 source revision  as process 1869586
2023-12-30 16:45:49 0 [ERROR] mysqld: Can't lock aria control file '/var/lib/mysql/aria_log_control' for exclusive use, error: 11. Will retry for 30 seconds
2023-12-30 16:46:19 0 [ERROR] mysqld: Got error 'Could not get an exclusive lock; file is probably in use by another process' when trying to use aria control file '/var/lib/mysql/aria_log_control'
2023-12-30 16:46:19 0 [ERROR] Plugin 'Aria' init function returned error.
2023-12-30 16:46:19 0 [ERROR] Plugin 'Aria' registration as a STORAGE ENGINE failed.
2023-12-30 16:46:19 0 [Note] InnoDB: Compressed tables use zlib 1.2.11
2023-12-30 16:46:19 0 [Note] InnoDB: Using transactional memory
2023-12-30 16:46:19 0 [Note] InnoDB: Number of pools: 1
2023-12-30 16:46:19 0 [Note] InnoDB: Using crc32 + pclmulqdq instructions
2023-12-30 16:46:19 0 [Note] InnoDB: Initializing buffer pool, total size = 134217728, chunk size = 134217728
2023-12-30 16:46:19 0 [Note] InnoDB: Completed initialization of buffer pool
2023-12-30 16:46:19 0 [Note] InnoDB: Starting crash recovery from checkpoint LSN=868469119,868469119
2023-12-30 16:46:19 0 [ERROR] InnoDB: Malformed log record; set innodb_force_recovery=1 to ignore.
2023-12-30 16:46:19 0 [Note] InnoDB: Dump from the start of the mini-transaction (LSN=868469119) to 100 bytes after the record:
 len 100; hex 6f727061795f73657474696e67732e636170747572655f7061796d656e74010f0899b1fd082b0a3b75003f908207929031e05054000002dd02feb78015092d088ee0003500825d3902350080813101b700000002dd0266d300060b4700825d81e604ffd3; asc orpay_settings.capture_payment       + ;u ?     1 PT          -    5  ]9 5   1        f    G  ]     ;
2023-12-30 16:46:19 0 [Warning] InnoDB: Log scan aborted at LSN 868478464
2023-12-30 16:46:19 0 [ERROR] InnoDB: Plugin initialization aborted with error Generic error
2023-12-30 16:46:19 0 [Note] InnoDB: Starting shutdown...
2023-12-30 16:46:19 0 [ERROR] Plugin 'InnoDB' init function returned error.
2023-12-30 16:46:19 0 [ERROR] Plugin 'InnoDB' registration as a STORAGE ENGINE failed.
2023-12-30 16:46:19 0 [Note] Plugin 'FEEDBACK' is disabled.
2023-12-30 16:46:19 0 [ERROR] Failed to initialize plugins.
2023-12-30 16:46:19 0 [ERROR] Aborting
^C
[2]+  Exit 1                  sudo mysqld --skip-grant-tables
frappe@exp:~$ sudo pkill mysqld_safe
frappe@exp:~$ sudo systemctl stop mysql
frappe@exp:~$ systemctl status mariadb.service
× mariadb.service - MariaDB 10.6.12 database server
     Loaded: loaded (/lib/systemd/system/mariadb.service; enabled; vendor preset: enabled)
     Active: failed (Result: exit-code) since Sat 2023-12-30 16:41:01 IST; 6min ago
       Docs: man:mariadbd(8)
             https://mariadb.com/kb/en/library/systemd/
    Process: 1869367 ExecStartPre=/usr/bin/install -m 755 -o mysql -g root -d /var/run/mysql>    Process: 1869368 ExecStartPre=/bin/sh -c systemctl unset-environment _WSREP_START_POSITI>    Process: 1869370 ExecStartPre=/bin/sh -c [ ! -e /usr/bin/galera_recovery ] && VAR= ||   >    Process: 1869456 ExecStart=/usr/sbin/mariadbd $MYSQLD_OPTS $_WSREP_NEW_CLUSTER $_WSREP_S>   Main PID: 1869456 (code=exited, status=1/FAILURE)
     Status: "MariaDB server is down"
        CPU: 408ms
frappe@exp:~$ sudo service mysql start
Job for mariadb.service failed because the control process exited with error code.
See "systemctl status mariadb.service" and "journalctl -xeu mariadb.service" for details.
frappe@exp:~$ sudo mkdir -p /var/log/mysql/
do chown -R mysql:mysql /var/log/mysql/
sudo chown -R mysql:mysql /var/log/mysql/
frappe@exp:~$ ls -l /var/lib/mysql/aria_log_control
-rw-rw---- 1 mysql mysql 52 Dec 30 16:14 /var/lib/mysql/aria_log_control
frappe@exp:~$ sudo chown mysql:mysql /var/lib/mysql/aria_log_control
frappe@exp:~$ sudo systemctl start mariadb
Job for mariadb.service failed because the control process exited with error code.
See "systemctl status mariadb.service" and "journalctl -xeu mariadb.service" for details.
frappe@exp:~$ sudo systemctl status mariadb
× mariadb.service - MariaDB 10.6.12 database server
     Loaded: loaded (/lib/systemd/system/mariadb.service; enabled; vendor preset: enabled)
     Active: failed (Result: exit-code) since Sat 2023-12-30 16:49:10 IST; 16s ago
       Docs: man:mariadbd(8)
             https://mariadb.com/kb/en/library/systemd/
    Process: 1869758 ExecStartPre=/usr/bin/install -m 755 -o mysql -g root -d /var/run/mysql>    Process: 1869759 ExecStartPre=/bin/sh -c systemctl unset-environment _WSREP_START_POSITI>    Process: 1869761 ExecStartPre=/bin/sh -c [ ! -e /usr/bin/galera_recovery ] && VAR= ||   >    Process: 1869848 ExecStart=/usr/sbin/mariadbd $MYSQLD_OPTS $_WSREP_NEW_CLUSTER $_WSREP_S>   Main PID: 1869848 (code=exited, status=1/FAILURE)
     Status: "MariaDB server is down"
        CPU: 404ms

Dec 30 16:49:10 exp mariadbd[1869848]: 2023-12-30 16:49:10 0 [Note] InnoDB: Starting shutdow>Dec 30 16:49:10 exp mariadbd[1869848]: 2023-12-30 16:49:10 0 [ERROR] Plugin 'InnoDB' init fu>Dec 30 16:49:10 exp mariadbd[1869848]: 2023-12-30 16:49:10 0 [ERROR] Plugin 'InnoDB' registr>Dec 30 16:49:10 exp mariadbd[1869848]: 2023-12-30 16:49:10 0 [Note] Plugin 'FEEDBACK' is dis>Dec 30 16:49:10 exp mariadbd[1869848]: 2023-12-30 16:49:10 0 [ERROR] Could not open mysql.pl>Dec 30 16:49:10 exp mariadbd[1869848]: 2023-12-30 16:49:10 0 [ERROR] Failed to initialize pl>Dec 30 16:49:10 exp mariadbd[1869848]: 2023-12-30 16:49:10 0 [ERROR] Aborting
Dec 30 16:49:10 exp systemd[1]: mariadb.service: Main process exited, code=exited, status=1/>Dec 30 16:49:10 exp systemd[1]: mariadb.service: Failed with result 'exit-code'.
Dec 30 16:49:10 exp systemd[1]: Failed to start MariaDB 10.6.12 database server.
frappe@exp:~$ sudo systemctl restart mariadb
Job for mariadb.service failed because the control process exited with error code.
See "systemctl status mariadb.service" and "journalctl -xeu mariadb.service" for details.
frappe@exp:~$ sudo tail /var/log/mysql/error.log
2023-12-30 16:45:27 0 [ERROR] Plugin 'Aria' init function returned error.
2023-12-30 16:45:27 0 [ERROR] Plugin 'Aria' registration as a STORAGE ENGINE failed.
2023-12-30 16:45:27 0 [ERROR] InnoDB: The data file './ibdata1' must be writable
2023-12-30 16:45:27 0 [ERROR] InnoDB: The data file './ibdata1' must be writable
2023-12-30 16:45:27 0 [ERROR] Plugin 'InnoDB' init function returned error.
2023-12-30 16:45:27 0 [ERROR] Plugin 'InnoDB' registration as a STORAGE ENGINE failed.
2023-12-30 16:45:27 0 [Note] Plugin 'FEEDBACK' is disabled.
2023-12-30 16:45:27 0 [ERROR] Could not open mysql.plugin table: "Table 'mysql.plugin' doesn't exist". Some plugins may be not loaded
2023-12-30 16:45:27 0 [ERROR] Failed to initialize plugins.
2023-12-30 16:45:27 0 [ERROR] Aborting
frappe@exp:~$ ls
'5TnTaknkIptEEppwlm?tobc1690113912489'   frappe-bench-1
 api.pyMeeting                           frappe-bench.confBackUp20230730
 bakfrappe-bench                         frappe-benchRai
 calendar.js                             his2.txt
 certbot.lock20231114                    hisDiya.txt
 checkVesrion.sh                         his.txt
 checkVesrion.sh~                        HSR
 common_site_config.json                 install.sh
 data.py                                 md2mermaid.sh
 DEADJOE                                 md2mermaid.sh~
 erpN3b.sh                               meeting1
 erpN3b.sh~                              nginxHSR.conf
 erpN3c.sh                               poll
 erpN3c.sh~                              poll_vote.py
 erpN3d.sh                               QC
 erpN3.sh                                site.py
 erpRai.sh                               snap
 erpRai.sh~                              timeManagement.txt
 FDP_ATAL_QC                             timeManagement.txt~
 frappe-bench                            TmpRai
frappe@exp:~$ sudo mysqld --skip-grant-tables --skip-networking
mysqld: Can't create file '/var/log/mysql/error.log' (errno: 13 "Permission denied")
2023-12-30 16:51:58 0 [Note] Starting MariaDB 10.6.12-MariaDB-0ubuntu0.22.04.1 source revision  as process 1870000
2023-12-30 16:51:58 0 [ERROR] mysqld: Can't lock aria control file '/var/lib/mysql/aria_log_control' for exclusive use, error: 11. Will retry for 30 seconds
2023-12-30 16:52:28 0 [ERROR] mysqld: Got error 'Could not get an exclusive lock; file is probably in use by another process' when trying to use aria control file '/var/lib/mysql/aria_log_control'
2023-12-30 16:52:28 0 [ERROR] Plugin 'Aria' init function returned error.
2023-12-30 16:52:28 0 [ERROR] Plugin 'Aria' registration as a STORAGE ENGINE failed.
2023-12-30 16:52:28 0 [Note] InnoDB: Compressed tables use zlib 1.2.11
2023-12-30 16:52:28 0 [Note] InnoDB: Using transactional memory
2023-12-30 16:52:28 0 [Note] InnoDB: Number of pools: 1
2023-12-30 16:52:28 0 [Note] InnoDB: Using crc32 + pclmulqdq instructions
2023-12-30 16:52:28 0 [Note] InnoDB: Initializing buffer pool, total size = 134217728, chunk size = 134217728
2023-12-30 16:52:28 0 [Note] InnoDB: Completed initialization of buffer pool
2023-12-30 16:52:28 0 [Note] InnoDB: Starting crash recovery from checkpoint LSN=868469119,868469119
2023-12-30 16:52:28 0 [ERROR] InnoDB: Malformed log record; set innodb_force_recovery=1 to ignore.
2023-12-30 16:52:28 0 [Note] InnoDB: Dump from the start of the mini-transaction (LSN=868469119) to 100 bytes after the record:
 len 100; hex 6f727061795f73657474696e67732e636170747572655f7061796d656e74010f0899b1fd082b0a3b75003f908207929031e05054000002dd02feb78015092d088ee0003500825d3902350080813101b700000002dd0266d300060b4700825d81e604ffd3; asc orpay_settings.capture_payment       + ;u ?     1 PT          -    5  ]9 5   1        f    G  ]     ;
2023-12-30 16:52:28 0 [Warning] InnoDB: Log scan aborted at LSN 868481024
2023-12-30 16:52:28 0 [ERROR] InnoDB: Plugin initialization aborted with error Generic error
2023-12-30 16:52:28 0 [Note] InnoDB: Starting shutdown...
2023-12-30 16:52:28 0 [ERROR] Plugin 'InnoDB' init function returned error.
2023-12-30 16:52:28 0 [ERROR] Plugin 'InnoDB' registration as a STORAGE ENGINE failed.
2023-12-30 16:52:28 0 [Note] Plugin 'FEEDBACK' is disabled.
2023-12-30 16:52:28 0 [ERROR] Failed to initialize plugins.
2023-12-30 16:52:28 0 [ERROR] Aborting
frappe@exp:~$ sudo mkdir -p /var/log/mysql/
frappe@exp:~$ sudo chown -R mysql:mysql /var/log/mysql/
frappe@exp:~$ ls -l /var/lib/mysql/aria_log_control
-rw-rw---- 1 mysql mysql 52 Dec 30 16:14 /var/lib/mysql/aria_log_control
frappe@exp:~$ sudo chown mysql:mysql /var/lib/mysql/aria_log_control
frappe@exp:~$ sudo systemctl start mariadb
Job for mariadb.service failed because the control process exited with error code.
See "systemctl status mariadb.service" and "journalctl -xeu mariadb.service" for details.
frappe@exp:~$ sudo systemctl status mariadb
× mariadb.service - MariaDB 10.6.12 database server
     Loaded: loaded (/lib/systemd/system/mariadb.service; enabled; vendor preset: enabled)
     Active: failed (Result: exit-code) since Sat 2023-12-30 16:53:39 IST; 3s ago
       Docs: man:mariadbd(8)
             https://mariadb.com/kb/en/library/systemd/
    Process: 1870038 ExecStartPre=/usr/bin/install -m 755 -o mysql -g root -d /var/run/mysql>    Process: 1870039 ExecStartPre=/bin/sh -c systemctl unset-environment _WSREP_START_POSITI>    Process: 1870041 ExecStartPre=/bin/sh -c [ ! -e /usr/bin/galera_recovery ] && VAR= ||   >    Process: 1870127 ExecStart=/usr/sbin/mariadbd $MYSQLD_OPTS $_WSREP_NEW_CLUSTER $_WSREP_S>   Main PID: 1870127 (code=exited, status=1/FAILURE)
     Status: "MariaDB server is down"
        CPU: 401ms

Dec 30 16:53:08 exp systemd[1]: Starting MariaDB 10.6.12 database server...
Dec 30 16:53:39 exp systemd[1]: mariadb.service: Main process exited, code=exited, status=1/>Dec 30 16:53:39 exp systemd[1]: mariadb.service: Failed with result 'exit-code'.
Dec 30 16:53:39 exp systemd[1]: Failed to start MariaDB 10.6.12 database server.
frappe@exp:~$ sudo systemctl is-active mariadb
failed
frappe@exp:~$ mysql -u root
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: NO)
frappe@exp:~$ sudo /etc/init.d/mysqld start
sudo: /etc/init.d/mysqld: command not found
frappe@exp:~$ sudo /etc/init.d/mysqld restart
sudo: /etc/init.d/mysqld: command not found
frappe@exp:~$ sudo systemctl stop mysqld
frappe@exp:~$ sudo systemctl start mysqld
Job for mariadb.service failed because the control process exited with error code.
See "systemctl status mariadb.service" and "journalctl -xeu mariadb.service" for details.
frappe@exp:~$ sudo systemctl restart mysqld
Job for mariadb.service failed because the control process exited with error code.
See "systemctl status mariadb.service" and "journalctl -xeu mariadb.service" for details.
frappe@exp:~$ sudo ps aux | grep mysqld
root     1867541  0.0  0.1  11500  5656 pts/0    S    16:15   0:00 sudo mysqld_safe --skip-grant-tables
root     1867542  0.0  0.0  11500   884 pts/2    Ss+  16:15   0:00 sudo mysqld_safe --skip-grant-tables
root     1867543  0.0  0.0   2888  1904 pts/2    S    16:15   0:00 /bin/sh /usr/bin/mysqld_safe --skip-grant-tables
mysql    1867698  0.1  3.0 1878796 122512 pts/2  Sl   16:15   0:03 /usr/sbin/mariadbd --basedir=/usr --datadir=/var/lib/mysql --plugin-dir=/usr/lib/mysql/plugin --user=mysql --skip-grant-tables --skip-log-error --pid-file=/run/mysqld/mysqld.pid --socket=/run/mysqld/mysqld.sock
root     1867699  0.0  0.0   9168  1484 pts/2    S    16:15   0:00 logger -t mysqld -p daemon error
frappe   1870384  0.0  0.0   6476  2344 pts/0    S+   16:57   0:00 grep --color=auto mysqld
frappe@exp:~$ sudo kill -TERM 1867698
frappe@exp:~$ sudo kill -9 1867698
kill: (1867698): No such process
[1]+  Done                    sudo mysqld_safe --skip-grant-tables
frappe@exp:~$ sudo ps aux | grep mysqld
frappe   1870414  0.0  0.0   6476  2264 pts/0    S+   16:58   0:00 grep --color=auto mysqld
frappe@exp:~$ sudo systemctl start mariadb
frappe@exp:~$ sudo systemctl status mariadb
● mariadb.service - MariaDB 10.6.12 database server
     Loaded: loaded (/lib/systemd/system/mariadb.service; enabled; vendor preset: enabled)
     Active: active (running) since Sat 2023-12-30 16:59:00 IST; 10s ago
       Docs: man:mariadbd(8)
             https://mariadb.com/kb/en/library/systemd/
    Process: 1870421 ExecStartPre=/usr/bin/install -m 755 -o mysql -g root -d /var/run/mysql>    Process: 1870422 ExecStartPre=/bin/sh -c systemctl unset-environment _WSREP_START_POSITI>    Process: 1870424 ExecStartPre=/bin/sh -c [ ! -e /usr/bin/galera_recovery ] && VAR= ||   >    Process: 1870530 ExecStartPost=/bin/sh -c systemctl unset-environment _WSREP_START_POSIT>    Process: 1870532 ExecStartPost=/etc/mysql/debian-start (code=exited, status=0/SUCCESS)
   Main PID: 1870510 (mariadbd)
     Status: "Taking your SQL requests now..."
      Tasks: 21 (limit: 4557)
     Memory: 94.9M
        CPU: 836ms
     CGroup: /system.slice/mariadb.service
             └─1870510 /usr/sbin/mariadbd

Dec 30 16:58:59 exp systemd[1]: Starting MariaDB 10.6.12 database server...
Dec 30 16:59:00 exp systemd[1]: Started MariaDB 10.6.12 database server.
Dec 30 16:59:00 exp /etc/mysql/debian-start[1870534]: Upgrading MySQL tables if necessary.
Dec 30 16:59:00 exp /etc/mysql/debian-start[1870537]: Looking for 'mariadb' as: /usr/bin/mar>Dec 30 16:59:00 exp /etc/mysql/debian-start[1870537]: Reading datadir from the MariaDB serve>Dec 30 16:59:00 exp /etc/mysql/debian-start[1870537]: ERROR 1045 (28000): Access denied for >Dec 30 16:59:00 exp /etc/mysql/debian-start[1870537]: FATAL ERROR: Upgrade failed
Dec 30 16:59:00 exp /etc/mysql/debian-start[1870543]: Checking for insecure root accounts.
Dec 30 16:59:00 exp debian-start[1870546]: ERROR 1045 (28000): Access denied for user 'root'>frappe@exp:~$ mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 6
Server version: 10.6.12-MariaDB-0ubuntu0.22.04.1 Ubuntu 22.04

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> exit
Bye
frappe@exp:~$ mysql -u root
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: NO)
frappe@exp:~$ sudo mysql -u root
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: NO)
frappe@exp:~$ sudo systemctl status mariadb
● mariadb.service - MariaDB 10.6.12 database server
     Loaded: loaded (/lib/systemd/system/mariadb.service; enabled; vendor preset: enabled)
     Active: active (running) since Sat 2023-12-30 16:59:00 IST; 1min 15s ago
       Docs: man:mariadbd(8)
             https://mariadb.com/kb/en/library/systemd/
    Process: 1870421 ExecStartPre=/usr/bin/install -m 755 -o mysql -g root -d /var/run/mysql>    Process: 1870422 ExecStartPre=/bin/sh -c systemctl unset-environment _WSREP_START_POSITI>    Process: 1870424 ExecStartPre=/bin/sh -c [ ! -e /usr/bin/galera_recovery ] && VAR= ||   >    Process: 1870530 ExecStartPost=/bin/sh -c systemctl unset-environment _WSREP_START_POSIT>    Process: 1870532 ExecStartPost=/etc/mysql/debian-start (code=exited, status=0/SUCCESS)
   Main PID: 1870510 (mariadbd)
     Status: "Taking your SQL requests now..."
      Tasks: 9 (limit: 4557)
     Memory: 95.2M
        CPU: 921ms
     CGroup: /system.slice/mariadb.service
             └─1870510 /usr/sbin/mariadbd

Dec 30 16:58:59 exp systemd[1]: Starting MariaDB 10.6.12 database server...
Dec 30 16:59:00 exp systemd[1]: Started MariaDB 10.6.12 database server.
Dec 30 16:59:00 exp /etc/mysql/debian-start[1870534]: Upgrading MySQL tables if necessary.
Dec 30 16:59:00 exp /etc/mysql/debian-start[1870537]: Looking for 'mariadb' as: /usr/bin/mar>Dec 30 16:59:00 exp /etc/mysql/debian-start[1870537]: Reading datadir from the MariaDB serve>Dec 30 16:59:00 exp /etc/mysql/debian-start[1870537]: ERROR 1045 (28000): Access denied for >Dec 30 16:59:00 exp /etc/mysql/debian-start[1870537]: FATAL ERROR: Upgrade failed
Dec 30 16:59:00 exp /etc/mysql/debian-start[1870543]: Checking for insecure root accounts.
Dec 30 16:59:00 exp debian-start[1870546]: ERROR 1045 (28000): Access denied for user 'root'>frappe@exp:~$ sudo systemctl status mysql
● mariadb.service - MariaDB 10.6.12 database server
     Loaded: loaded (/lib/systemd/system/mariadb.service; enabled; vendor preset: enabled)
     Active: active (running) since Sat 2023-12-30 16:59:00 IST; 1min 28s ago
       Docs: man:mariadbd(8)
             https://mariadb.com/kb/en/library/systemd/
    Process: 1870421 ExecStartPre=/usr/bin/install -m 755 -o mysql -g root -d /var/run/mysql>    Process: 1870422 ExecStartPre=/bin/sh -c systemctl unset-environment _WSREP_START_POSITI>    Process: 1870424 ExecStartPre=/bin/sh -c [ ! -e /usr/bin/galera_recovery ] && VAR= ||   >    Process: 1870530 ExecStartPost=/bin/sh -c systemctl unset-environment _WSREP_START_POSIT>    Process: 1870532 ExecStartPost=/etc/mysql/debian-start (code=exited, status=0/SUCCESS)
   Main PID: 1870510 (mariadbd)
     Status: "Taking your SQL requests now..."
      Tasks: 9 (limit: 4557)
     Memory: 98.1M
        CPU: 984ms
     CGroup: /system.slice/mariadb.service
             └─1870510 /usr/sbin/mariadbd

Dec 30 16:58:59 exp systemd[1]: Starting MariaDB 10.6.12 database server...
Dec 30 16:59:00 exp systemd[1]: Started MariaDB 10.6.12 database server.
Dec 30 16:59:00 exp /etc/mysql/debian-start[1870534]: Upgrading MySQL tables if necessary.
Dec 30 16:59:00 exp /etc/mysql/debian-start[1870537]: Looking for 'mariadb' as: /usr/bin/mar>Dec 30 16:59:00 exp /etc/mysql/debian-start[1870537]: Reading datadir from the MariaDB serve>Dec 30 16:59:00 exp /etc/mysql/debian-start[1870537]: ERROR 1045 (28000): Access denied for >Dec 30 16:59:00 exp /etc/mysql/debian-start[1870537]: FATAL ERROR: Upgrade failed
Dec 30 16:59:00 exp /etc/mysql/debian-start[1870543]: Checking for insecure root accounts.
Dec 30 16:59:00 exp debian-start[1870546]: ERROR 1045 (28000): Access denied for user 'root'>frappe@exp:~$ cd frappe-bench
frappe@exp:~/frappe-bench$ ls
apps  archived  config  env  frappe-bench-1  logs  patches.txt  Procfile  sites
frappe@exp:~/frappe-bench$ cd ..
frappe@exp:~$ cd frappe-bench
frappe@exp:~/frappe-bench$ cd ..
frappe@exp:~$ cd frappe-bench-1
frappe@exp:~/frappe-bench-1$ ls
apps  archived  config  env  logs  patches.txt  Procfile  sites
frappe@exp:~/frappe-bench-1$ cd sites/
frappe@exp:~/frappe-bench-1/sites$ ls
apps.json  apps.txt  assets  common_site_config.json  exp.gndec.ac.in
frappe@exp:~/frappe-bench-1/sites$ bench remove-
Usage: bench [OPTIONS] COMMAND [ARGS]...
Try 'bench --help' for help.

Error: No such command 'remove-'.
frappe@exp:~/frappe-bench-1/sites$ bench drop-site exp.gndec.ac.in
Taking backup of exp.gndec.ac.in
================================================================================
Error: The operation has stopped because backup of exp.gndec.ac.in's database failed.
Reason: (1698, "Access denied for user '_ac2b7b53f6f690ec'@'localhost'")

Fix the issue and try again.
Hint: Use 'bench drop-site exp.gndec.ac.in --force' to force the removal of exp.gndec.ac.in
frappe@exp:~/frappe-bench-1/sites$ bench drop-site exp.gndec.ac.in --force
Taking backup of exp.gndec.ac.in
Dropping site database and user
MySQL root password:
Moving site to archive under /home/frappe/frappe-bench-1/archived/sites
frappe@exp:~/frappe-bench-1/sites$ cd ..
frappe@exp:~/frappe-bench-1$ bench new-site exp.gndec.ac.in
MySQL root password:

Installing frappe...
Updating DocTypes for frappe        : [========================================] 100%
Set Administrator password:
Re-enter Administrator password:
Updating Dashboard for frappe
exp.gndec.ac.in: SystemSettings.enable_scheduler is UNSET
*** Scheduler is disabled ***
frappe@exp:~/frappe-bench-1$ bench --site all list-apps

frappe

frappe@exp:~/frappe-bench-1$ bench --site exp.gndec.ac.in install-app erpnext

Installing erpnext...
Updating DocTypes for erpnext       : [========================================] 100%
Updating customizations for Address
Updating customizations for Contact
Updating Dashboard for erpnext
frappe@exp:~/frappe-bench-1$ bench doctor
Please make sure that Redis Queue runs @ redis://localhost:11003
Please make sure that Redis Queue runs @ redis://localhost:11003
Please make sure that Redis Queue runs @ redis://localhost:11003
Please make sure that Redis Queue runs @ redis://localhost:11003
Please make sure that Redis Queue runs @ redis://localhost:11003
Traceback (most recent call last):
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/redis/connection.py", line 699, in connect
    sock = self.retry.call_with_retry(
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/redis/retry.py", line 46, in call_with_retry
    return do()
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/redis/connection.py", line 700, in <lambda>
    lambda: self._connect(), lambda error: self.disconnect(error)
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/redis/connection.py", line 1002, in _connect
    raise err
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/redis/connection.py", line 990, in _connect
    sock.connect(socket_address)
ConnectionRefusedError: [Errno 111] Connection refused

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/lib/python3.10/runpy.py", line 196, in _run_module_as_main
    return _run_code(code, main_globals, None,
  File "/usr/lib/python3.10/runpy.py", line 86, in _run_code
    exec(code, run_globals)
  File "/home/frappe/frappe-bench-1/apps/frappe/frappe/utils/bench_helper.py", line 114, in <module>
    main()
  File "/home/frappe/frappe-bench-1/apps/frappe/frappe/utils/bench_helper.py", line 20, in main
    click.Group(commands=commands)(prog_name="bench")
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/click/core.py", line 1157, in __call__
    return self.main(*args, **kwargs)
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/click/core.py", line 1078, in main
    rv = self.invoke(ctx)
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/click/core.py", line 1688, in invoke
    return _process_result(sub_ctx.command.invoke(sub_ctx))
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/click/core.py", line 1688, in invoke
    return _process_result(sub_ctx.command.invoke(sub_ctx))
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/click/core.py", line 1434, in invoke
    return ctx.invoke(self.callback, **ctx.params)
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/click/core.py", line 783, in invoke
    return __callback(*args, **kwargs)
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/click/decorators.py", line 33, in new_func
    return f(get_current_context(), *args, **kwargs)
  File "/home/frappe/frappe-bench-1/apps/frappe/frappe/commands/__init__.py", line 29, in _func
    ret = f(frappe._dict(ctx.obj), *args, **kwargs)
  File "/home/frappe/frappe-bench-1/apps/frappe/frappe/commands/scheduler.py", line 142, in doctor
    return _doctor(site=site)
  File "/home/frappe/frappe-bench-1/apps/frappe/frappe/utils/doctor.py", line 104, in doctor
    workers_online = check_number_of_workers()
  File "/home/frappe/frappe-bench-1/apps/frappe/frappe/utils/doctor.py", line 91, in check_number_of_workers
    return len(get_workers())
  File "/home/frappe/frappe-bench-1/apps/frappe/frappe/utils/doctor.py", line 11, in get_workers
    with Connection(get_redis_conn()):
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/tenacity/__init__.py", line 289, in wrapped_f
    return self(f, *args, **kw)
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/tenacity/__init__.py", line 379, in __call__
    do = self.iter(retry_state=retry_state)
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/tenacity/__init__.py", line 325, in iter
    raise retry_exc.reraise()
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/tenacity/__init__.py", line 158, in reraise
    raise self.last_attempt.result()
  File "/usr/lib/python3.10/concurrent/futures/_base.py", line 451, in result
    return self.__get_result()
  File "/usr/lib/python3.10/concurrent/futures/_base.py", line 403, in __get_result
    raise self._exception
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/tenacity/__init__.py", line 382, in __call__
    result = fn(*args, **kwargs)
  File "/home/frappe/frappe-bench-1/apps/frappe/frappe/utils/background_jobs.py", line 459, in get_redis_conn
    return get_redis_connection_without_auth()
  File "/home/frappe/frappe-bench-1/apps/frappe/frappe/utils/background_jobs.py", line 478, in get_redis_connection_without_auth
    _redis_queue_conn = RedisQueue.get_connection()
  File "/home/frappe/frappe-bench-1/apps/frappe/frappe/utils/redis_queue.py", line 21, in get_connection
    conn.ping()
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/redis/commands/core.py", line 1205, in ping
    return self.execute_command("PING", **kwargs)
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/redis/client.py", line 1266, in execute_command
    conn = self.connection or pool.get_connection(command_name, **options)
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/redis/connection.py", line 1457, in get_connection
    connection.connect()
  File "/home/frappe/frappe-bench-1/env/lib/python3.10/site-packages/redis/connection.py", line 705, in connect
    raise ConnectionError(self._error_message(e))
redis.exceptions.ConnectionError: Error 111 connecting to localhost:11003. Connection refused.
frappe@exp:~/frappe-bench-1$ bench get-app https://github.com/Baljit998/F-Drive.git
Getting F-Drive
$ git clone https://github.com/Baljit998/F-Drive.git  --depth 1 --origin upstream
Cloning into 'F-Drive'...
remote: Enumerating objects: 279, done.
remote: Counting objects: 100% (279/279), done.
remote: Compressing objects: 100% (248/248), done.
remote: Total 279 (delta 41), reused 185 (delta 17), pack-reused 0
Receiving objects: 100% (279/279), 12.38 MiB | 8.73 MiB/s, done.
Resolving deltas: 100% (41/41), done.
Ignoring dependencies of https://github.com/Baljit998/F-Drive.git. To install dependencies use --resolve-deps
Installing drive
$ /home/frappe/frappe-bench-1/env/bin/python -m pip install --quiet --upgrade -e /home/frappe/frappe-bench-1/apps/drive
$ yarn install
yarn install v1.22.19
warning ../../../../package.json: No license field
[1/4] Resolving packages...
[2/4] Fetching packages...
[3/4] Linking dependencies...
[4/4] Building fresh packages...
success Saved lockfile.
$ cd frontend && npm install
npm WARN deprecated core-js@2.6.12: core-js@<3.23.3 is no longer maintained and not recommended for usage due to the number of issues. Because of the V8 engine whims, feature detection in old core-js versions could cause a slowdown up to 100x even if nothing is polyfilled. Some versions have web compatibility issues. Please, upgrade your dependencies to the actual version of core-js.
npm WARN deprecated core-js@2.6.12: core-js@<3.23.3 is no longer maintained and not recommended for usage due to the number of issues. Because of the V8 engine whims, feature detection in old core-js versions could cause a slowdown up to 100x even if nothing is polyfilled. Some versions have web compatibility issues. Please, upgrade your dependencies to the actual version of core-js.

> frontend@0.0.0 prepare
> cd .. && husky install frontend/.husky

husky - Git hooks installed

added 493 packages, and audited 494 packages in 24s

121 packages are looking for funding
  run `npm fund` for details

5 vulnerabilities (1 moderate, 3 high, 1 critical)

To address issues that do not require attention, run:
  npm audit fix

Some issues need review, and may require choosing
a different dependency.

Run `npm audit` for details.
Done in 24.35s.
$ bench build --app drive
Linking /home/frappe/frappe-bench-1/apps/erpnext/node_modules to ./assets/erpnext/node_modules                                                                                            ✔ Application Assets Linked


yarn run v1.22.19
warning ../../../../package.json: No license field
$ node esbuild --production --apps drive --run-build-command
File                                                        Size

 DONE  Total Build Time: 259.223ms

 WARN  Cannot connect to redis_cache to update assets_json
 WARN  Cannot connect to redis_cache to update assets_json
 WARN  Cannot connect to redis_cache to update assets_json

Running build command for drive
warning ../../../../package.json: No license field
$ cd frontend && npm run build

> frontend@0.0.0 build
> vite build --base=/assets/drive/frontend/ && yarn copy-html-entry

vite v4.5.1 building for production...
transforming (134) node_modules/frappe-ui/src/components/ListFilter/SearchComplete.vue
        nter-DisplayRegular.woff2?v=3.19 referenced in /home/frappe/frappe-bench-1/apps/drive/frontend/src/index.css didn't resolve at build time, it will remain unchanged to be resolved at runtime
[plugin:vite:resolve] Module "path" has been externalized for browser compatibility, imported by "/home/frappe/frappe-bench-1/apps/drive/frontend/node_modules/mammoth/lib/docx/docx-reader.js". See http://vitejs.dev/guide/troubleshooting.html#module-externalized-for-browser-compatibility for more details.
[plugin:vite:resolve] Module "util" has been externalized for browser compatibility, imported by "/home/frappe/frappe-bench-1/apps/drive/frontend/node_modules/lop/lib/StringSource.js". See http://vitejs.dev/guide/troubleshooting.html#module-externalized-for-browser-compatibility for more details.
node_modules/bluebird/js/release/util.js (201:4) Use of eval in "node_modules/bluebird/js/release/util.js" is strongly discouraged as it poses security risks and may cause issues with minification.
✓ 2169 modules transformed.
Generated an empty chunk: "vue".
../drive/public/frontend/assets/presentation-5df9991c.svg                          0.29 kB │ gzip:   0.19 kB
../drive/public/frontend/assets/spreadsheet-5471e74b.svg                           0.33 kB │ gzip:   0.22 kB
../drive/public/frontend/assets/doc-524a9563.svg                                   0.40 kB │ gzip:   0.23 kB
../drive/public/frontend/assets/folder_old-32e36211.svg                            0.41 kB │ gzip:   0.28 kB
../drive/public/frontend/assets/excel-932d1227.svg                                 0.42 kB │ gzip:   0.28 kB
../drive/public/frontend/assets/folder-73a9a01f.svg                                0.47 kB │ gzip:   0.29 kB
../drive/public/frontend/assets/word-7d059a3e.svg                                  0.49 kB │ gzip:   0.31 kB
../drive/public/frontend/assets/unknown-4762c619.svg                               0.53 kB │ gzip:   0.33 kB
../drive/public/frontend/assets/video-4c15588e.svg                                 0.60 kB │ gzip:   0.35 kB
../drive/public/frontend/assets/folder_line-86f443d6.svg                           0.71 kB │ gzip:   0.42 kB
../drive/public/frontend/assets/logo-55206a4e.svg                                  0.80 kB │ gzip:   0.41 kB
../drive/public/frontend/assets/zip-0d03577f.svg                                   0.81 kB │ gzip:   0.30 kB
../drive/public/frontend/assets/page-break-c04dec0b.svg                            0.92 kB │ gzip:   0.32 kB
../drive/public/frontend/assets/image-8c7d2703.svg                                 1.07 kB │ gzip:   0.58 kB
../drive/public/frontend/assets/audio-b13ad940.svg                                 1.10 kB │ gzip:   0.60 kB
../drive/public/frontend/assets/pdf-f967a428.svg                                   2.21 kB │ gzip:   1.07 kB
../drive/public/frontend/assets/newsreader-vietnamese-400-normal-395a1ded.woff2    4.63 kB
../drive/public/frontend/assets/roboto-vietnamese-400-normal-d2390f1a.woff         4.75 kB
../drive/public/frontend/assets/spectral-vietnamese-400-normal-8aa3e00f.woff       5.17 kB
../drive/public/frontend/assets/poppins-latin-ext-400-normal-cb8bdeab.woff2        5.54 kB
../drive/public/frontend/assets/roboto-vietnamese-400-normal-77b24796.woff2        5.56 kB
../drive/public/frontend/assets/newsreader-vietnamese-400-normal-c290b8e2.woff     6.09 kB
../drive/public/frontend/assets/roboto-greek-400-normal-076b9dc1.woff              6.35 kB
../drive/public/frontend/index.html                                                6.82 kB │ gzip:   1.22 kB
../drive/public/frontend/assets/roboto-greek-400-normal-daf51ab5.woff2             7.11 kB
../drive/public/frontend/assets/spectral-vietnamese-400-normal-7df782e0.woff2      7.20 kB
../drive/public/frontend/assets/poppins-latin-ext-400-normal-8090b590.woff         7.38 kB
../drive/public/frontend/assets/poppins-latin-400-normal-7d93459d.woff2            7.88 kB
../drive/public/frontend/assets/roboto-cyrillic-400-normal-adba67d2.woff           8.39 kB
../drive/public/frontend/assets/roboto-cyrillic-400-normal-495d38d4.woff2          9.63 kB
../drive/public/frontend/assets/roboto-latin-ext-400-normal-c2b94086.woff         10.21 kB
../drive/public/frontend/assets/poppins-latin-400-normal-2db0a254.woff            10.53 kB
../drive/public/frontend/assets/spectral-cyrillic-400-normal-37f0e4e1.woff        11.46 kB
../drive/public/frontend/assets/roboto-latin-ext-400-normal-3c23eb02.woff2        11.87 kB
../drive/public/frontend/assets/newsreader-latin-ext-400-normal-a489af04.woff2    12.66 kB
../drive/public/frontend/assets/roboto-cyrillic-ext-400-normal-0a32035a.woff      13.47 kB
../drive/public/frontend/assets/roboto-latin-400-normal-a9fdbefa.woff             14.38 kB
../drive/public/frontend/assets/spectral-latin-ext-400-normal-5d793ef0.woff       15.26 kB
../drive/public/frontend/assets/roboto-cyrillic-ext-400-normal-b7ef2cd1.woff2     15.34 kB
../drive/public/frontend/assets/spectral-cyrillic-400-normal-2c201640.woff2       15.60 kB
../drive/public/frontend/assets/roboto-latin-400-normal-f6734f81.woff2            15.74 kB
../drive/public/frontend/assets/newsreader-latin-ext-400-normal-558e5e48.woff     16.82 kB
../drive/public/frontend/assets/spectral-latin-400-normal-652261f6.woff           16.91 kB
../drive/public/frontend/assets/spectral-latin-ext-400-normal-bfe9dcc7.woff2      18.91 kB
../drive/public/frontend/assets/sprite-adc9b140.svg                               20.80 kB │ gzip:   4.37 kB
../drive/public/frontend/assets/newsreader-latin-400-normal-e5152ece.woff2        21.54 kB
../drive/public/frontend/assets/spectral-latin-400-normal-51f3ebfe.woff2          21.82 kB
../drive/public/frontend/assets/newsreader-latin-400-normal-295981f6.woff         27.06 kB
../drive/public/frontend/assets/poppins-devanagari-400-normal-478b3ab7.woff2      39.56 kB
../drive/public/frontend/assets/poppins-devanagari-400-normal-aa135e25.woff       52.91 kB
../drive/public/frontend/assets/Inter-Regular-edd1deaf.woff2                     100.79 kB
../drive/public/frontend/assets/Inter-Thin-914c3fab.woff2                        101.16 kB
../drive/public/frontend/assets/Inter-DisplayBlack-b1d4e33d.woff2                101.92 kB
../drive/public/frontend/assets/Inter-DisplayThin-b64c173b.woff2                 102.15 kB
../drive/public/frontend/assets/Inter-ExtraLight-25a4db7c.woff2                  102.87 kB
../drive/public/frontend/assets/Inter-Light-211445a8.woff2                       103.27 kB
../drive/public/frontend/assets/Inter-Black-05e55dd7.woff2                       103.59 kB
../drive/public/frontend/assets/Inter-ExtraBold-8a72efb6.woff2                   104.99 kB
../drive/public/frontend/assets/Inter-Bold-1dc41a58.woff2                        105.21 kB
../drive/public/frontend/assets/Inter-Medium-24fb6e39.woff2                      105.22 kB
../drive/public/frontend/assets/Inter-DisplayLight-e40a858d.woff2                105.34 kB
../drive/public/frontend/assets/Inter-DisplayExtraBold-b7cc680a.woff2            105.36 kB
../drive/public/frontend/assets/Inter-DisplayMedium-12a4a358.woff2               105.38 kB
../drive/public/frontend/assets/Inter-SemiBold-51419407.woff2                    105.40 kB
../drive/public/frontend/assets/Inter-DisplaySemiBold-856fcb49.woff2             105.56 kB
../drive/public/frontend/assets/Inter-DisplayBold-d9bf35ac.woff2                 105.57 kB
../drive/public/frontend/assets/Inter-DisplayExtraLight-32095132.woff2           105.87 kB
../drive/public/frontend/assets/Inter-DisplayItalic-938db435.woff2               106.12 kB
../drive/public/frontend/assets/Inter-Italic-dd31ea31.woff2                      106.55 kB
../drive/public/frontend/assets/Inter-ThinItalic-382fab25.woff2                  106.64 kB
../drive/public/frontend/assets/Inter-DisplayBlackItalic-d561e8dd.woff2          107.28 kB
../drive/public/frontend/assets/Inter-DisplayThinItalic-b70f1c61.woff2           107.44 kB
../drive/public/frontend/assets/Inter-LightItalic-9ea2db78.woff2                 108.56 kB
../drive/public/frontend/assets/Inter-BlackItalic-4ff7db4a.woff2                 108.59 kB
../drive/public/frontend/assets/Inter-ExtraLightItalic-f0df46d0.woff2            109.00 kB
../drive/public/frontend/assets/Inter-DisplayBoldItalic-fef00c57.woff2           110.20 kB
../drive/public/frontend/assets/Inter-DisplaySemiBoldItalic-5e57e1d2.woff2       110.39 kB
../drive/public/frontend/assets/Inter-DisplayMediumItalic-8968b5ab.woff2         110.46 kB
../drive/public/frontend/assets/Inter-BoldItalic-dc0d4194.woff2                  110.52 kB
../drive/public/frontend/assets/Inter-ExtraBoldItalic-38e71f7c.woff2             110.52 kB
../drive/public/frontend/assets/Inter-DisplayLightItalic-151e9a11.woff2          110.56 kB
../drive/public/frontend/assets/Inter-SemiBoldItalic-daa7095c.woff2              110.64 kB
../drive/public/frontend/assets/Inter-DisplayExtraBoldItalic-e5a5984a.woff2      110.82 kB
../drive/public/frontend/assets/Inter-MediumItalic-a2db9bea.woff2                110.82 kB
../drive/public/frontend/assets/Inter-DisplayExtraLightItalic-8eeb78f4.woff2     111.11 kB
../drive/public/frontend/assets/Inter.var-d30c3bd0.woff2                         264.24 kB
../drive/public/frontend/assets/Inter-Italic.var-d9f448e3.woff2                  297.27 kB
../drive/public/frontend/assets/EmptyEntityContextMenu-844a3bfb.css                0.03 kB │ gzip:   0.05 kB
../drive/public/frontend/assets/File-326a2871.css                                  0.04 kB │ gzip:   0.06 kB
../drive/public/frontend/assets/Home-87f934c5.css                                  0.07 kB │ gzip:   0.06 kB
../drive/public/frontend/assets/EntityContextMenu-d65d5ab0.css                     0.12 kB │ gzip:   0.13 kB
../drive/public/frontend/assets/frappe-ui-0831b670.css                             1.73 kB │ gzip:   0.86 kB
../drive/public/frontend/assets/Document-625e988c.css                              2.36 kB │ gzip:   0.89 kB
../drive/public/frontend/assets/@fontsource-d4b6907c.css                          10.31 kB │ gzip:   3.66 kB
../drive/public/frontend/assets/x-data-spreadsheet-cbccb057.css                   20.09 kB │ gzip:   4.02 kB
../drive/public/frontend/assets/index-40044766.css                                91.22 kB │ gzip:  13.55 kB
../drive/public/frontend/assets/vue-4ed993c7.js                                    0.04 kB │ gzip:   0.06 kB │ map:     0.10 kB
../drive/public/frontend/assets/mitt-f7ef348c.js                                   0.36 kB │ gzip:   0.23 kB │ map:     1.12 kB
../drive/public/frontend/assets/just-extend-eab5669c.js                            0.63 kB │ gzip:   0.41 kB │ map:     3.25 kB
../drive/public/frontend/assets/idb-keyval-226f508b.js                             0.72 kB │ gzip:   0.40 kB │ map:     8.04 kB
../drive/public/frontend/assets/LoginBox-d68e341b.js                               0.86 kB │ gzip:   0.55 kB │ map:     1.80 kB
../drive/public/frontend/assets/uuid-7fe747c7.js                                   0.93 kB │ gzip:   0.50 kB │ map:     5.15 kB
../drive/public/frontend/assets/option-0d23e4dc.js                                 1.06 kB │ gzip:   0.41 kB │ map:     3.14 kB
../drive/public/frontend/assets/prosemirror-keymap-12125a16.js                     1.33 kB │ gzip:   0.73 kB │ map:     7.02 kB
../drive/public/frontend/assets/@socket.io-3e1df240.js                             1.38 kB │ gzip:   0.53 kB │ map:     5.36 kB
../drive/public/frontend/assets/base64-js-8f131b70.js                              1.49 kB │ gzip:   0.81 kB │ map:     7.20 kB
../drive/public/frontend/assets/orderedmap-1b52af60.js                             1.49 kB │ gzip:   0.60 kB │ map:     7.01 kB
../drive/public/frontend/assets/w3c-keyname-6b9c3a9a.js                            1.55 kB │ gzip:   0.87 kB │ map:     4.85 kB
../drive/public/frontend/assets/folderDownload-3f2126a3.js                         1.72 kB │ gzip:   0.78 kB │ map:     6.56 kB
../drive/public/frontend/assets/js-base64-fa0a30f2.js                              1.83 kB │ gzip:   0.95 kB │ map:    13.72 kB
../drive/public/frontend/assets/Test-e8953bf0.js                                   2.15 kB │ gzip:   1.04 kB │ map:     2.14 kB
../drive/public/frontend/assets/EmptyEntityContextMenu-194f28cc.js                 2.39 kB │ gzip:   1.07 kB │ map:     4.91 kB
../drive/public/frontend/assets/@vueuse-f8e89262.js                                2.63 kB │ gzip:   1.34 kB │ map:   267.28 kB
../drive/public/frontend/assets/InsertLink-7f56c1b4.js                             2.68 kB │ gzip:   1.24 kB │ map:     3.10 kB
../drive/public/frontend/assets/prosemirror-schema-list-17b81903.js                2.69 kB │ gzip:   1.21 kB │ map:    17.22 kB
../drive/public/frontend/assets/prosemirror-dropcursor-dcfcc57b.js                 3.08 kB │ gzip:   1.31 kB │ map:     9.55 kB
../drive/public/frontend/assets/InsertImage-6c6e2cff.js                            3.12 kB │ gzip:   1.47 kB │ map:     4.45 kB
../drive/public/frontend/assets/InsertVideo-f3e77982.js                            3.12 kB │ gzip:   1.47 kB │ map:     4.43 kB
../drive/public/frontend/assets/rope-sequence-5ceeafee.js                          3.45 kB │ gzip:   1.05 kB │ map:    12.26 kB
../drive/public/frontend/assets/y-protocols-fe039d02.js                            3.55 kB │ gzip:   1.52 kB │ map:    20.67 kB
../drive/public/frontend/assets/prosemirror-gapcursor-cb1c5cca.js                  3.79 kB │ gzip:   1.65 kB │ map:    14.54 kB
../drive/public/frontend/assets/engine.io-parser-f3587869.js                       3.79 kB │ gzip:   1.72 kB │ map:    20.59 kB
../drive/public/frontend/assets/Login-d82ec06d.js                                  4.56 kB │ gzip:   2.21 kB │ map:     6.02 kB
../drive/public/frontend/assets/Signup-1f12a69a.js                                 5.03 kB │ gzip:   2.26 kB │ map:     6.96 kB
../drive/public/frontend/assets/socket.io-parser-fd225f40.js                       5.16 kB │ gzip:   1.97 kB │ map:    21.72 kB
../drive/public/frontend/assets/prosemirror-history-f2cfa7ff.js                    5.89 kB │ gzip:   2.33 kB │ map:    28.39 kB
../drive/public/frontend/assets/fuzzysort-2e8530b9.js                              6.57 kB │ gzip:   2.83 kB │ map:    37.68 kB
../drive/public/frontend/assets/prosemirror-commands-b9e943ad.js                   7.63 kB │ gzip:   2.57 kB │ map:    45.40 kB
../drive/public/frontend/assets/Trash-67beb834.js                                  8.33 kB │ gzip:   2.97 kB │ map:    15.77 kB
../drive/public/frontend/assets/y-webrtc-5b2bd1a9.js                               8.88 kB │ gzip:   3.36 kB │ map:    39.29 kB
../drive/public/frontend/assets/lop-014abdc4.js                                   10.60 kB │ gzip:   3.52 kB │ map:    40.99 kB
../drive/public/frontend/assets/Favourites-f5999824.js                            10.66 kB │ gzip:   3.27 kB │ map:    22.24 kB
../drive/public/frontend/assets/Recent-02ff04e1.js                                10.77 kB │ gzip:   3.26 kB │ map:    22.84 kB
../drive/public/frontend/assets/prosemirror-state-ebe98fa3.js                     11.99 kB │ gzip:   4.11 kB │ map:    54.95 kB
../drive/public/frontend/assets/vuex-50df14a6.js                                  12.15 kB │ gzip:   4.05 kB │ map:    64.98 kB
../drive/public/frontend/assets/socket.io-client-a28ceeab.js                      12.37 kB │ gzip:   4.03 kB │ map:    55.18 kB
../drive/public/frontend/assets/File-d4711f91.js                                  12.77 kB │ gzip:   4.08 kB │ map:    30.16 kB
../drive/public/frontend/assets/Shared-6fd267c4.js                                13.07 kB │ gzip:   3.61 kB │ map:    31.51 kB
../drive/public/frontend/assets/lucide-vue-next-587865c0.js                       13.38 kB │ gzip:   4.28 kB │ map:    46.65 kB
../drive/public/frontend/assets/Home-d0f1c970.js                                  14.73 kB │ gzip:   4.17 kB │ map:    31.74 kB
../drive/public/frontend/assets/lib0-b0be8ad7.js                                  15.41 kB │ gzip:   6.09 kB │ map:   153.89 kB
../drive/public/frontend/assets/tippy.js-2c0c6dcb.js                              15.78 kB │ gzip:   5.71 kB │ map:   102.26 kB
../drive/public/frontend/assets/y-prosemirror-d6388ca9.js                         16.51 kB │ gzip:   5.77 kB │ map:    81.50 kB
../drive/public/frontend/assets/linkifyjs-e7adbd58.js                             17.14 kB │ gzip:  10.04 kB │ map:    87.10 kB
../drive/public/frontend/assets/engine.io-client-a1d04389.js                      18.19 kB │ gzip:   6.07 kB │ map:    75.48 kB
../drive/public/frontend/assets/@popperjs-1a36a816.js                             20.15 kB │ gzip:   7.57 kB │ map:   113.62 kB
../drive/public/frontend/assets/underscore-7eea864c.js                            20.98 kB │ gzip:   7.60 kB │ map:   125.03 kB
../drive/public/frontend/assets/Folder-308ae30e.js                                22.72 kB │ gzip:   4.91 kB │ map:    57.03 kB
../drive/public/frontend/assets/vue-router-8e105334.js                            22.95 kB │ gzip:   9.43 kB │ map:   194.25 kB
../drive/public/frontend/assets/prosemirror-transform-e6526017.js                 28.83 kB │ gzip:   8.71 kB │ map:   126.51 kB
../drive/public/frontend/assets/EntityContextMenu-7def335e.js                     29.25 kB │ gzip:   7.73 kB │ map:    65.30 kB
../drive/public/frontend/assets/prosemirror-tables-aeeda665.js                    35.29 kB │ gzip:  11.60 kB │ map:   141.84 kB
../drive/public/frontend/assets/dropzone-a21091b3.js                              36.63 kB │ gzip:  11.41 kB │ map:   141.55 kB
../drive/public/frontend/assets/prosemirror-model-dd95f3ae.js                     43.31 kB │ gzip:  13.68 kB │ map:   189.66 kB
../drive/public/frontend/assets/xmlbuilder-1058c20a.js                            44.41 kB │ gzip:   9.43 kB │ map:   144.71 kB
../drive/public/frontend/assets/mammoth-bfcbd728.js                               50.43 kB │ gzip:  16.40 kB │ map:   201.32 kB
../drive/public/frontend/assets/@headlessui-533cca45.js                           51.33 kB │ gzip:  16.64 kB │ map:   137.37 kB
../drive/public/frontend/assets/frappe-ui-4bef2601.js                             53.15 kB │ gzip:  17.33 kB │ map:   148.27 kB
../drive/public/frontend/assets/@xmldom-84e5a3ff.js                               56.78 kB │ gzip:  22.95 kB │ map:   220.66 kB
../drive/public/frontend/assets/yjs-42bd6745.js                                   67.26 kB │ gzip:  19.93 kB │ map:   412.30 kB
../drive/public/frontend/assets/@vue-e9f8431f.js                                  68.96 kB │ gzip:  27.77 kB │ map:   498.08 kB
../drive/public/frontend/assets/showdown-7bea7fba.js                              71.83 kB │ gzip:  24.73 kB │ map:   241.98 kB
../drive/public/frontend/assets/Document-fddfc186.js                              77.57 kB │ gzip:  22.13 kB │ map:   197.50 kB
../drive/public/frontend/assets/docx-preview-1286eb8d.js                          83.65 kB │ gzip:  23.48 kB │ map:   172.19 kB
../drive/public/frontend/assets/bluebird-dbfd313f.js                              85.63 kB │ gzip:  24.73 kB │ map:   285.87 kB
../drive/public/frontend/assets/feather-icons-8519b072.js                         88.13 kB │ gzip:  22.18 kB │ map:   220.31 kB
../drive/public/frontend/assets/prosemirror-view-cb333a76.js                      92.14 kB │ gzip:  29.59 kB │ map:   377.39 kB
../drive/public/frontend/assets/jszip-91c74f12.js                                 97.32 kB │ gzip:  30.17 kB │ map:   226.48 kB
../drive/public/frontend/assets/simple-peer-a5fff882.js                           98.74 kB │ gzip:  29.57 kB │ map:   218.88 kB
../drive/public/frontend/assets/@tiptap-013ab9c9.js                              107.72 kB │ gzip:  31.10 kB │ map:   476.93 kB
../drive/public/frontend/assets/x-data-spreadsheet-a2bc5939.js                   109.21 kB │ gzip:  34.61 kB │ map:   414.24 kB
../drive/public/frontend/assets/dingbat-to-unicode-6d29188d.js                   120.00 kB │ gzip:  12.43 kB │ map:   228.68 kB
../drive/public/frontend/assets/index-210aa2d9.js                                120.64 kB │ gzip:  29.52 kB │ map:   230.53 kB
../drive/public/frontend/assets/xlsx-e708ec81.js                                 334.19 kB │ gzip: 114.24 kB │ map: 1,517.19 kB
✓ built in 25.23s
warning ../../../../../package.json: No license field
$ cp ../drive/public/frontend/index.html ../drive/www/drive.html
Done in 30.34s.
$ supervisorctl restart frappe:
frappe: ERROR (no such group)
frappe: ERROR (no such group)
WARN: restarting supervisor failed. Use `bench restart` to retry.
frappe@exp:~/frappe-bench-1$  bench version --format table
+---------+---------+------------+---------+
| App     | Version | Branch     | Commit  |
+---------+---------+------------+---------+
| drive   | 0.0.1   | main       | ec54798 |
| erpnext | 15.8.3  | version-15 | ec436c1 |
| frappe  | 15.7.0  | version-15 | 5136457 |
+---------+---------+------------+---------+
frappe@exp:~/frappe-bench-1$ bench get-app https://github.com/Software-Developemnt-Centre/noticeboard.git
Getting noticeboard
$ git clone https://github.com/Software-Developemnt-Centre/noticeboard.git  --depth 1 --origin upstream
Cloning into 'noticeboard'...
remote: Enumerating objects: 47, done.
remote: Counting objects: 100% (47/47), done.
remote: Compressing objects: 100% (38/38), done.
remote: Total 47 (delta 4), reused 35 (delta 0), pack-reused 0
Receiving objects: 100% (47/47), 10.94 KiB | 58.00 KiB/s, done.
Resolving deltas: 100% (4/4), done.
Ignoring dependencies of https://github.com/Software-Developemnt-Centre/noticeboard.git. To install dependencies use --resolve-deps
Installing noticeboard
$ /home/frappe/frappe-bench-1/env/bin/python -m pip install --quiet --upgrade -e /home/frappe/frappe-bench-1/apps/noticeboard
$ bench build --app noticeboard
Linking /home/frappe/frappe-bench-1/apps/noticeboard/noticeboard/public to ./assets/noticeboard                                                                                           Linking /home/frappe/frappe-bench-1/apps/erpnext/node_modules to ./assets/erpnext/node_modules                                                                                            ✔ Application Assets Linked


yarn run v1.22.19
warning ../../../../package.json: No license field
$ node esbuild --production --apps noticeboard --run-build-command
File                                                        Size

 DONE  Total Build Time: 255.714ms

 WARN  Cannot connect to redis_cache to update assets_json
 WARN  Cannot connect to redis_cache to update assets_json
 WARN  Cannot connect to redis_cache to update assets_json
Done in 1.86s.
$ supervisorctl restart frappe:
frappe: ERROR (no such group)
frappe: ERROR (no such group)
WARN: restarting supervisor failed. Use `bench restart` to retry.
frappe@exp:~/frappe-bench-1$ cd ..
frappe@exp:~$ cd frappe-bench
frappe@exp:~/frappe-bench$ bench disable-production
WARN: superuser privileges required for this command
frappe@exp:~/frappe-bench$ sudo bench disable-production
$ /usr/bin/supervisorctl reread
frappe-bench-redis: disappeared
frappe-bench-web: disappeared
frappe-bench-workers: disappeared
$ /usr/bin/supervisorctl update
frappe-bench-redis: stopped
frappe-bench-redis: removed process group
frappe-bench-web: stopped
frappe-bench-web: removed process group
frappe-bench-workers: stopped
frappe-bench-workers: removed process group
$ sudo /usr/sbin/nginx -t
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful
$ sudo systemctl reload nginx
frappe@exp:~/frappe-bench$ rm config/supervisor.conf
frappe@exp:~/frappe-bench$ rm config/nginx.conf
frappe@exp:~/frappe-bench$ sudo service nginx stop
frappe@exp:~/frappe-bench$ sudo service supervisor stop
frappe@exp:~/frappe-bench$ bench setup procfile
A Procfile already exists and this will overwrite it. Do you want to continue? [y/N]: ^CAborted!
frappe@exp:~/frappe-bench$ git clone https://github.com/proenterprise/bench-stop
Cloning into 'bench-stop'...
remote: Enumerating objects: 40, done.
remote: Counting objects: 100% (19/19), done.
remote: Compressing objects: 100% (16/16), done.
remote: Total 40 (delta 4), reused 10 (delta 3), pack-reused 21
Receiving objects: 100% (40/40), 9.70 KiB | 2.42 MiB/s, done.
Resolving deltas: 100% (9/9), done.
frappe@exp:~/frappe-bench$ mv ./bench-stop/stop.py .
frappe@exp:~/frappe-bench$ python3 stop.py
Port 11002 already closed
Port 12002 already closed
Port 13002 already closed
Port 9002 already closed
Port 8002 already closed
bench stopped
frappe@exp:~/frappe-bench$ cd ..
frappe@exp:~$ cd frappe-bench
frappe@exp:~/frappe-bench$ cd ..
frappe@exp:~$ cd frappe-bench-1
frappe@exp:~/frappe-bench-1$ bench --site all list-apps

frappe
erpnext

frappe@exp:~/frappe-bench-1$ bench version
drive 0.0.1
erpnext 15.8.3
frappe 15.7.0
noticeboard 0.0.1
frappe@exp:~/frappe-bench-1$ bench --site exp.gndec.ac.in install-app drive

Installing drive...
Updating DocTypes for drive         : [========================================] 100%
Updating Dashboard for drive
frappe@exp:~/frappe-bench-1$ bench --site exp.gndec.ac.in enable-scheduler
Enabled for exp.gndec.ac.in
frappe@exp:~/frappe-bench-1$ bench --site site1.local set-maintenance-mode off
Site site1.local does not exist!
frappe@exp:~/frappe-bench-1$ bench --site exp.gndec.ac.in set-maintenance-mode off
frappe@exp:~/frappe-bench-1$ sudo bench setup production frappe
Setting Up prerequisites...
Setting Up supervisor...
Update your /etc/supervisor/supervisord.conf with the following values:
[unix_http_server]
chmod=0760
chown=frappe:frappe
Setting Up NGINX...
Port configuration list:

Site exp.gndec.ac.in assigned port: 80
Setting Up symlinks and reloading services...
$ sudo /usr/sbin/nginx -t
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful
$ sudo systemctl reload nginx
nginx.service is not active, cannot reload.
ERROR:
Traceback (most recent call last):
  File "/usr/local/bin/bench", line 8, in <module>
    sys.exit(cli())
  File "/usr/local/lib/python3.10/dist-packages/bench/cli.py", line 121, in cli
    raise e
  File "/usr/local/lib/python3.10/dist-packages/bench/cli.py", line 111, in cli
    bench_command()
  File "/usr/lib/python3/dist-packages/click/core.py", line 1128, in __call__
    return self.main(*args, **kwargs)
  File "/usr/lib/python3/dist-packages/click/core.py", line 1053, in main
    rv = self.invoke(ctx)
  File "/usr/lib/python3/dist-packages/click/core.py", line 1659, in invoke
    return _process_result(sub_ctx.command.invoke(sub_ctx))
  File "/usr/lib/python3/dist-packages/click/core.py", line 1659, in invoke
    return _process_result(sub_ctx.command.invoke(sub_ctx))
  File "/usr/lib/python3/dist-packages/click/core.py", line 1395, in invoke
    return ctx.invoke(self.callback, **ctx.params)
  File "/usr/lib/python3/dist-packages/click/core.py", line 754, in invoke
    return __callback(*args, **kwargs)
  File "/usr/local/lib/python3.10/dist-packages/bench/commands/setup.py", line 72, in setup_production
    setup_production(user=user, yes=yes)
  File "/usr/local/lib/python3.10/dist-packages/bench/config/production_setup.py", line 74, in setup_production
    reload_nginx()
  File "/usr/local/lib/python3.10/dist-packages/bench/config/production_setup.py", line 188, in reload_nginx
    service('nginx', 'reload')
  File "/usr/local/lib/python3.10/dist-packages/bench/config/production_setup.py", line 102, in service
    exec_cmd(f"sudo systemctl {service_option} {service_name}")
  File "/usr/local/lib/python3.10/dist-packages/bench/utils/__init__.py", line 153, in exec_cmd
    raise CommandFailedError
bench.exceptions.CommandFailedError
frappe@exp:~/frappe-bench-1$ bench setup nginx
nginx.conf already exists and this will overwrite it. Do you want to continue? [y/N]: y
Port configuration list:

Site exp.gndec.ac.in assigned port: 80
frappe@exp:~/frappe-bench-1$ sudo bench setup production frappe
Setting Up prerequisites...
Setting Up supervisor...
Update your /etc/supervisor/supervisord.conf with the following values:
[unix_http_server]
chmod=0760
chown=frappe:frappe
supervisor.conf already exists and this will overwrite it. Do you want to continue? [y/N]: y
Setting Up NGINX...
nginx.conf already exists and this will overwrite it. Do you want to continue? [y/N]: y
Port configuration list:

Site exp.gndec.ac.in assigned port: 80
Setting Up symlinks and reloading services...
$ /usr/bin/supervisorctl reread
error: <class 'FileNotFoundError'>, [Errno 2] No such file or directory: file: /usr/lib/python3/dist-packages/supervisor/xmlrpc.py line: 560
$ /usr/bin/supervisorctl reload
error: <class 'FileNotFoundError'>, [Errno 2] No such file or directory: file: /usr/lib/python3/dist-packages/supervisor/xmlrpc.py line: 560
$ sudo systemctl restart supervisord
Failed to restart supervisord.service: Unit supervisord.service not found.
$ sudo systemctl restart supervisor
$ sudo /usr/sbin/nginx -t
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful
$ sudo systemctl reload nginx
nginx.service is not active, cannot reload.
ERROR:
Traceback (most recent call last):
  File "/usr/local/bin/bench", line 8, in <module>
    sys.exit(cli())
  File "/usr/local/lib/python3.10/dist-packages/bench/cli.py", line 121, in cli
    raise e
  File "/usr/local/lib/python3.10/dist-packages/bench/cli.py", line 111, in cli
    bench_command()
  File "/usr/lib/python3/dist-packages/click/core.py", line 1128, in __call__
    return self.main(*args, **kwargs)
  File "/usr/lib/python3/dist-packages/click/core.py", line 1053, in main
    rv = self.invoke(ctx)
  File "/usr/lib/python3/dist-packages/click/core.py", line 1659, in invoke
    return _process_result(sub_ctx.command.invoke(sub_ctx))
  File "/usr/lib/python3/dist-packages/click/core.py", line 1659, in invoke
    return _process_result(sub_ctx.command.invoke(sub_ctx))
  File "/usr/lib/python3/dist-packages/click/core.py", line 1395, in invoke
    return ctx.invoke(self.callback, **ctx.params)
  File "/usr/lib/python3/dist-packages/click/core.py", line 754, in invoke
    return __callback(*args, **kwargs)
  File "/usr/local/lib/python3.10/dist-packages/bench/commands/setup.py", line 72, in setup_production
    setup_production(user=user, yes=yes)
  File "/usr/local/lib/python3.10/dist-packages/bench/config/production_setup.py", line 74, in setup_production
    reload_nginx()
  File "/usr/local/lib/python3.10/dist-packages/bench/config/production_setup.py", line 188, in reload_nginx
    service('nginx', 'reload')
  File "/usr/local/lib/python3.10/dist-packages/bench/config/production_setup.py", line 102, in service
    exec_cmd(f"sudo systemctl {service_option} {service_name}")
  File "/usr/local/lib/python3.10/dist-packages/bench/utils/__init__.py", line 153, in exec_cmd
    raise CommandFailedError
bench.exceptions.CommandFailedError
frappe@exp:~/frappe-bench-1$ bench setup nginx
nginx.conf already exists and this will overwrite it. Do you want to continue? [y/N]: y
Port configuration list:

Site exp.gndec.ac.in assigned port: 80
frappe@exp:~/frappe-bench-1$ service nginx status
○ nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/lib/systemd/system/nginx.service; enabled; vendor preset: enabled)
     Active: inactive (dead) since Sat 2023-12-30 17:15:56 IST; 9min ago
       Docs: man:nginx(8)
    Process: 1860556 ExecStartPre=/usr/sbin/nginx -t -q -g daemon on; master_process on; (co>    Process: 1860557 ExecStart=/usr/sbin/nginx -g daemon on; master_process on; (code=exited>    Process: 1871360 ExecReload=/usr/sbin/nginx -g daemon on; master_process on; -s reload (>    Process: 1871385 ExecStop=/sbin/start-stop-daemon --quiet --stop --retry QUIT/5 --pidfil>   Main PID: 1860558 (code=exited, status=0/SUCCESS)
        CPU: 12.829s
frappe@exp:~/frappe-bench-1$ sudo supervisorctl restart all
frappe-bench-1-redis:frappe-bench-1-redis-cache: stopped
frappe-bench-1-redis:frappe-bench-1-redis-queue: stopped
frappe-bench-1-redis:frappe-bench-1-redis-socketio: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-schedule: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-short-worker-0: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-long-worker-0: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-default-worker-0: stopped
frappe-bench-1-web:frappe-bench-1-frappe-web: stopped
frappe-bench-1-redis:frappe-bench-1-redis-cache: started
frappe-bench-1-redis:frappe-bench-1-redis-queue: started
frappe-bench-1-redis:frappe-bench-1-redis-socketio: started
frappe-bench-1-web:frappe-bench-1-frappe-web: started
frappe-bench-1-web:frappe-bench-1-node-socketio: ERROR (spawn error)
frappe-bench-1-workers:frappe-bench-1-frappe-schedule: started
frappe-bench-1-workers:frappe-bench-1-frappe-default-worker-0: started
frappe-bench-1-workers:frappe-bench-1-frappe-short-worker-0: started
frappe-bench-1-workers:frappe-bench-1-frappe-long-worker-0: started
frappe@exp:~/frappe-bench-1$ sudo bench setup production [frappe-user]
Setting Up prerequisites...
Setting Up supervisor...
/etc/supervisor/supervisord.conf will be updated with the following values:

Updated supervisord.conf: 'chown' changed from 'frappe:frappe' to '[frappe-user]:[frappe-user]'
Do you want to continue? [y/N]: ^CAborted!
frappe@exp:~/frappe-bench-1$ sudo bench setup production frappe
Setting Up prerequisites...
Setting Up supervisor...
Update your /etc/supervisor/supervisord.conf with the following values:
[unix_http_server]
chmod=0760
chown=frappe:frappe
supervisor.conf already exists and this will overwrite it. Do you want to continue? [y/N]: y
Setting Up NGINX...
nginx.conf already exists and this will overwrite it. Do you want to continue? [y/N]: y
Port configuration list:

Site exp.gndec.ac.in assigned port: 80
Setting Up symlinks and reloading services...
$ /usr/bin/supervisorctl reread
No config updates to processes
$ /usr/bin/supervisorctl update
$ sudo /usr/sbin/nginx -t
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful
$ sudo systemctl reload nginx
nginx.service is not active, cannot reload.
ERROR:
Traceback (most recent call last):
  File "/usr/local/bin/bench", line 8, in <module>
    sys.exit(cli())
  File "/usr/local/lib/python3.10/dist-packages/bench/cli.py", line 121, in cli
    raise e
  File "/usr/local/lib/python3.10/dist-packages/bench/cli.py", line 111, in cli
    bench_command()
  File "/usr/lib/python3/dist-packages/click/core.py", line 1128, in __call__
    return self.main(*args, **kwargs)
  File "/usr/lib/python3/dist-packages/click/core.py", line 1053, in main
    rv = self.invoke(ctx)
  File "/usr/lib/python3/dist-packages/click/core.py", line 1659, in invoke
    return _process_result(sub_ctx.command.invoke(sub_ctx))
  File "/usr/lib/python3/dist-packages/click/core.py", line 1659, in invoke
    return _process_result(sub_ctx.command.invoke(sub_ctx))
  File "/usr/lib/python3/dist-packages/click/core.py", line 1395, in invoke
    return ctx.invoke(self.callback, **ctx.params)
  File "/usr/lib/python3/dist-packages/click/core.py", line 754, in invoke
    return __callback(*args, **kwargs)
  File "/usr/local/lib/python3.10/dist-packages/bench/commands/setup.py", line 72, in setup_production
    setup_production(user=user, yes=yes)
  File "/usr/local/lib/python3.10/dist-packages/bench/config/production_setup.py", line 74, in setup_production
    reload_nginx()
  File "/usr/local/lib/python3.10/dist-packages/bench/config/production_setup.py", line 188, in reload_nginx
    service('nginx', 'reload')
  File "/usr/local/lib/python3.10/dist-packages/bench/config/production_setup.py", line 102, in service
    exec_cmd(f"sudo systemctl {service_option} {service_name}")
  File "/usr/local/lib/python3.10/dist-packages/bench/utils/__init__.py", line 153, in exec_cmd
    raise CommandFailedError
bench.exceptions.CommandFailedError
frappe@exp:~/frappe-bench-1$ sudo supervisorctl restart all
frappe-bench-1-workers:frappe-bench-1-frappe-schedule: stopped
frappe-bench-1-redis:frappe-bench-1-redis-cache: stopped
frappe-bench-1-redis:frappe-bench-1-redis-queue: stopped
frappe-bench-1-redis:frappe-bench-1-redis-socketio: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-long-worker-0: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-default-worker-0: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-short-worker-0: stopped
frappe-bench-1-web:frappe-bench-1-frappe-web: stopped
frappe-bench-1-redis:frappe-bench-1-redis-cache: started
frappe-bench-1-redis:frappe-bench-1-redis-queue: started
frappe-bench-1-redis:frappe-bench-1-redis-socketio: started
frappe-bench-1-web:frappe-bench-1-frappe-web: started
frappe-bench-1-web:frappe-bench-1-node-socketio: ERROR (spawn error)
frappe-bench-1-workers:frappe-bench-1-frappe-schedule: started
frappe-bench-1-workers:frappe-bench-1-frappe-default-worker-0: started
frappe-bench-1-workers:frappe-bench-1-frappe-short-worker-0: started
frappe-bench-1-workers:frappe-bench-1-frappe-long-worker-0: started
frappe@exp:~/frappe-bench-1$ su - frappe
Password:
frappe@exp:~$ cd frappe-bench-1
frappe@exp:~/frappe-bench-1$ sudo apt-get -y install supervisor nginx
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
supervisor is already the newest version (4.2.1-1ubuntu1).
nginx is already the newest version (1.18.0-6ubuntu14.4).
0 upgraded, 0 newly installed, 0 to remove and 4 not upgraded.
frappe@exp:~/frappe-bench-1$ sudo pip3 install frappe-bench
Requirement already satisfied: frappe-bench in /usr/local/lib/python3.10/dist-packages (5.10.1)
Requirement already satisfied: GitPython~=2.1.15 in /usr/local/lib/python3.10/dist-packages (from frappe-bench) (2.1.15)
Requirement already satisfied: honcho in /usr/local/lib/python3.10/dist-packages (from frappe-bench) (1.1.0)
Requirement already satisfied: Jinja2~=3.0.3 in /usr/lib/python3/dist-packages (from frappe-bench) (3.0.3)
Requirement already satisfied: setuptools in /usr/lib/python3/dist-packages (from frappe-bench) (59.6.0)
Requirement already satisfied: requests in /usr/lib/python3/dist-packages (from frappe-bench) (2.25.1)
Requirement already satisfied: Click>=7.0 in /usr/lib/python3/dist-packages (from frappe-bench) (8.0.3)
Requirement already satisfied: python-crontab~=2.4.0 in /usr/local/lib/python3.10/dist-packages (from frappe-bench) (2.4.2)
Requirement already satisfied: semantic-version~=2.8.2 in /usr/local/lib/python3.10/dist-packages (from frappe-bench) (2.8.5)
Requirement already satisfied: gitdb2<3,>=2 in /usr/local/lib/python3.10/dist-packages (from GitPython~=2.1.15->frappe-bench) (2.0.6)
Requirement already satisfied: python-dateutil in /usr/local/lib/python3.10/dist-packages (from python-crontab~=2.4.0->frappe-bench) (2.8.2)
Requirement already satisfied: smmap2>=2.0.0 in /usr/local/lib/python3.10/dist-packages (from gitdb2<3,>=2->GitPython~=2.1.15->frappe-bench) (3.0.1)
Requirement already satisfied: six>=1.5 in /usr/lib/python3/dist-packages (from python-dateutil->python-crontab~=2.4.0->frappe-bench) (1.16.0)
Requirement already satisfied: smmap>=3.0.1 in /usr/local/lib/python3.10/dist-packages (from smmap2>=2.0.0->gitdb2<3,>=2->GitPython~=2.1.15->frappe-bench) (5.0.0)
WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv
frappe@exp:~/frappe-bench-1$ sudo /home/frappe/.local/bin/bench setup production frappe
Setting Up prerequisites...
Setting Up supervisor...
Update your /etc/supervisor/supervisord.conf with the following values:
[unix_http_server]
chmod=0760
chown=frappe:frappe
supervisor.conf already exists and this will overwrite it. Do you want to continue? [y/N]: y
Setting Up NGINX...
nginx.conf already exists and this will overwrite it. Do you want to continue? [y/N]: y
Port configuration list:

Site exp.gndec.ac.in assigned port: 80
Setting Up symlinks and reloading services...
$ /usr/bin/supervisorctl reread
No config updates to processes
$ /usr/bin/supervisorctl update
$ sudo /usr/sbin/nginx -t
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful
$ sudo systemctl reload nginx
nginx.service is not active, cannot reload.
ERROR:
Traceback (most recent call last):
  File "/home/frappe/.local/bin/bench", line 8, in <module>
    sys.exit(cli())
  File "/usr/local/lib/python3.10/dist-packages/bench/cli.py", line 121, in cli
    raise e
  File "/usr/local/lib/python3.10/dist-packages/bench/cli.py", line 111, in cli
    bench_command()
  File "/usr/lib/python3/dist-packages/click/core.py", line 1128, in __call__
    return self.main(*args, **kwargs)
  File "/usr/lib/python3/dist-packages/click/core.py", line 1053, in main
    rv = self.invoke(ctx)
  File "/usr/lib/python3/dist-packages/click/core.py", line 1659, in invoke
    return _process_result(sub_ctx.command.invoke(sub_ctx))
  File "/usr/lib/python3/dist-packages/click/core.py", line 1659, in invoke
    return _process_result(sub_ctx.command.invoke(sub_ctx))
  File "/usr/lib/python3/dist-packages/click/core.py", line 1395, in invoke
    return ctx.invoke(self.callback, **ctx.params)
  File "/usr/lib/python3/dist-packages/click/core.py", line 754, in invoke
    return __callback(*args, **kwargs)
  File "/usr/local/lib/python3.10/dist-packages/bench/commands/setup.py", line 72, in setup_production
    setup_production(user=user, yes=yes)
  File "/usr/local/lib/python3.10/dist-packages/bench/config/production_setup.py", line 74, in setup_production
    reload_nginx()
  File "/usr/local/lib/python3.10/dist-packages/bench/config/production_setup.py", line 188, in reload_nginx
    service('nginx', 'reload')
  File "/usr/local/lib/python3.10/dist-packages/bench/config/production_setup.py", line 102, in service
    exec_cmd(f"sudo systemctl {service_option} {service_name}")
  File "/usr/local/lib/python3.10/dist-packages/bench/utils/__init__.py", line 153, in exec_cmd
    raise CommandFailedError
bench.exceptions.CommandFailedError
frappe@exp:~/frappe-bench-1$ sudo systemctl status nginx
○ nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/lib/systemd/system/nginx.service; enabled; vendor preset: enabled)
     Active: inactive (dead) since Sat 2023-12-30 17:15:56 IST; 16min ago
       Docs: man:nginx(8)
    Process: 1860556 ExecStartPre=/usr/sbin/nginx -t -q -g daemon on; master_process on; (co>    Process: 1860557 ExecStart=/usr/sbin/nginx -g daemon on; master_process on; (code=exited>    Process: 1871360 ExecReload=/usr/sbin/nginx -g daemon on; master_process on; -s reload (>    Process: 1871385 ExecStop=/sbin/start-stop-daemon --quiet --stop --retry QUIT/5 --pidfil>   Main PID: 1860558 (code=exited, status=0/SUCCESS)
        CPU: 12.829s

Dec 30 17:14:54 exp systemd[1]: Reloading A high performance web server and a reverse proxy >Dec 30 17:14:54 exp systemd[1]: Reloaded A high performance web server and a reverse proxy s>Dec 30 17:15:56 exp systemd[1]: Stopping A high performance web server and a reverse proxy s>Dec 30 17:15:56 exp systemd[1]: nginx.service: Deactivated successfully.
Dec 30 17:15:56 exp systemd[1]: Stopped A high performance web server and a reverse proxy se>Dec 30 17:15:56 exp systemd[1]: nginx.service: Consumed 12.829s CPU time.
Dec 30 17:23:05 exp systemd[1]: nginx.service: Unit cannot be reloaded because it is inactiv>Dec 30 17:24:18 exp systemd[1]: nginx.service: Unit cannot be reloaded because it is inactiv>Dec 30 17:26:37 exp systemd[1]: nginx.service: Unit cannot be reloaded because it is inactiv>Dec 30 17:31:56 exp systemd[1]: nginx.service: Unit cannot be reloaded because it is inactiv>frappe@exp:~/frappe-bench-1$ sudo systemctl restart nginx
frappe@exp:~/frappe-bench-1$ sudo /home/frappe/.local/bin/bench setup production frappe
Setting Up prerequisites...
Setting Up supervisor...
Update your /etc/supervisor/supervisord.conf with the following values:
[unix_http_server]
chmod=0760
chown=frappe:frappe
supervisor.conf already exists and this will overwrite it. Do you want to continue? [y/N]: y
Setting Up NGINX...
nginx.conf already exists and this will overwrite it. Do you want to continue? [y/N]: y
Port configuration list:

Site exp.gndec.ac.in assigned port: 80
Setting Up symlinks and reloading services...
$ /usr/bin/supervisorctl reread
No config updates to processes
$ /usr/bin/supervisorctl update
$ sudo /usr/sbin/nginx -t
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful
$ sudo systemctl reload nginx
frappe@exp:~/frappe-bench-1$ bench config dns_multitenant on
frappe@exp:~/frappe-bench-1$ bench setup add-domain exp.gndec.ac.in --site exp.gndec.ac.in
frappe@exp:~/frappe-bench-1$ bench setup nginx
nginx.conf already exists and this will overwrite it. Do you want to continue? [y/N]: y
frappe@exp:~/frappe-bench-1$ sudo service nginx reload
frappe@exp:~/frappe-bench-1$ sudo snap install core
snap "core" is already installed, see 'snap help refresh'
frappe@exp:~/frappe-bench-1$ sudo snap refresh core
snap "core" has no updates available
frappe@exp:~/frappe-bench-1$ sudo ln -s /snap/bin/certbot /usr/bin/certbot
ln: failed to create symbolic link '/usr/bin/certbot': File exists
frappe@exp:~/frappe-bench-1$ sudo certbot --nginx
Saving debug log to /var/log/letsencrypt/letsencrypt.log

Which names would you like to activate HTTPS for?
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
1: exp.gndec.ac.in
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Select the appropriate numbers separated by commas and/or spaces, or leave input
blank to select all options shown (Enter 'c' to cancel): 1
An error occurred determining the OCSP status of /etc/letsencrypt/archive/exp.gndec.ac.in-0001/cert1.pem.
Certificate not yet due for renewal

You have an existing certificate that has exactly the same domains or certificate name you requested and isn't close to expiry.
(ref: /etc/letsencrypt/renewal/exp.gndec.ac.in-0001.conf)

What would you like to do?
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
1: Attempt to reinstall this existing certificate
2: Renew & replace the certificate (may be subject to CA rate limits)
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Select the appropriate number [1-2] then [enter] (press 'c' to cancel): 1
Deploying certificate
Successfully deployed certificate for exp.gndec.ac.in to /etc/nginx/conf.d/frappe-bench-1.conf
Congratulations! You have successfully enabled HTTPS on https://exp.gndec.ac.in

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
If you like Certbot, please consider supporting our work by:
 * Donating to ISRG / Let's Encrypt:   https://letsencrypt.org/donate
 * Donating to EFF:                    https://eff.org/donate-le
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
frappe@exp:~/frappe-bench-1$ bench restart
$ supervisorctl restart frappe-bench-1-workers: frappe-bench-1-web:
frappe-bench-1-workers:frappe-bench-1-frappe-schedule: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-default-worker-0: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-short-worker-0: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-long-worker-0: stopped
frappe-bench-1-web:frappe-bench-1-frappe-web: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-schedule: started
frappe-bench-1-workers:frappe-bench-1-frappe-default-worker-0: started
frappe-bench-1-workers:frappe-bench-1-frappe-short-worker-0: started
frappe-bench-1-workers:frappe-bench-1-frappe-long-worker-0: started
frappe-bench-1-web:frappe-bench-1-node-socketio: ERROR (spawn error)
frappe-bench-1-web:frappe-bench-1-frappe-web: started
ERROR: supervisorctl restart frappe-bench-1-workers: frappe-bench-1-web:
subprocess.CalledProcessError: Command 'supervisorctl restart frappe-bench-1-workers: frappe-bench-1-web:' returned non-zero exit status 7.

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "/home/frappe/.local/bin/bench", line 8, in <module>
    sys.exit(cli())
  File "/home/frappe/.local/lib/python3.10/site-packages/bench/cli.py", line 132, in cli
    bench_command()
  File "/home/frappe/.local/lib/python3.10/site-packages/bench/commands/utils.py", line 41, in restart
    Bench(".").reload(web, supervisor, systemd)
  File "/home/frappe/.local/lib/python3.10/site-packages/bench/utils/render.py", line 126, in wrapper_fn
    return fn(*args, **kwargs)
  File "/home/frappe/.local/lib/python3.10/site-packages/bench/bench.py", line 152, in reload    restart_supervisor_processes(bench_path=self.name, web_workers=web, _raise=_raise)
  File "/home/frappe/.local/lib/python3.10/site-packages/bench/utils/bench.py", line 321, in restart_supervisor_processes
    failure = bench.run(f"{sudo}supervisorctl restart {group}", _raise=_raise)
  File "/home/frappe/.local/lib/python3.10/site-packages/bench/bench.py", line 48, in run
    return exec_cmd(cmd, cwd=cwd or self.cwd, _raise=_raise)
  File "/home/frappe/.local/lib/python3.10/site-packages/bench/utils/__init__.py", line 158, in exec_cmd
    raise CommandFailedError(cmd) from subprocess.CalledProcessError(return_code, cmd)
bench.exceptions.CommandFailedError: supervisorctl restart frappe-bench-1-workers: frappe-bench-1-web:

frappe@exp:~/frappe-bench-1$ sudo supervisorctl status
frappe-bench-1-redis:frappe-bench-1-redis-cache                 RUNNING   pid 1872002, uptime 0:09:44
frappe-bench-1-redis:frappe-bench-1-redis-queue                 RUNNING   pid 1872003, uptime 0:09:44
frappe-bench-1-redis:frappe-bench-1-redis-socketio              RUNNING   pid 1872004, uptime 0:09:44
frappe-bench-1-web:frappe-bench-1-frappe-web                    RUNNING   pid 1872614, uptime 0:00:45
frappe-bench-1-web:frappe-bench-1-node-socketio                 FATAL     Exited too quickly (process log may have details)
frappe-bench-1-workers:frappe-bench-1-frappe-default-worker-0   RUNNING   pid 1872595, uptime 0:00:46
frappe-bench-1-workers:frappe-bench-1-frappe-long-worker-0      RUNNING   pid 1872597, uptime 0:00:46
frappe-bench-1-workers:frappe-bench-1-frappe-schedule           RUNNING   pid 1872594, uptime 0:00:46
frappe-bench-1-workers:frappe-bench-1-frappe-short-worker-0     RUNNING   pid 1872596, uptime 0:00:46
frappe@exp:~/frappe-bench-1$ sudo supervisorctl reload
Restarted supervisord
frappe@exp:~/frappe-bench-1$ sudo supervisorctl restart all
frappe-bench-1-web:frappe-bench-1-node-socketio: stopped
frappe-bench-1-redis:frappe-bench-1-redis-cache: stopped
frappe-bench-1-redis:frappe-bench-1-redis-queue: stopped
frappe-bench-1-redis:frappe-bench-1-redis-socketio: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-schedule: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-long-worker-0: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-short-worker-0: stopped
frappe-bench-1-workers:frappe-bench-1-frappe-default-worker-0: stopped
frappe-bench-1-web:frappe-bench-1-frappe-web: stopped
frappe-bench-1-redis:frappe-bench-1-redis-cache: started
frappe-bench-1-redis:frappe-bench-1-redis-queue: started
frappe-bench-1-redis:frappe-bench-1-redis-socketio: started
frappe-bench-1-web:frappe-bench-1-frappe-web: started
frappe-bench-1-web:frappe-bench-1-node-socketio: ERROR (spawn error)
frappe-bench-1-workers:frappe-bench-1-frappe-schedule: started
frappe-bench-1-workers:frappe-bench-1-frappe-default-worker-0: started
frappe-bench-1-workers:frappe-bench-1-frappe-short-worker-0: started
frappe-bench-1-workers:frappe-bench-1-frappe-long-worker-0: started
