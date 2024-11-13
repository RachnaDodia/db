Last login: Tue Nov 12 10:19:17 on ttys000
rdodia@rdodia-mac ~ % ssh student1@ansible-1.vfc8n.sandbox982.opentlc.com
The authenticity of host 'ansible-1.vfc8n.sandbox982.opentlc.com (3.132.18.214)' can't be established.
ED25519 key fingerprint is SHA256:260M8/3GnNiFpFOFRHqbIwOGoKjfJjsYEwj3+W4nbQw.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'ansible-1.vfc8n.sandbox982.opentlc.com' (ED25519) to the list of known hosts.
student1@ansible-1.vfc8n.sandbox982.opentlc.com's password: 
#### This workbench is for student1 ####
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@     ############     m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@     ################   m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@     #################    m@@@@@@@@@@@@       @@@@@@@@@@@@@@@@@@@@  @@@@   @@@@@   @@@@@@@@@@@@@@@@@@@
@@@@@@@@@     ##################     @@@@@@@@@@@   @@@   #@@@@@@@@@@@@@@@@@  @@@@   @@@@@   @@@@@@@@@@@   @@@@@
@@@     #####     @@###############     #m@@@@@@   @@@@   @       @@@        @@@@   @@@@@   @       @@       @@
@@     #######           ###########     m@@@@@@         @   @@@   @   @@@@  @@@@           @@@@@@   @@   @@@@@
@@@     #########               ########    #m@@   @@   @@     ....@   @@@@  @@@@   @@@@@   @   @@   @@   @@@@@
@@@@@     ###########@            #######    #m@   @@@   @@       @@@        @@@@   @@@@@   @        @@@    @@@
@@@@@@@     #########################    m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@     ####################     m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@     #############     m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#### This workbench is for student1 ####
- Public FQDN: student1.vfc8n.sandbox982.opentlc.com
— Local FQDN: ip-192-168-0-134.us-east-2.compute.internal
— Distro: RedHat 8.7 Ootpa
— Virtual: YES
— CPUs: 2
— RAM: 3.7GB
- Workshop Version 1.0.18
[student1@ansible-1 ~]$ ssh node1
Warning: Permanently added 'node1,192.168.0.52' (ECDSA) to the list of known hosts.
Last login: Tue Nov 12 07:31:09 2024 from 192.168.0.134
[ec2-user@node1 ~]$ sudo yum install pip
Updating Subscription Management repositories.
Red Hat Enterprise Linux 8 for x86_64 - BaseOS (RPMs)                                                                     126 kB/s | 4.1 kB     00:00    
Red Hat Ansible Engine 2 for RHEL 8 x86_64 (RPMs)                                                                         127 kB/s | 4.0 kB     00:00    
Red Hat Enterprise Linux 8 for x86_64 - AppStream (RPMs)                                                                  131 kB/s | 4.5 kB     00:00    
Red Hat Enterprise Linux 8 for x86_64 - Supplementary (RPMs)                                                              120 kB/s | 3.8 kB     00:00    
No match for argument: pip
Error: Unable to find a match: pip
[ec2-user@node1 ~]$ Error: Unable to find a match: pip
-bash: Error:: command not found
[ec2-user@node1 ~]$ yum --enablerepo=extras install epel-release
Not root, Subscription Management repositories not updated

This system is not registered with an entitlement server. You can use subscription-manager to register.

Error: Unknown repo: 'extras'
[ec2-user@node1 ~]$ subscription-manager register
You are attempting to run "subscription-manager" which requires administrative
privileges, but more information is needed in order to do so.
Authenticating as "root"
Password: 
Password: 

[1]+  Stopped                 subscription-manager register
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ subscription-manager register -u rdodia
You are attempting to run "subscription-manager" which requires administrative
privileges, but more information is needed in order to do so.
Authenticating as "root"
Password: 
Password: 




^Z
[2]+  Stopped                 subscription-manager register -u rdodia
[ec2-user@node1 ~]$ subscription-manager register --username rdodia --password @
You are attempting to run "subscription-manager" which requires administrative
privileges, but more information is needed in order to do so.
Authenticating as "root"
Password: 

[3]+  Stopped                 subscription-manager register --username rdodia --password @
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ sudo subscription-manager register --username rdodia --password @
This system is already registered. Use --force to override
[ec2-user@node1 ~]$ subscription-manager repos --list
You are attempting to run "subscription-manager" which requires administrative
privileges, but more information is needed in order to do so.
Authenticating as "root"
Password: 

[4]+  Stopped                 subscription-manager repos --list
[ec2-user@node1 ~]$ sudo subscription-manager repos --list
+----------------------------------------------------------+
    Available Repositories in /etc/yum.repos.d/redhat.repo
+----------------------------------------------------------+
Repo ID:   rhel-8-for-x86_64-baseos-rpms
Repo Name: Red Hat Enterprise Linux 8 for x86_64 - BaseOS (RPMs)
Repo URL:  https://demosat-ha.infra.demo.redhat.com/pulp/repos/Red_Hat_RHDP_Labs/Library/rhel81/content/dist/rhel8/$releasever/x86_64/baseos/os
Enabled:   1

Repo ID:   ansible-2-for-rhel-8-x86_64-rpms
Repo Name: Red Hat Ansible Engine 2 for RHEL 8 x86_64 (RPMs)
Repo URL:  https://demosat-ha.infra.demo.redhat.com/pulp/repos/Red_Hat_RHDP_Labs/Library/rhel81/content/dist/layered/rhel8/x86_64/ansible/2/os
Enabled:   1

Repo ID:   rhel-8-for-x86_64-supplementary-rpms
Repo Name: Red Hat Enterprise Linux 8 for x86_64 - Supplementary (RPMs)
Repo URL:  https://demosat-ha.infra.demo.redhat.com/pulp/repos/Red_Hat_RHDP_Labs/Library/rhel81/content/dist/rhel8/$releasever/x86_64/supplementary/os
Enabled:   1

Repo ID:   rhel-8-for-x86_64-appstream-rpms
Repo Name: Red Hat Enterprise Linux 8 for x86_64 - AppStream (RPMs)
Repo URL:  https://demosat-ha.infra.demo.redhat.com/pulp/repos/Red_Hat_RHDP_Labs/Library/rhel81/content/dist/rhel8/$releasever/x86_64/appstream/os
Enabled:   1

[ec2-user@node1 ~]$ sudo yum --enablerepo=extras install epel-release
Updating Subscription Management repositories.
Error: Unknown repo: 'extras'
[ec2-user@node1 ~]$ sudo yum install pip
Updating Subscription Management repositories.
Red Hat Enterprise Linux 8 for x86_64 - BaseOS (RPMs)                                                                     133 kB/s | 4.1 kB     00:00    
Red Hat Ansible Engine 2 for RHEL 8 x86_64 (RPMs)                                                                         136 kB/s | 4.0 kB     00:00    
Red Hat Enterprise Linux 8 for x86_64 - AppStream (RPMs)                                                                  136 kB/s | 4.5 kB     00:00    
Red Hat Enterprise Linux 8 for x86_64 - Supplementary (RPMs)                                                              127 kB/s | 3.8 kB     00:00    
No match for argument: pip
Error: Unable to find a match: pip
[ec2-user@node1 ~]$ python
Python 3.6.8 (default, Jan 11 2023, 08:43:50) 
[GCC 8.5.0 20210514 (Red Hat 8.5.0-16)] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> 
[5]+  Stopped                 python
[ec2-user@node1 ~]$ pip
-bash: pip: command not found
[ec2-user@node1 ~]$ pip3

Usage:   
  pip <command> [options]

Commands:
  install                     Install packages.
  download                    Download packages.
  uninstall                   Uninstall packages.
  freeze                      Output installed packages in requirements format.
  list                        List installed packages.
  show                        Show information about installed packages.
  check                       Verify installed packages have compatible dependencies.
  search                      Search PyPI for packages.
  wheel                       Build wheels from your requirements.
  hash                        Compute hashes of package archives.
  completion                  A helper command used for command completion.
  help                        Show help for commands.

General Options:
  -h, --help                  Show help.
  --isolated                  Run pip in an isolated mode, ignoring environment variables and user configuration.
  -v, --verbose               Give more output. Option is additive, and can be used up to 3 times.
  -V, --version               Show version and exit.
  -q, --quiet                 Give less output. Option is additive, and can be used up to 3 times (corresponding to WARNING, ERROR, and CRITICAL logging
                              levels).
  --log <path>                Path to a verbose appending log.
  --proxy <proxy>             Specify a proxy in the form [user:passwd@]proxy.server:port.
  --retries <retries>         Maximum number of retries each connection should attempt (default 5 times).
  --timeout <sec>             Set the socket timeout (default 15 seconds).
  --exists-action <action>    Default action when a path already exists: (s)witch, (i)gnore, (w)ipe, (b)ackup, (a)bort.
  --trusted-host <hostname>   Mark this host as trusted, even though it does not have valid or any HTTPS.
  --cert <path>               Path to alternate CA bundle.
  --client-cert <path>        Path to SSL client certificate, a single file containing the private key and the certificate in PEM format.
  --cache-dir <dir>           Store the cache data in <dir>.
  --no-cache-dir              Disable the cache.
  --disable-pip-version-check
                              Don't periodically check PyPI to determine whether a new version of pip is available for download. Implied with --no-
                              index.
[ec2-user@node1 ~]$ sudo dnf config-manager --set-enabled rhel-8-for-x86_64-appstream-rpms
Updating Subscription Management repositories.
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ sudo yum install pip
Updating Subscription Management repositories.
Red Hat Enterprise Linux 8 for x86_64 - BaseOS (RPMs)                                                                     131 kB/s | 4.1 kB     00:00    
Red Hat Ansible Engine 2 for RHEL 8 x86_64 (RPMs)                                                                         132 kB/s | 4.0 kB     00:00    
Red Hat Enterprise Linux 8 for x86_64 - AppStream (RPMs)                                                                  143 kB/s | 4.5 kB     00:00    
Red Hat Enterprise Linux 8 for x86_64 - Supplementary (RPMs)                                                              122 kB/s | 3.8 kB     00:00    
No match for argument: pip
Error: Unable to find a match: pip
[ec2-user@node1 ~]$ sudo pip3 install pymysql
WARNING: Running pip install with root privileges is generally not a good idea. Try `pip3 install --user` instead.
Collecting pymysql
  Downloading https://files.pythonhosted.org/packages/4f/52/a115fe175028b058df353c5a3d5290b71514a83f67078a6482cff24d6137/PyMySQL-1.0.2-py3-none-any.whl (43kB)
    100% |████████████████████████████████| 51kB 3.6MB/s 
Installing collected packages: pymysql
Successfully installed pymysql-1.0.2
[ec2-user@node1 ~]$ sudo pip3 install mysqldump
WARNING: Running pip install with root privileges is generally not a good idea. Try `pip3 install --user` instead.
Collecting mysqldump
  Downloading https://files.pythonhosted.org/packages/e8/34/368bee5ac8ccf8c88d2a1a4383d49c7067d41247bd2d34a3714d97900988/mysqldump-0.0.10.tar.gz
Collecting django>=3.0 (from mysqldump)
  Downloading https://files.pythonhosted.org/packages/30/8e/cc23c762c5dcd1d367d73cf006a326e0df2bd0e785cba18b658b39904c1e/Django-3.2.25-py3-none-any.whl (7.9MB)
    100% |████████████████████████████████| 7.9MB 141kB/s 
Requirement already satisfied: pytz in /usr/lib/python3.6/site-packages (from django>=3.0->mysqldump)
Collecting sqlparse>=0.2.2 (from django>=3.0->mysqldump)
  Downloading https://files.pythonhosted.org/packages/98/5a/66d7c9305baa9f11857f247d4ba761402cea75db6058ff850ed7128957b7/sqlparse-0.4.4-py3-none-any.whl (41kB)
    100% |████████████████████████████████| 51kB 6.7MB/s 
Collecting asgiref<4,>=3.3.2 (from django>=3.0->mysqldump)
  Downloading https://files.pythonhosted.org/packages/fe/66/577f32b54c50dcd8dec38447258e82ed327ecb86820d67ae7b3dea784f13/asgiref-3.4.1-py3-none-any.whl
Collecting typing-extensions; python_version < "3.8" (from asgiref<4,>=3.3.2->django>=3.0->mysqldump)
  Downloading https://files.pythonhosted.org/packages/45/6b/44f7f8f1e110027cf88956b59f2fad776cca7e1704396d043f89effd3a0e/typing_extensions-4.1.1-py3-none-any.whl
Installing collected packages: sqlparse, typing-extensions, asgiref, django, mysqldump
  Running setup.py install for mysqldump ... done
Successfully installed asgiref-3.4.1 django-3.2.25 mysqldump-0.0.10 sqlparse-0.4.4 typing-extensions-4.1.1
[ec2-user@node1 ~]$ sudo pip3 install PyMySQL
WARNING: Running pip install with root privileges is generally not a good idea. Try `pip3 install --user` instead.
Requirement already satisfied: PyMySQL in /usr/local/lib64/python3.6/site-packages
[ec2-user@node1 ~]$ vi /root/.my.cnf

[6]+  Stopped                 vim /root/.my.cnf
[ec2-user@node1 ~]$ sudo vi /root/.my.cnf
[ec2-user@node1 ~]$ sudo systemctl restart mysqld
Failed to restart mysqld.service: Unit mysqld.service not found.
[ec2-user@node1 ~]$ cat /root/.my.cnf
cat: /root/.my.cnf: Permission denied
[ec2-user@node1 ~]$ sudo cat /root/.my.cnf
[client]
user = test
password = 123
[ec2-user@node1 ~]$ sudo systemctl status mysqld
Unit mysqld.service could not be found.
[ec2-user@node1 ~]$ sudo yum install mysqld
Updating Subscription Management repositories.
Red Hat Enterprise Linux 8 for x86_64 - BaseOS (RPMs)                                                                     130 kB/s | 4.1 kB     00:00    
Red Hat Ansible Engine 2 for RHEL 8 x86_64 (RPMs)                                                                         128 kB/s | 4.0 kB     00:00    
Red Hat Enterprise Linux 8 for x86_64 - AppStream (RPMs)                                                                  151 kB/s | 4.5 kB     00:00    
Red Hat Enterprise Linux 8 for x86_64 - Supplementary (RPMs)                                                               84 kB/s | 3.8 kB     00:00    
No match for argument: mysqld
Error: Unable to find a match: mysqld
[ec2-user@node1 ~]$ sudo vi /etc/my.cnf 
[ec2-user@node1 ~]$ sudo vi /etc/my.cnf.d/mysql-server.cnf

[7]+  Stopped                 sudo vi /etc/my.cnf.d/mysql-server.cnf
[ec2-user@node1 ~]$ mysql -u your_mysql_user -p -h localhost
-bash: mysql: command not found
[ec2-user@node1 ~]$ pip3 mysql
ERROR: unknown command "mysql"
[ec2-user@node1 ~]$ pip install mysql
-bash: pip: command not found
[ec2-user@node1 ~]$ pip3 install mysql
Collecting mysql
  Downloading https://files.pythonhosted.org/packages/9a/52/8d29c58f6ae448a72fbc612955bd31accb930ca479a7ba7197f4ae4edec2/mysql-0.0.3-py3-none-any.whl
Collecting mysqlclient (from mysql)
  Downloading https://files.pythonhosted.org/packages/50/5f/eac919b88b9df39bbe4a855f136d58f80d191cfea34a3dcf96bf5d8ace0a/mysqlclient-2.1.1.tar.gz (88kB)
    100% |████████████████████████████████| 92kB 3.7MB/s 
    Complete output from command python setup.py egg_info:
    /bin/sh: mysql_config: command not found
    /bin/sh: mariadb_config: command not found
    /bin/sh: mysql_config: command not found
    mysql_config --version
    mariadb_config --version
    mysql_config --libs
    Traceback (most recent call last):
      File "<string>", line 1, in <module>
      File "/tmp/pip-build-hs38oom8/mysqlclient/setup.py", line 15, in <module>
        metadata, options = get_config()
      File "/tmp/pip-build-hs38oom8/mysqlclient/setup_posix.py", line 70, in get_config
        libs = mysql_config("libs")
      File "/tmp/pip-build-hs38oom8/mysqlclient/setup_posix.py", line 31, in mysql_config
        raise OSError("{} not found".format(_mysql_config_path))
    OSError: mysql_config not found
    
    ----------------------------------------
Command "python setup.py egg_info" failed with error code 1 in /tmp/pip-build-hs38oom8/mysqlclient/
[ec2-user@node1 ~]$ sudo pip3 install mysql
WARNING: Running pip install with root privileges is generally not a good idea. Try `pip3 install --user` instead.
Collecting mysql
  Downloading https://files.pythonhosted.org/packages/9a/52/8d29c58f6ae448a72fbc612955bd31accb930ca479a7ba7197f4ae4edec2/mysql-0.0.3-py3-none-any.whl
Collecting mysqlclient (from mysql)
  Downloading https://files.pythonhosted.org/packages/50/5f/eac919b88b9df39bbe4a855f136d58f80d191cfea34a3dcf96bf5d8ace0a/mysqlclient-2.1.1.tar.gz (88kB)
    100% |████████████████████████████████| 92kB 3.8MB/s 
    Complete output from command python setup.py egg_info:
    /bin/sh: mysql_config: command not found
    /bin/sh: mariadb_config: command not found
    /bin/sh: mysql_config: command not found
    mysql_config --version
    mariadb_config --version
    mysql_config --libs
    Traceback (most recent call last):
      File "<string>", line 1, in <module>
      File "/tmp/pip-build-qivb1j9o/mysqlclient/setup.py", line 15, in <module>
        metadata, options = get_config()
      File "/tmp/pip-build-qivb1j9o/mysqlclient/setup_posix.py", line 70, in get_config
        libs = mysql_config("libs")
      File "/tmp/pip-build-qivb1j9o/mysqlclient/setup_posix.py", line 31, in mysql_config
        raise OSError("{} not found".format(_mysql_config_path))
    OSError: mysql_config not found
    
    ----------------------------------------
Command "python setup.py egg_info" failed with error code 1 in /tmp/pip-build-qivb1j9o/mysqlclient/
[ec2-user@node1 ~]$ sudo dnf groupinstall "Development Tools" -y
Updating Subscription Management repositories.
Red Hat Enterprise Linux 8 for x86_64 - BaseOS (RPMs)                                                                     125 kB/s | 4.1 kB     00:00    
Red Hat Ansible Engine 2 for RHEL 8 x86_64 (RPMs)                                                                         109 kB/s | 4.0 kB     00:00    
Red Hat Enterprise Linux 8 for x86_64 - AppStream (RPMs)                                                                  141 kB/s | 4.5 kB     00:00    
Red Hat Enterprise Linux 8 for x86_64 - Supplementary (RPMs)                                                               93 kB/s | 3.8 kB     00:00    
Dependencies resolved.
==========================================================================================================================================================
 Package                                       Architecture    Version                                    Repository                                 Size
==========================================================================================================================================================
Upgrading:
 elfutils-debuginfod-client                    x86_64          0.188-3.el8                                rhel-8-for-x86_64-baseos-rpms              75 k
 elfutils-libelf                               x86_64          0.188-3.el8                                rhel-8-for-x86_64-baseos-rpms             231 k
 elfutils-libs                                 x86_64          0.188-3.el8                                rhel-8-for-x86_64-baseos-rpms             299 k
 glibc                                         x86_64          2.28-225.el8                               rhel-8-for-x86_64-baseos-rpms             2.2 M
 glibc-common                                  x86_64          2.28-225.el8                               rhel-8-for-x86_64-baseos-rpms             1.0 M
 glibc-gconv-extra                             x86_64          2.28-225.el8                               rhel-8-for-x86_64-baseos-rpms             1.5 M
 glibc-langpack-en                             x86_64          2.28-225.el8                               rhel-8-for-x86_64-baseos-rpms             827 k
 libgcc                                        x86_64          8.5.0-18.el8                               rhel-8-for-x86_64-baseos-rpms              81 k
 libgomp                                       x86_64          8.5.0-18.el8                               rhel-8-for-x86_64-baseos-rpms             208 k
 libstdc++                                     x86_64          8.5.0-18.el8                               rhel-8-for-x86_64-baseos-rpms             455 k
 python3-rpm                                   x86_64          4.14.3-26.el8                              rhel-8-for-x86_64-baseos-rpms             155 k
 rpm                                           x86_64          4.14.3-26.el8                              rhel-8-for-x86_64-baseos-rpms             544 k
 rpm-build-libs                                x86_64          4.14.3-26.el8                              rhel-8-for-x86_64-baseos-rpms             157 k
 rpm-libs                                      x86_64          4.14.3-26.el8                              rhel-8-for-x86_64-baseos-rpms             345 k
 rpm-plugin-selinux                            x86_64          4.14.3-26.el8                              rhel-8-for-x86_64-baseos-rpms              78 k
 rpm-plugin-systemd-inhibit                    x86_64          4.14.3-26.el8                              rhel-8-for-x86_64-baseos-rpms              79 k
Installing group/module packages:
 asciidoc                                      noarch          8.6.10-0.5.20180627gitf7c2274.el8          rhel-8-for-x86_64-appstream-rpms          216 k
 autoconf                                      noarch          2.69-29.el8                                rhel-8-for-x86_64-appstream-rpms          711 k
 automake                                      noarch          1.16.1-7.el8                               rhel-8-for-x86_64-appstream-rpms          713 k
 binutils                                      x86_64          2.30-119.el8                               rhel-8-for-x86_64-baseos-rpms             5.8 M
 bison                                         x86_64          3.0.4-10.el8                               rhel-8-for-x86_64-appstream-rpms          688 k
 byacc                                         x86_64          1.9.20170709-4.el8                         rhel-8-for-x86_64-appstream-rpms           91 k
 ctags                                         x86_64          5.8-23.el8                                 rhel-8-for-x86_64-appstream-rpms          170 k
 diffstat                                      x86_64          1.61-7.el8                                 rhel-8-for-x86_64-appstream-rpms           44 k
 elfutils-libelf-devel                         x86_64          0.188-3.el8                                rhel-8-for-x86_64-baseos-rpms              61 k
 flex                                          x86_64          2.6.1-9.el8                                rhel-8-for-x86_64-appstream-rpms          320 k
 gcc                                           x86_64          8.5.0-18.el8                               rhel-8-for-x86_64-appstream-rpms           23 M
 gcc-c++                                       x86_64          8.5.0-18.el8                               rhel-8-for-x86_64-appstream-rpms           12 M
 gdb                                           x86_64          8.2-19.el8                                 rhel-8-for-x86_64-appstream-rpms          299 k
 glibc-devel                                   x86_64          2.28-225.el8                               rhel-8-for-x86_64-baseos-rpms              83 k
 intltool                                      noarch          0.51.0-11.el8                              rhel-8-for-x86_64-appstream-rpms           66 k
 jna                                           x86_64          4.5.1-5.el8                                rhel-8-for-x86_64-appstream-rpms          242 k
 libtool                                       x86_64          2.4.6-25.el8                               rhel-8-for-x86_64-appstream-rpms          709 k
 ltrace                                        x86_64          0.7.91-28.el8                              rhel-8-for-x86_64-appstream-rpms          160 k
 make                                          x86_64          1:4.2.1-11.el8                             rhel-8-for-x86_64-baseos-rpms             498 k
 patchutils                                    x86_64          0.3.4-10.el8                               rhel-8-for-x86_64-appstream-rpms          115 k
 perl-Fedora-VSP                               noarch          0.001-9.el8                                rhel-8-for-x86_64-appstream-rpms           25 k
 perl-Sys-Syslog                               x86_64          0.35-397.el8                               rhel-8-for-x86_64-appstream-rpms           50 k
 perl-generators                               noarch          1.10-9.el8                                 rhel-8-for-x86_64-appstream-rpms           18 k
 pesign                                        x86_64          0.112-27.el8_7                             rhel-8-for-x86_64-appstream-rpms          180 k
 redhat-rpm-config                             noarch          131-1.el8                                  rhel-8-for-x86_64-appstream-rpms           91 k
 rpm-build                                     x86_64          4.14.3-26.el8                              rhel-8-for-x86_64-appstream-rpms          174 k
 rpm-sign                                      x86_64          4.14.3-26.el8                              rhel-8-for-x86_64-baseos-rpms              81 k
 source-highlight                              x86_64          3.1.8-17.el8                               rhel-8-for-x86_64-appstream-rpms          660 k
 strace                                        x86_64          5.18-2.el8                                 rhel-8-for-x86_64-baseos-rpms             1.4 M
 systemtap                                     x86_64          4.8-2.el8                                  rhel-8-for-x86_64-appstream-rpms           21 k
 valgrind                                      x86_64          1:3.19.0-1.el8                             rhel-8-for-x86_64-appstream-rpms           11 M
 valgrind-devel                                x86_64          1:3.19.0-1.el8                             rhel-8-for-x86_64-appstream-rpms           94 k
Installing dependencies:
 adobe-mappings-cmap                           noarch          20171205-3.el8                             rhel-8-for-x86_64-appstream-rpms          2.1 M
 adobe-mappings-cmap-deprecated                noarch          20171205-3.el8                             rhel-8-for-x86_64-appstream-rpms          119 k
 adobe-mappings-pdf                            noarch          20180407-1.el8                             rhel-8-for-x86_64-appstream-rpms          707 k
 annobin                                       x86_64          10.94-1.el8                                rhel-8-for-x86_64-appstream-rpms          965 k
 atk                                           x86_64          2.28.1-1.el8                               rhel-8-for-x86_64-appstream-rpms          272 k
 avahi-libs                                    x86_64          0.7-20.el8                                 rhel-8-for-x86_64-baseos-rpms              62 k
 boost-atomic                                  x86_64          1.66.0-13.el8                              rhel-8-for-x86_64-appstream-rpms           14 k
 boost-chrono                                  x86_64          1.66.0-13.el8                              rhel-8-for-x86_64-appstream-rpms           23 k
 boost-date-time                               x86_64          1.66.0-13.el8                              rhel-8-for-x86_64-appstream-rpms           30 k
 boost-filesystem                              x86_64          1.66.0-13.el8                              rhel-8-for-x86_64-appstream-rpms           49 k
 boost-regex                                   x86_64          1.66.0-13.el8                              rhel-8-for-x86_64-appstream-rpms          281 k
 boost-system                                  x86_64          1.66.0-13.el8                              rhel-8-for-x86_64-appstream-rpms           18 k
 boost-thread                                  x86_64          1.66.0-13.el8                              rhel-8-for-x86_64-appstream-rpms           59 k
 boost-timer                                   x86_64          1.66.0-13.el8                              rhel-8-for-x86_64-appstream-rpms           21 k
 bzip2                                         x86_64          1.0.6-26.el8                               rhel-8-for-x86_64-baseos-rpms              60 k
 cairo                                         x86_64          1.15.12-6.el8                              rhel-8-for-x86_64-appstream-rpms          719 k
 copy-jdk-configs                              noarch          4.0-2.el8                                  rhel-8-for-x86_64-appstream-rpms           31 k
 cpp                                           x86_64          8.5.0-18.el8                               rhel-8-for-x86_64-appstream-rpms           10 M
 cups-libs                                     x86_64          1:2.2.6-51.el8_8.2                         rhel-8-for-x86_64-baseos-rpms             435 k
 docbook-dtds                                  noarch          1.0-69.el8                                 rhel-8-for-x86_64-appstream-rpms          377 k
 docbook-style-xsl                             noarch          1.79.2-9.el8                               rhel-8-for-x86_64-appstream-rpms          1.6 M
 dwz                                           x86_64          0.12-10.el8                                rhel-8-for-x86_64-appstream-rpms          109 k
 dyninst                                       x86_64          12.1.0-1.el8                               rhel-8-for-x86_64-appstream-rpms          4.1 M
 efi-srpm-macros                               noarch          3-3.el8                                    rhel-8-for-x86_64-appstream-rpms           22 k
 efivar-libs                                   x86_64          37-4.el8                                   rhel-8-for-x86_64-baseos-rpms             108 k
 elfutils                                      x86_64          0.188-3.el8                                rhel-8-for-x86_64-baseos-rpms             544 k
 elfutils-devel                                x86_64          0.188-3.el8                                rhel-8-for-x86_64-baseos-rpms              90 k
 fontconfig                                    x86_64          2.13.1-4.el8                               rhel-8-for-x86_64-baseos-rpms             274 k
 fontpackages-filesystem                       noarch          1.44-22.el8                                rhel-8-for-x86_64-baseos-rpms              16 k
 fribidi                                       x86_64          1.0.4-9.el8                                rhel-8-for-x86_64-appstream-rpms           89 k
 gc                                            x86_64          7.6.4-3.el8                                rhel-8-for-x86_64-appstream-rpms          109 k
 gcc-plugin-annobin                            x86_64          8.5.0-18.el8                               rhel-8-for-x86_64-appstream-rpms           35 k
 gd                                            x86_64          2.2.5-7.el8                                rhel-8-for-x86_64-appstream-rpms          144 k
 gdb-headless                                  x86_64          8.2-19.el8                                 rhel-8-for-x86_64-appstream-rpms          3.7 M
 gdk-pixbuf2                                   x86_64          2.36.12-5.el8                              rhel-8-for-x86_64-baseos-rpms             467 k
 gdk-pixbuf2-modules                           x86_64          2.36.12-5.el8                              rhel-8-for-x86_64-appstream-rpms          109 k
 gettext-common-devel                          noarch          0.19.8.1-17.el8                            rhel-8-for-x86_64-baseos-rpms             419 k
 gettext-devel                                 x86_64          0.19.8.1-17.el8                            rhel-8-for-x86_64-baseos-rpms             331 k
 ghc-srpm-macros                               noarch          1.4.2-7.el8                                rhel-8-for-x86_64-appstream-rpms          9.4 k
 glibc-headers                                 x86_64          2.28-225.el8                               rhel-8-for-x86_64-baseos-rpms             488 k
 go-srpm-macros                                noarch          2-17.el8                                   rhel-8-for-x86_64-appstream-rpms           13 k
 google-droid-sans-fonts                       noarch          20120715-13.el8                            rhel-8-for-x86_64-appstream-rpms          2.5 M
 graphite2                                     x86_64          1.3.10-10.el8                              rhel-8-for-x86_64-appstream-rpms          122 k
 graphviz                                      x86_64          2.40.1-44.el8                              rhel-8-for-x86_64-appstream-rpms          1.8 M
 gtk-update-icon-cache                         x86_64          3.22.30-11.el8                             rhel-8-for-x86_64-appstream-rpms           33 k
 gtk2                                          x86_64          2.24.32-5.el8                              rhel-8-for-x86_64-appstream-rpms          3.4 M
 guile                                         x86_64          5:2.0.14-7.el8                             rhel-8-for-x86_64-appstream-rpms          3.5 M
 harfbuzz                                      x86_64          1.7.5-3.el8                                rhel-8-for-x86_64-appstream-rpms          294 k
 hicolor-icon-theme                            noarch          0.17-2.el8                                 rhel-8-for-x86_64-appstream-rpms           48 k
 isl                                           x86_64          0.16.1-6.el8                               rhel-8-for-x86_64-appstream-rpms          841 k
 jasper-libs                                   x86_64          2.0.14-5.el8                               rhel-8-for-x86_64-appstream-rpms          167 k
 java-1.8.0-openjdk-headless                   x86_64          1:1.8.0.382.b05-2.el8                      rhel-8-for-x86_64-appstream-rpms           34 M
 javapackages-filesystem                       noarch          5.3.0-1.module+el8+2447+6f56d9a6           rhel-8-for-x86_64-appstream-rpms           30 k
 jbig2dec-libs                                 x86_64          0.16-1.el8                                 rhel-8-for-x86_64-appstream-rpms           72 k
 jbigkit-libs                                  x86_64          2.1-14.el8                                 rhel-8-for-x86_64-appstream-rpms           55 k
 kernel-headers                                x86_64          4.18.0-477.27.1.el8_8                      rhel-8-for-x86_64-baseos-rpms              11 M
 keyutils-libs-devel                           x86_64          1.5.10-9.el8                               rhel-8-for-x86_64-baseos-rpms              48 k
 krb5-devel                                    x86_64          1.18.2-22.el8_7                            rhel-8-for-x86_64-baseos-rpms             561 k
 lcms2                                         x86_64          2.9-2.el8                                  rhel-8-for-x86_64-appstream-rpms          165 k
 libICE                                        x86_64          1.0.9-15.el8                               rhel-8-for-x86_64-appstream-rpms           74 k
 libSM                                         x86_64          1.2.3-1.el8                                rhel-8-for-x86_64-appstream-rpms           48 k
 libX11                                        x86_64          1.6.8-5.el8                                rhel-8-for-x86_64-appstream-rpms          611 k
 libX11-common                                 noarch          1.6.8-5.el8                                rhel-8-for-x86_64-appstream-rpms          158 k
 libXau                                        x86_64          1.0.9-3.el8                                rhel-8-for-x86_64-appstream-rpms           37 k
 libXaw                                        x86_64          1.0.13-10.el8                              rhel-8-for-x86_64-appstream-rpms          194 k
 libXcomposite                                 x86_64          0.4.4-14.el8                               rhel-8-for-x86_64-appstream-rpms           29 k
 libXcursor                                    x86_64          1.1.15-3.el8                               rhel-8-for-x86_64-appstream-rpms           36 k
 libXdamage                                    x86_64          1.1.4-14.el8                               rhel-8-for-x86_64-appstream-rpms           27 k
 libXext                                       x86_64          1.3.4-1.el8                                rhel-8-for-x86_64-appstream-rpms           45 k
 libXfixes                                     x86_64          5.0.3-7.el8                                rhel-8-for-x86_64-appstream-rpms           25 k
 libXft                                        x86_64          2.3.3-1.el8                                rhel-8-for-x86_64-appstream-rpms           67 k
 libXi                                         x86_64          1.7.10-1.el8                               rhel-8-for-x86_64-appstream-rpms           49 k
 libXinerama                                   x86_64          1.1.4-1.el8                                rhel-8-for-x86_64-appstream-rpms           16 k
 libXmu                                        x86_64          1.1.3-1.el8                                rhel-8-for-x86_64-appstream-rpms           75 k
 libXpm                                        x86_64          3.5.12-9.el8_7                             rhel-8-for-x86_64-appstream-rpms           58 k
 libXrandr                                     x86_64          1.5.2-1.el8                                rhel-8-for-x86_64-appstream-rpms           34 k
 libXrender                                    x86_64          0.9.10-7.el8                               rhel-8-for-x86_64-appstream-rpms           33 k
 libXt                                         x86_64          1.1.5-12.el8                               rhel-8-for-x86_64-appstream-rpms          185 k
 libXxf86misc                                  x86_64          1.0.4-1.el8                                rhel-8-for-x86_64-appstream-rpms           23 k
 libXxf86vm                                    x86_64          1.1.4-9.el8                                rhel-8-for-x86_64-appstream-rpms           19 k
 libatomic_ops                                 x86_64          7.6.2-3.el8                                rhel-8-for-x86_64-appstream-rpms           38 k
 libbabeltrace                                 x86_64          1.5.4-4.el8                                rhel-8-for-x86_64-baseos-rpms             200 k
 libcom_err-devel                              x86_64          1.45.6-5.el8                               rhel-8-for-x86_64-baseos-rpms              39 k
 libdatrie                                     x86_64          0.2.9-7.el8                                rhel-8-for-x86_64-appstream-rpms           33 k
 libfontenc                                    x86_64          1.1.3-8.el8                                rhel-8-for-x86_64-appstream-rpms           37 k
 libgs                                         x86_64          9.27-6.el8                                 rhel-8-for-x86_64-appstream-rpms          3.1 M
 libicu                                        x86_64          60.3-2.el8_1                               rhel-8-for-x86_64-baseos-rpms             8.8 M
 libidn                                        x86_64          1.34-5.el8                                 rhel-8-for-x86_64-appstream-rpms          239 k
 libijs                                        x86_64          0.35-5.el8                                 rhel-8-for-x86_64-appstream-rpms           30 k
 libipt                                        x86_64          1.6.1-8.el8                                rhel-8-for-x86_64-appstream-rpms           50 k
 libjpeg-turbo                                 x86_64          1.5.3-12.el8                               rhel-8-for-x86_64-appstream-rpms          157 k
 libkadm5                                      x86_64          1.18.2-22.el8_7                            rhel-8-for-x86_64-baseos-rpms             187 k
 libmcpp                                       x86_64          2.7.2-20.el8                               rhel-8-for-x86_64-appstream-rpms           81 k
 libmpc                                        x86_64          1.1.0-9.1.el8                              rhel-8-for-x86_64-appstream-rpms           61 k
 libpaper                                      x86_64          1.1.24-22.el8                              rhel-8-for-x86_64-appstream-rpms           45 k
 librsvg2                                      x86_64          2.42.7-4.el8                               rhel-8-for-x86_64-appstream-rpms          555 k
 libselinux-devel                              x86_64          2.9-6.el8                                  rhel-8-for-x86_64-baseos-rpms             200 k
 libsepol-devel                                x86_64          2.9-3.el8                                  rhel-8-for-x86_64-baseos-rpms              87 k
 libstdc++-devel                               x86_64          8.5.0-18.el8                               rhel-8-for-x86_64-appstream-rpms          2.1 M
 libthai                                       x86_64          0.1.27-2.el8                               rhel-8-for-x86_64-appstream-rpms          203 k
 libtiff                                       x86_64          4.0.9-28.el8_8                             rhel-8-for-x86_64-appstream-rpms          189 k
 libtool-ltdl                                  x86_64          2.4.6-25.el8                               rhel-8-for-x86_64-baseos-rpms              58 k
 libverto-devel                                x86_64          0.3.2-2.el8                                rhel-8-for-x86_64-baseos-rpms              18 k
 libwebp                                       x86_64          1.0.0-8.el8_8.1                            rhel-8-for-x86_64-appstream-rpms          274 k
 libxcb                                        x86_64          1.13.1-1.el8                               rhel-8-for-x86_64-appstream-rpms          229 k
 libxcrypt-devel                               x86_64          4.1.1-6.el8                                rhel-8-for-x86_64-baseos-rpms              25 k
 libxslt                                       x86_64          1.1.32-6.el8                               rhel-8-for-x86_64-baseos-rpms             250 k
 libzstd-devel                                 x86_64          1.4.4-1.el8                                rhel-8-for-x86_64-baseos-rpms              44 k
 lksctp-tools                                  x86_64          1.0.18-3.el8                               rhel-8-for-x86_64-baseos-rpms             100 k
 lua                                           x86_64          5.3.4-12.el8                               rhel-8-for-x86_64-appstream-rpms          192 k
 m4                                            x86_64          1.4.18-7.el8                               rhel-8-for-x86_64-baseos-rpms             223 k
 mcpp                                          x86_64          2.7.2-20.el8                               rhel-8-for-x86_64-appstream-rpms           31 k
 mokutil                                       x86_64          1:0.3.0-12.el8                             rhel-8-for-x86_64-baseos-rpms              46 k
 nspr                                          x86_64          4.35.0-1.el8_8                             rhel-8-for-x86_64-appstream-rpms          143 k
 nss                                           x86_64          3.90.0-3.el8_8                             rhel-8-for-x86_64-appstream-rpms          750 k
 nss-softokn                                   x86_64          3.90.0-3.el8_8                             rhel-8-for-x86_64-appstream-rpms          1.2 M
 nss-softokn-freebl                            x86_64          3.90.0-3.el8_8                             rhel-8-for-x86_64-appstream-rpms          389 k
 nss-sysinit                                   x86_64          3.90.0-3.el8_8                             rhel-8-for-x86_64-appstream-rpms           75 k
 nss-tools                                     x86_64          3.90.0-3.el8_8                             rhel-8-for-x86_64-appstream-rpms          583 k
 nss-util                                      x86_64          3.90.0-3.el8_8                             rhel-8-for-x86_64-appstream-rpms          139 k
 ocaml-srpm-macros                             noarch          5-4.el8                                    rhel-8-for-x86_64-appstream-rpms          9.5 k
 openblas-srpm-macros                          noarch          2-2.el8                                    rhel-8-for-x86_64-appstream-rpms          8.0 k
 openjpeg2                                     x86_64          2.4.0-5.el8                                rhel-8-for-x86_64-appstream-rpms          165 k
 pango                                         x86_64          1.42.4-8.el8                               rhel-8-for-x86_64-appstream-rpms          297 k
 patch                                         x86_64          2.7.6-11.el8                               rhel-8-for-x86_64-baseos-rpms             138 k
 pcre2-devel                                   x86_64          10.32-3.el8_6                              rhel-8-for-x86_64-baseos-rpms             605 k
 pcre2-utf16                                   x86_64          10.32-3.el8_6                              rhel-8-for-x86_64-baseos-rpms             229 k
 pcre2-utf32                                   x86_64          10.32-3.el8_6                              rhel-8-for-x86_64-baseos-rpms             220 k
 perl-Thread-Queue                             noarch          3.13-1.el8                                 rhel-8-for-x86_64-appstream-rpms           24 k
 perl-XML-Parser                               x86_64          2.44-11.el8                                rhel-8-for-x86_64-appstream-rpms          226 k
 perl-srpm-macros                              noarch          1-25.el8                                   rhel-8-for-x86_64-appstream-rpms           11 k
 pixman                                        x86_64          0.38.4-2.el8                               rhel-8-for-x86_64-appstream-rpms          257 k
 python-rpm-macros                             noarch          3-45.el8                                   rhel-8-for-x86_64-appstream-rpms           16 k
 python-srpm-macros                            noarch          3-45.el8                                   rhel-8-for-x86_64-appstream-rpms           16 k
 python3-rpm-macros                            noarch          3-45.el8                                   rhel-8-for-x86_64-appstream-rpms           15 k
 qt5-srpm-macros                               noarch          5.15.3-1.el8                               rhel-8-for-x86_64-appstream-rpms           11 k
 rust-srpm-macros                              noarch          5-2.el8                                    rhel-8-for-x86_64-appstream-rpms          9.3 k
 sgml-common                                   noarch          0.6.3-50.el8                               rhel-8-for-x86_64-baseos-rpms              62 k
 systemtap-client                              x86_64          4.8-2.el8                                  rhel-8-for-x86_64-appstream-rpms          3.8 M
 systemtap-devel                               x86_64          4.8-2.el8                                  rhel-8-for-x86_64-appstream-rpms          2.4 M
 systemtap-runtime                             x86_64          4.8-2.el8                                  rhel-8-for-x86_64-appstream-rpms          543 k
 tbb                                           x86_64          2018.2-9.el8                               rhel-8-for-x86_64-appstream-rpms          160 k
 tzdata-java                                   noarch          2023c-1.el8                                rhel-8-for-x86_64-appstream-rpms          187 k
 urw-base35-bookman-fonts                      noarch          20170801-10.el8                            rhel-8-for-x86_64-appstream-rpms          857 k
 urw-base35-c059-fonts                         noarch          20170801-10.el8                            rhel-8-for-x86_64-appstream-rpms          884 k
 urw-base35-d050000l-fonts                     noarch          20170801-10.el8                            rhel-8-for-x86_64-appstream-rpms           79 k
 urw-base35-fonts                              noarch          20170801-10.el8                            rhel-8-for-x86_64-appstream-rpms           12 k
 urw-base35-fonts-common                       noarch          20170801-10.el8                            rhel-8-for-x86_64-appstream-rpms           23 k
 urw-base35-gothic-fonts                       noarch          20170801-10.el8                            rhel-8-for-x86_64-appstream-rpms          654 k
 urw-base35-nimbus-mono-ps-fonts               noarch          20170801-10.el8                            rhel-8-for-x86_64-appstream-rpms          801 k
 urw-base35-nimbus-roman-fonts                 noarch          20170801-10.el8                            rhel-8-for-x86_64-appstream-rpms          865 k
 urw-base35-nimbus-sans-fonts                  noarch          20170801-10.el8                            rhel-8-for-x86_64-appstream-rpms          1.3 M
 urw-base35-p052-fonts                         noarch          20170801-10.el8                            rhel-8-for-x86_64-appstream-rpms          982 k
 urw-base35-standard-symbols-ps-fonts          noarch          20170801-10.el8                            rhel-8-for-x86_64-appstream-rpms           44 k
 urw-base35-z003-fonts                         noarch          20170801-10.el8                            rhel-8-for-x86_64-appstream-rpms          279 k
 xml-common                                    noarch          0.6.3-50.el8                               rhel-8-for-x86_64-baseos-rpms              39 k
 xorg-x11-font-utils                           x86_64          1:7.5-41.el8                               rhel-8-for-x86_64-appstream-rpms          104 k
 xorg-x11-fonts-ISO8859-1-100dpi               noarch          7.5-19.el8                                 rhel-8-for-x86_64-appstream-rpms          1.1 M
 xorg-x11-server-utils                         x86_64          7.7-27.el8                                 rhel-8-for-x86_64-appstream-rpms          197 k
 xz-devel                                      x86_64          5.2.4-4.el8_6                              rhel-8-for-x86_64-baseos-rpms              63 k
 zip                                           x86_64          3.0-23.el8                                 rhel-8-for-x86_64-baseos-rpms             270 k
 zlib-devel                                    x86_64          1.2.11-21.el8_7                            rhel-8-for-x86_64-baseos-rpms              58 k
 zstd                                          x86_64          1.4.4-1.el8                                rhel-8-for-x86_64-appstream-rpms          393 k
Installing weak dependencies:
 elfutils-debuginfod-client-devel              x86_64          0.188-3.el8                                rhel-8-for-x86_64-baseos-rpms              59 k
 gcc-gdb-plugin                                x86_64          8.5.0-18.el8                               rhel-8-for-x86_64-appstream-rpms          120 k
 kernel-devel                                  x86_64          4.18.0-477.27.1.el8_8                      rhel-8-for-x86_64-baseos-rpms              23 M
 openssl-devel                                 x86_64          1:1.1.1k-9.el8_7                           rhel-8-for-x86_64-baseos-rpms             2.3 M
Enabling module streams:
 javapackages-runtime                                          201801                                                                                    
Installing Groups:
 Development Tools                                                                                                                                       

Transaction Summary
==========================================================================================================================================================
Install  199 Packages
Upgrade   16 Packages

Total download size: 223 M
Downloading Packages:
(1/215): lksctp-tools-1.0.18-3.el8.x86_64.rpm                                                                             2.0 MB/s | 100 kB     00:00    
(2/215): zip-3.0-23.el8.x86_64.rpm                                                                                        4.4 MB/s | 270 kB     00:00    
(3/215): bzip2-1.0.6-26.el8.x86_64.rpm                                                                                    893 kB/s |  60 kB     00:00    
(4/215): fontpackages-filesystem-1.44-22.el8.noarch.rpm                                                                   680 kB/s |  16 kB     00:00    
(5/215): m4-1.4.18-7.el8.x86_64.rpm                                                                                       7.6 MB/s | 223 kB     00:00    
(6/215): sgml-common-0.6.3-50.el8.noarch.rpm                                                                              2.4 MB/s |  62 kB     00:00    
(7/215): xml-common-0.6.3-50.el8.noarch.rpm                                                                               1.6 MB/s |  39 kB     00:00    
(8/215): libtool-ltdl-2.4.6-25.el8.x86_64.rpm                                                                             2.3 MB/s |  58 kB     00:00    
(9/215): gettext-common-devel-0.19.8.1-17.el8.noarch.rpm                                                                   12 MB/s | 419 kB     00:00    
(10/215): gettext-devel-0.19.8.1-17.el8.x86_64.rpm                                                                        8.7 MB/s | 331 kB     00:00    
(11/215): gdk-pixbuf2-2.36.12-5.el8.x86_64.rpm                                                                             14 MB/s | 467 kB     00:00    
(12/215): patch-2.7.6-11.el8.x86_64.rpm                                                                                   4.9 MB/s | 138 kB     00:00    
(13/215): efivar-libs-37-4.el8.x86_64.rpm                                                                                 3.9 MB/s | 108 kB     00:00    
(14/215): libzstd-devel-1.4.4-1.el8.x86_64.rpm                                                                            1.7 MB/s |  44 kB     00:00    
(15/215): libxslt-1.1.32-6.el8.x86_64.rpm                                                                                 5.8 MB/s | 250 kB     00:00    
(16/215): avahi-libs-0.7-20.el8.x86_64.rpm                                                                                1.6 MB/s |  62 kB     00:00    
(17/215): libxcrypt-devel-4.1.1-6.el8.x86_64.rpm                                                                          1.0 MB/s |  25 kB     00:00    
(18/215): keyutils-libs-devel-1.5.10-9.el8.x86_64.rpm                                                                     2.0 MB/s |  48 kB     00:00    
(19/215): libsepol-devel-2.9-3.el8.x86_64.rpm                                                                             3.5 MB/s |  87 kB     00:00    
(20/215): fontconfig-2.13.1-4.el8.x86_64.rpm                                                                              8.8 MB/s | 274 kB     00:00    
(21/215): make-4.2.1-11.el8.x86_64.rpm                                                                                     14 MB/s | 498 kB     00:00    
(22/215): xz-devel-5.2.4-4.el8_6.x86_64.rpm                                                                               2.5 MB/s |  63 kB     00:00    
(23/215): pcre2-utf32-10.32-3.el8_6.x86_64.rpm                                                                            7.4 MB/s | 220 kB     00:00    
(24/215): libbabeltrace-1.5.4-4.el8.x86_64.rpm                                                                            5.9 MB/s | 200 kB     00:00    
(25/215): libselinux-devel-2.9-6.el8.x86_64.rpm                                                                           7.0 MB/s | 200 kB     00:00    
(26/215): pcre2-devel-10.32-3.el8_6.x86_64.rpm                                                                             14 MB/s | 605 kB     00:00    
(27/215): pcre2-utf16-10.32-3.el8_6.x86_64.rpm                                                                            7.3 MB/s | 229 kB     00:00    
(28/215): libicu-60.3-2.el8_1.x86_64.rpm                                                                                   29 MB/s | 8.8 MB     00:00    
(29/215): mokutil-0.3.0-12.el8.x86_64.rpm                                                                                 821 kB/s |  46 kB     00:00    
(30/215): krb5-devel-1.18.2-22.el8_7.x86_64.rpm                                                                           9.6 MB/s | 561 kB     00:00    
(31/215): libkadm5-1.18.2-22.el8_7.x86_64.rpm                                                                             6.1 MB/s | 187 kB     00:00    
(32/215): libverto-devel-0.3.2-2.el8.x86_64.rpm                                                                           885 kB/s |  18 kB     00:00    
(33/215): openssl-devel-1.1.1k-9.el8_7.x86_64.rpm                                                                          34 MB/s | 2.3 MB     00:00    
(34/215): libcom_err-devel-1.45.6-5.el8.x86_64.rpm                                                                        969 kB/s |  39 kB     00:00    
(35/215): strace-5.18-2.el8.x86_64.rpm                                                                                     20 MB/s | 1.4 MB     00:00    
(36/215): zlib-devel-1.2.11-21.el8_7.x86_64.rpm                                                                           1.6 MB/s |  58 kB     00:00    
(37/215): elfutils-libelf-devel-0.188-3.el8.x86_64.rpm                                                                    2.0 MB/s |  61 kB     00:00    
(38/215): glibc-headers-2.28-225.el8.x86_64.rpm                                                                            12 MB/s | 488 kB     00:00    
(39/215): elfutils-0.188-3.el8.x86_64.rpm                                                                                  15 MB/s | 544 kB     00:00    
(40/215): rpm-sign-4.14.3-26.el8.x86_64.rpm                                                                               3.4 MB/s |  81 kB     00:00    
(41/215): elfutils-devel-0.188-3.el8.x86_64.rpm                                                                           4.0 MB/s |  90 kB     00:00    
(42/215): glibc-devel-2.28-225.el8.x86_64.rpm                                                                             3.7 MB/s |  83 kB     00:00    
(43/215): elfutils-debuginfod-client-devel-0.188-3.el8.x86_64.rpm                                                         2.7 MB/s |  59 kB     00:00    
(44/215): cups-libs-2.2.6-51.el8_8.2.x86_64.rpm                                                                            13 MB/s | 435 kB     00:00    
(45/215): binutils-2.30-119.el8.x86_64.rpm                                                                                 24 MB/s | 5.8 MB     00:00    
(46/215): xorg-x11-fonts-ISO8859-1-100dpi-7.5-19.el8.noarch.rpm                                                            20 MB/s | 1.1 MB     00:00    
(47/215): urw-base35-p052-fonts-20170801-10.el8.noarch.rpm                                                                 18 MB/s | 982 kB     00:00    
(48/215): urw-base35-gothic-fonts-20170801-10.el8.noarch.rpm                                                               14 MB/s | 654 kB     00:00    
(49/215): docbook-dtds-1.0-69.el8.noarch.rpm                                                                               10 MB/s | 377 kB     00:00    
(50/215): urw-base35-fonts-20170801-10.el8.noarch.rpm                                                                     560 kB/s |  12 kB     00:00    
(51/215): intltool-0.51.0-11.el8.noarch.rpm                                                                               3.0 MB/s |  66 kB     00:00    
(52/215): kernel-headers-4.18.0-477.27.1.el8_8.x86_64.rpm                                                                  24 MB/s |  11 MB     00:00    
(53/215): google-droid-sans-fonts-20120715-13.el8.noarch.rpm                                                               18 MB/s | 2.5 MB     00:00    
(54/215): rust-srpm-macros-5-2.el8.noarch.rpm                                                                             358 kB/s | 9.3 kB     00:00    
(55/215): ocaml-srpm-macros-5-4.el8.noarch.rpm                                                                            421 kB/s | 9.5 kB     00:00    
(56/215): javapackages-filesystem-5.3.0-1.module+el8+2447+6f56d9a6.noarch.rpm                                             1.4 MB/s |  30 kB     00:00    
(57/215): urw-base35-bookman-fonts-20170801-10.el8.noarch.rpm                                                              14 MB/s | 857 kB     00:00    
(58/215): perl-Thread-Queue-3.13-1.el8.noarch.rpm                                                                         1.1 MB/s |  24 kB     00:00    
(59/215): ghc-srpm-macros-1.4.2-7.el8.noarch.rpm                                                                          475 kB/s | 9.4 kB     00:00    
(60/215): urw-base35-fonts-common-20170801-10.el8.noarch.rpm                                                              1.0 MB/s |  23 kB     00:00    
(61/215): urw-base35-d050000l-fonts-20170801-10.el8.noarch.rpm                                                            2.6 MB/s |  79 kB     00:00    
(62/215): urw-base35-c059-fonts-20170801-10.el8.noarch.rpm                                                                 16 MB/s | 884 kB     00:00    
(63/215): urw-base35-nimbus-mono-ps-fonts-20170801-10.el8.noarch.rpm                                                       14 MB/s | 801 kB     00:00    
(64/215): adobe-mappings-cmap-deprecated-20171205-3.el8.noarch.rpm                                                        4.4 MB/s | 119 kB     00:00    
(65/215): hicolor-icon-theme-0.17-2.el8.noarch.rpm                                                                        2.1 MB/s |  48 kB     00:00    
(66/215): adobe-mappings-pdf-20180407-1.el8.noarch.rpm                                                                     16 MB/s | 707 kB     00:00    
(67/215): asciidoc-8.6.10-0.5.20180627gitf7c2274.el8.noarch.rpm                                                           6.9 MB/s | 216 kB     00:00    
(68/215): openblas-srpm-macros-2-2.el8.noarch.rpm                                                                         386 kB/s | 8.0 kB     00:00    
(69/215): adobe-mappings-cmap-20171205-3.el8.noarch.rpm                                                                    23 MB/s | 2.1 MB     00:00    
(70/215): perl-srpm-macros-1-25.el8.noarch.rpm                                                                            452 kB/s |  11 kB     00:00    
(71/215): urw-base35-standard-symbols-ps-fonts-20170801-10.el8.noarch.rpm                                                 1.9 MB/s |  44 kB     00:00    
(72/215): urw-base35-nimbus-sans-fonts-20170801-10.el8.noarch.rpm                                                          21 MB/s | 1.3 MB     00:00    
(73/215): kernel-devel-4.18.0-477.27.1.el8_8.x86_64.rpm                                                                    25 MB/s |  23 MB     00:00    
(74/215): lcms2-2.9-2.el8.x86_64.rpm                                                                                      2.2 MB/s | 165 kB     00:00    
(75/215): urw-base35-nimbus-roman-fonts-20170801-10.el8.noarch.rpm                                                        7.0 MB/s | 865 kB     00:00    
(76/215): urw-base35-z003-fonts-20170801-10.el8.noarch.rpm                                                                9.2 MB/s | 279 kB     00:00    
(77/215): perl-Fedora-VSP-0.001-9.el8.noarch.rpm                                                                          885 kB/s |  25 kB     00:00    
(78/215): jbigkit-libs-2.1-14.el8.x86_64.rpm                                                                              2.1 MB/s |  55 kB     00:00    
(79/215): libXxf86misc-1.0.4-1.el8.x86_64.rpm                                                                             984 kB/s |  23 kB     00:00    
(80/215): libmcpp-2.7.2-20.el8.x86_64.rpm                                                                                 3.2 MB/s |  81 kB     00:00    
(81/215): patchutils-0.3.4-10.el8.x86_64.rpm                                                                              4.6 MB/s | 115 kB     00:00    
(82/215): perl-Sys-Syslog-0.35-397.el8.x86_64.rpm                                                                         1.7 MB/s |  50 kB     00:00    
(83/215): libXinerama-1.1.4-1.el8.x86_64.rpm                                                                              586 kB/s |  16 kB     00:00    
(84/215): xorg-x11-server-utils-7.7-27.el8.x86_64.rpm                                                                     4.7 MB/s | 197 kB     00:00    
(85/215): libatomic_ops-7.6.2-3.el8.x86_64.rpm                                                                            1.7 MB/s |  38 kB     00:00    
(86/215): byacc-1.9.20170709-4.el8.x86_64.rpm                                                                             3.6 MB/s |  91 kB     00:00    
(87/215): graphite2-1.3.10-10.el8.x86_64.rpm                                                                              4.5 MB/s | 122 kB     00:00    
(88/215): libXcursor-1.1.15-3.el8.x86_64.rpm                                                                              1.5 MB/s |  36 kB     00:00    
(89/215): mcpp-2.7.2-20.el8.x86_64.rpm                                                                                    1.4 MB/s |  31 kB     00:00    
(90/215): libidn-1.34-5.el8.x86_64.rpm                                                                                    7.6 MB/s | 239 kB     00:00    
(91/215): libSM-1.2.3-1.el8.x86_64.rpm                                                                                    1.7 MB/s |  48 kB     00:00    
(92/215): libXfixes-5.0.3-7.el8.x86_64.rpm                                                                                1.1 MB/s |  25 kB     00:00    
(93/215): libXaw-1.0.13-10.el8.x86_64.rpm                                                                                 7.0 MB/s | 194 kB     00:00    
(94/215): libXxf86vm-1.1.4-9.el8.x86_64.rpm                                                                               757 kB/s |  19 kB     00:00    
(95/215): tbb-2018.2-9.el8.x86_64.rpm                                                                                     4.8 MB/s | 160 kB     00:00    
(96/215): diffstat-1.61-7.el8.x86_64.rpm                                                                                  2.0 MB/s |  44 kB     00:00    
(97/215): libthai-0.1.27-2.el8.x86_64.rpm                                                                                 4.4 MB/s | 203 kB     00:00    
(98/215): libijs-0.35-5.el8.x86_64.rpm                                                                                    682 kB/s |  30 kB     00:00    
(99/215): libXdamage-1.1.4-14.el8.x86_64.rpm                                                                              741 kB/s |  27 kB     00:00    
(100/215): gc-7.6.4-3.el8.x86_64.rpm                                                                                      3.9 MB/s | 109 kB     00:00    
(101/215): libpaper-1.1.24-22.el8.x86_64.rpm                                                                              1.6 MB/s |  45 kB     00:00    
(102/215): harfbuzz-1.7.5-3.el8.x86_64.rpm                                                                                7.7 MB/s | 294 kB     00:00    
(103/215): libXcomposite-0.4.4-14.el8.x86_64.rpm                                                                          1.2 MB/s |  29 kB     00:00    
(104/215): libfontenc-1.1.3-8.el8.x86_64.rpm                                                                              1.5 MB/s |  37 kB     00:00    
(105/215): perl-XML-Parser-2.44-11.el8.x86_64.rpm                                                                         5.3 MB/s | 226 kB     00:00    
(106/215): libXrender-0.9.10-7.el8.x86_64.rpm                                                                             1.2 MB/s |  33 kB     00:00    
(107/215): libtool-2.4.6-25.el8.x86_64.rpm                                                                                 14 MB/s | 709 kB     00:00    
(108/215): libdatrie-0.2.9-7.el8.x86_64.rpm                                                                               1.4 MB/s |  33 kB     00:00    
(109/215): atk-2.28.1-1.el8.x86_64.rpm                                                                                    8.7 MB/s | 272 kB     00:00    
(110/215): isl-0.16.1-6.el8.x86_64.rpm                                                                                     15 MB/s | 841 kB     00:00    
(111/215): bison-3.0.4-10.el8.x86_64.rpm                                                                                   11 MB/s | 688 kB     00:00    
(112/215): libipt-1.6.1-8.el8.x86_64.rpm                                                                                  2.0 MB/s |  50 kB     00:00    
(113/215): flex-2.6.1-9.el8.x86_64.rpm                                                                                    9.4 MB/s | 320 kB     00:00    
(114/215): libXt-1.1.5-12.el8.x86_64.rpm                                                                                  6.9 MB/s | 185 kB     00:00    
(115/215): jna-4.5.1-5.el8.x86_64.rpm                                                                                     8.7 MB/s | 242 kB     00:00    
(116/215): guile-2.0.14-7.el8.x86_64.rpm                                                                                   24 MB/s | 3.5 MB     00:00    
(117/215): perl-generators-1.10-9.el8.noarch.rpm                                                                          567 kB/s |  18 kB     00:00    
(118/215): gdk-pixbuf2-modules-2.36.12-5.el8.x86_64.rpm                                                                   4.3 MB/s | 109 kB     00:00    
(119/215): libICE-1.0.9-15.el8.x86_64.rpm                                                                                 3.0 MB/s |  74 kB     00:00    
(120/215): ltrace-0.7.91-28.el8.x86_64.rpm                                                                                5.8 MB/s | 160 kB     00:00    
(121/215): libxcb-1.13.1-1.el8.x86_64.rpm                                                                                 8.8 MB/s | 229 kB     00:00    
(122/215): libXext-1.3.4-1.el8.x86_64.rpm                                                                                 2.0 MB/s |  45 kB     00:00    
(123/215): libXi-1.7.10-1.el8.x86_64.rpm                                                                                  2.0 MB/s |  49 kB     00:00    
(124/215): librsvg2-2.42.7-4.el8.x86_64.rpm                                                                                12 MB/s | 555 kB     00:00    
(125/215): libXrandr-1.5.2-1.el8.x86_64.rpm                                                                               1.0 MB/s |  34 kB     00:00    
(126/215): zstd-1.4.4-1.el8.x86_64.rpm                                                                                    7.1 MB/s | 393 kB     00:00    
(127/215): libXft-2.3.3-1.el8.x86_64.rpm                                                                                  2.9 MB/s |  67 kB     00:00    
(128/215): libXau-1.0.9-3.el8.x86_64.rpm                                                                                  1.6 MB/s |  37 kB     00:00    
(129/215): gd-2.2.5-7.el8.x86_64.rpm                                                                                      5.5 MB/s | 144 kB     00:00    
(130/215): libXmu-1.1.3-1.el8.x86_64.rpm                                                                                  3.1 MB/s |  75 kB     00:00    
(131/215): source-highlight-3.1.8-17.el8.x86_64.rpm                                                                        17 MB/s | 660 kB     00:00    
(132/215): libmpc-1.1.0-9.1.el8.x86_64.rpm                                                                                2.4 MB/s |  61 kB     00:00    
(133/215): docbook-style-xsl-1.79.2-9.el8.noarch.rpm                                                                       23 MB/s | 1.6 MB     00:00    
(134/215): automake-1.16.1-7.el8.noarch.rpm                                                                                12 MB/s | 713 kB     00:00    
(135/215): efi-srpm-macros-3-3.el8.noarch.rpm                                                                             1.1 MB/s |  22 kB     00:00    
(136/215): jbig2dec-libs-0.16-1.el8.x86_64.rpm                                                                            3.2 MB/s |  72 kB     00:00    
(137/215): go-srpm-macros-2-17.el8.noarch.rpm                                                                             629 kB/s |  13 kB     00:00    
(138/215): gtk2-2.24.32-5.el8.x86_64.rpm                                                                                   30 MB/s | 3.4 MB     00:00    
(139/215): libjpeg-turbo-1.5.3-12.el8.x86_64.rpm                                                                          3.5 MB/s | 157 kB     00:00    
(140/215): lua-5.3.4-12.el8.x86_64.rpm                                                                                    4.5 MB/s | 192 kB     00:00    
(141/215): xorg-x11-font-utils-7.5-41.el8.x86_64.rpm                                                                      3.3 MB/s | 104 kB     00:00    
(142/215): copy-jdk-configs-4.0-2.el8.noarch.rpm                                                                          1.1 MB/s |  31 kB     00:00    
(143/215): autoconf-2.69-29.el8.noarch.rpm                                                                                 18 MB/s | 711 kB     00:00    
(144/215): dwz-0.12-10.el8.x86_64.rpm                                                                                     3.0 MB/s | 109 kB     00:00    
(145/215): pango-1.42.4-8.el8.x86_64.rpm                                                                                  7.0 MB/s | 297 kB     00:00    
(146/215): libX11-1.6.8-5.el8.x86_64.rpm                                                                                   16 MB/s | 611 kB     00:00    
(147/215): jasper-libs-2.0.14-5.el8.x86_64.rpm                                                                            6.2 MB/s | 167 kB     00:00    
(148/215): libX11-common-1.6.8-5.el8.noarch.rpm                                                                           6.1 MB/s | 158 kB     00:00    
(149/215): pixman-0.38.4-2.el8.x86_64.rpm                                                                                 8.6 MB/s | 257 kB     00:00    
(150/215): cairo-1.15.12-6.el8.x86_64.rpm                                                                                  19 MB/s | 719 kB     00:00    
(151/215): openjpeg2-2.4.0-5.el8.x86_64.rpm                                                                               5.4 MB/s | 165 kB     00:00    
(152/215): fribidi-1.0.4-9.el8.x86_64.rpm                                                                                 4.0 MB/s |  89 kB     00:00    
(153/215): boost-thread-1.66.0-13.el8.x86_64.rpm                                                                          1.9 MB/s |  59 kB     00:00    
(154/215): boost-timer-1.66.0-13.el8.x86_64.rpm                                                                           733 kB/s |  21 kB     00:00    
(155/215): boost-date-time-1.66.0-13.el8.x86_64.rpm                                                                       861 kB/s |  30 kB     00:00    
(156/215): gdb-8.2-19.el8.x86_64.rpm                                                                                      6.9 MB/s | 299 kB     00:00    
(157/215): boost-chrono-1.66.0-13.el8.x86_64.rpm                                                                          826 kB/s |  23 kB     00:00    
(158/215): dyninst-12.1.0-1.el8.x86_64.rpm                                                                                 37 MB/s | 4.1 MB     00:00    
(159/215): gtk-update-icon-cache-3.22.30-11.el8.x86_64.rpm                                                                1.4 MB/s |  33 kB     00:00    
(160/215): qt5-srpm-macros-5.15.3-1.el8.noarch.rpm                                                                        508 kB/s |  11 kB     00:00    
(161/215): boost-system-1.66.0-13.el8.x86_64.rpm                                                                          598 kB/s |  18 kB     00:00    
(162/215): boost-regex-1.66.0-13.el8.x86_64.rpm                                                                           8.5 MB/s | 281 kB     00:00    
(163/215): valgrind-devel-3.19.0-1.el8.x86_64.rpm                                                                         3.8 MB/s |  94 kB     00:00    
(164/215): libXpm-3.5.12-9.el8_7.x86_64.rpm                                                                               2.4 MB/s |  58 kB     00:00    
(165/215): boost-atomic-1.66.0-13.el8.x86_64.rpm                                                                          606 kB/s |  14 kB     00:00    
(166/215): gdb-headless-8.2-19.el8.x86_64.rpm                                                                              20 MB/s | 3.7 MB     00:00    
(167/215): boost-filesystem-1.66.0-13.el8.x86_64.rpm                                                                      1.8 MB/s |  49 kB     00:00    
(168/215): pesign-0.112-27.el8_7.x86_64.rpm                                                                               4.9 MB/s | 180 kB     00:00    
(169/215): tzdata-java-2023c-1.el8.noarch.rpm                                                                             5.1 MB/s | 187 kB     00:00    
(170/215): systemtap-4.8-2.el8.x86_64.rpm                                                                                 1.0 MB/s |  21 kB     00:00    
(171/215): valgrind-3.19.0-1.el8.x86_64.rpm                                                                                23 MB/s |  11 MB     00:00    
(172/215): rpm-build-4.14.3-26.el8.x86_64.rpm                                                                             5.3 MB/s | 174 kB     00:00    
(173/215): ctags-5.8-23.el8.x86_64.rpm                                                                                    4.9 MB/s | 170 kB     00:00    
(174/215): systemtap-runtime-4.8-2.el8.x86_64.rpm                                                                          13 MB/s | 543 kB     00:00    
(175/215): annobin-10.94-1.el8.x86_64.rpm                                                                                  17 MB/s | 965 kB     00:00    
(176/215): gcc-plugin-annobin-8.5.0-18.el8.x86_64.rpm                                                                     1.3 MB/s |  35 kB     00:00    
(177/215): cpp-8.5.0-18.el8.x86_64.rpm                                                                                     23 MB/s |  10 MB     00:00    
(178/215): redhat-rpm-config-131-1.el8.noarch.rpm                                                                         1.4 MB/s |  91 kB     00:00    
(179/215): python3-rpm-macros-3-45.el8.noarch.rpm                                                                         755 kB/s |  15 kB     00:00    
(180/215): gcc-gdb-plugin-8.5.0-18.el8.x86_64.rpm                                                                         4.7 MB/s | 120 kB     00:00    
(181/215): python-rpm-macros-3-45.el8.noarch.rpm                                                                          711 kB/s |  16 kB     00:00    
(182/215): libgs-9.27-6.el8.x86_64.rpm                                                                                     21 MB/s | 3.1 MB     00:00    
(183/215): libstdc++-devel-8.5.0-18.el8.x86_64.rpm                                                                         22 MB/s | 2.1 MB     00:00    
(184/215): python-srpm-macros-3-45.el8.noarch.rpm                                                                         769 kB/s |  16 kB     00:00    
(185/215): graphviz-2.40.1-44.el8.x86_64.rpm                                                                               22 MB/s | 1.8 MB     00:00    
(186/215): gcc-8.5.0-18.el8.x86_64.rpm                                                                                     24 MB/s |  23 MB     00:00    
(187/215): gcc-c++-8.5.0-18.el8.x86_64.rpm                                                                                 21 MB/s |  12 MB     00:00    
(188/215): libtiff-4.0.9-28.el8_8.x86_64.rpm                                                                              6.9 MB/s | 189 kB     00:00    
(189/215): systemtap-client-4.8-2.el8.x86_64.rpm                                                                           14 MB/s | 3.8 MB     00:00    
(190/215): systemtap-devel-4.8-2.el8.x86_64.rpm                                                                            13 MB/s | 2.4 MB     00:00    
(191/215): nspr-4.35.0-1.el8_8.x86_64.rpm                                                                                 3.0 MB/s | 143 kB     00:00    
(192/215): nss-3.90.0-3.el8_8.x86_64.rpm                                                                                   13 MB/s | 750 kB     00:00    
(193/215): nss-softokn-3.90.0-3.el8_8.x86_64.rpm                                                                           15 MB/s | 1.2 MB     00:00    
(194/215): nss-softokn-freebl-3.90.0-3.el8_8.x86_64.rpm                                                                   7.6 MB/s | 389 kB     00:00    
(195/215): nss-sysinit-3.90.0-3.el8_8.x86_64.rpm                                                                          2.9 MB/s |  75 kB     00:00    
(196/215): nss-tools-3.90.0-3.el8_8.x86_64.rpm                                                                             16 MB/s | 583 kB     00:00    
(197/215): nss-util-3.90.0-3.el8_8.x86_64.rpm                                                                             4.6 MB/s | 139 kB     00:00    
(198/215): libwebp-1.0.0-8.el8_8.1.x86_64.rpm                                                                             9.8 MB/s | 274 kB     00:00    
(199/215): rpm-plugin-selinux-4.14.3-26.el8.x86_64.rpm                                                                    3.4 MB/s |  78 kB     00:00    
(200/215): python3-rpm-4.14.3-26.el8.x86_64.rpm                                                                           5.3 MB/s | 155 kB     00:00    
(201/215): rpm-4.14.3-26.el8.x86_64.rpm                                                                                    15 MB/s | 544 kB     00:00    
(202/215): rpm-libs-4.14.3-26.el8.x86_64.rpm                                                                               12 MB/s | 345 kB     00:00    
(203/215): glibc-langpack-en-2.28-225.el8.x86_64.rpm                                                                       20 MB/s | 827 kB     00:00    
(204/215): rpm-plugin-systemd-inhibit-4.14.3-26.el8.x86_64.rpm                                                            2.9 MB/s |  79 kB     00:00    
(205/215): elfutils-libs-0.188-3.el8.x86_64.rpm                                                                            11 MB/s | 299 kB     00:00    
(206/215): libgomp-8.5.0-18.el8.x86_64.rpm                                                                                6.7 MB/s | 208 kB     00:00    
(207/215): libgcc-8.5.0-18.el8.x86_64.rpm                                                                                 3.1 MB/s |  81 kB     00:00    
(208/215): rpm-build-libs-4.14.3-26.el8.x86_64.rpm                                                                        5.5 MB/s | 157 kB     00:00    
(209/215): glibc-2.28-225.el8.x86_64.rpm                                                                                   24 MB/s | 2.2 MB     00:00    
(210/215): elfutils-debuginfod-client-0.188-3.el8.x86_64.rpm                                                              3.2 MB/s |  75 kB     00:00    
(211/215): glibc-gconv-extra-2.28-225.el8.x86_64.rpm                                                                       19 MB/s | 1.5 MB     00:00    
(212/215): libstdc++-8.5.0-18.el8.x86_64.rpm                                                                               11 MB/s | 455 kB     00:00    
(213/215): elfutils-libelf-0.188-3.el8.x86_64.rpm                                                                         8.8 MB/s | 231 kB     00:00    
(214/215): glibc-common-2.28-225.el8.x86_64.rpm                                                                            20 MB/s | 1.0 MB     00:00    
(215/215): java-1.8.0-openjdk-headless-1.8.0.382.b05-2.el8.x86_64.rpm                                                      35 MB/s |  34 MB     00:00    
----------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                      45 MB/s | 223 MB     00:04     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Running scriptlet: copy-jdk-configs-4.0-2.el8.noarch                                                                                                1/1 
  Running scriptlet: java-1.8.0-openjdk-headless-1:1.8.0.382.b05-2.el8.x86_64                                                                         1/1 
  Preparing        :                                                                                                                                  1/1 
  Upgrading        : libgcc-8.5.0-18.el8.x86_64                                                                                                     1/231 
  Running scriptlet: libgcc-8.5.0-18.el8.x86_64                                                                                                     1/231 
  Installing       : python-srpm-macros-3-45.el8.noarch                                                                                             2/231 
  Installing       : zlib-devel-1.2.11-21.el8_7.x86_64                                                                                              3/231 
  Installing       : fontpackages-filesystem-1.44-22.el8.noarch                                                                                     4/231 
  Installing       : urw-base35-fonts-common-20170801-10.el8.noarch                                                                                 5/231 
  Installing       : adobe-mappings-cmap-20171205-3.el8.noarch                                                                                      6/231 
  Installing       : javapackages-filesystem-5.3.0-1.module+el8+2447+6f56d9a6.noarch                                                                7/231 
  Running scriptlet: xml-common-0.6.3-50.el8.noarch                                                                                                 8/231 
  Installing       : xml-common-0.6.3-50.el8.noarch                                                                                                 8/231 
  Installing       : adobe-mappings-cmap-deprecated-20171205-3.el8.noarch                                                                           9/231 
  Installing       : google-droid-sans-fonts-20120715-13.el8.noarch                                                                                10/231 
  Installing       : python-rpm-macros-3-45.el8.noarch                                                                                             11/231 
  Installing       : python3-rpm-macros-3-45.el8.noarch                                                                                            12/231 
  Upgrading        : glibc-gconv-extra-2.28-225.el8.x86_64                                                                                         13/231 
  Running scriptlet: glibc-gconv-extra-2.28-225.el8.x86_64                                                                                         13/231 
  Upgrading        : glibc-common-2.28-225.el8.x86_64                                                                                              14/231 
  Running scriptlet: glibc-2.28-225.el8.x86_64                                                                                                     15/231 
  Upgrading        : glibc-2.28-225.el8.x86_64                                                                                                     15/231 
  Running scriptlet: glibc-2.28-225.el8.x86_64                                                                                                     15/231 
  Upgrading        : glibc-langpack-en-2.28-225.el8.x86_64                                                                                         16/231 
  Upgrading        : libstdc++-8.5.0-18.el8.x86_64                                                                                                 17/231 
  Running scriptlet: libstdc++-8.5.0-18.el8.x86_64                                                                                                 17/231 
  Upgrading        : elfutils-libelf-0.188-3.el8.x86_64                                                                                            18/231 
  Upgrading        : elfutils-libs-0.188-3.el8.x86_64                                                                                              19/231 
  Upgrading        : elfutils-debuginfod-client-0.188-3.el8.x86_64                                                                                 20/231 
  Installing       : nspr-4.35.0-1.el8_8.x86_64                                                                                                    21/231 
  Running scriptlet: nspr-4.35.0-1.el8_8.x86_64                                                                                                    21/231 
  Installing       : nss-util-3.90.0-3.el8_8.x86_64                                                                                                22/231 
  Installing       : boost-system-1.66.0-13.el8.x86_64                                                                                             23/231 
  Running scriptlet: boost-system-1.66.0-13.el8.x86_64                                                                                             23/231 
  Upgrading        : rpm-libs-4.14.3-26.el8.x86_64                                                                                                 24/231 
  Running scriptlet: rpm-libs-4.14.3-26.el8.x86_64                                                                                                 24/231 
  Upgrading        : rpm-4.14.3-26.el8.x86_64                                                                                                      25/231 
  Installing       : gdk-pixbuf2-2.36.12-5.el8.x86_64                                                                                              26/231 
  Running scriptlet: gdk-pixbuf2-2.36.12-5.el8.x86_64                                                                                              26/231 
  Installing       : libjpeg-turbo-1.5.3-12.el8.x86_64                                                                                             27/231 
  Installing       : libICE-1.0.9-15.el8.x86_64                                                                                                    28/231 
  Upgrading        : rpm-build-libs-4.14.3-26.el8.x86_64                                                                                           29/231 
  Running scriptlet: rpm-build-libs-4.14.3-26.el8.x86_64                                                                                           29/231 
  Installing       : tbb-2018.2-9.el8.x86_64                                                                                                       30/231 
  Running scriptlet: tbb-2018.2-9.el8.x86_64                                                                                                       30/231 
  Installing       : m4-1.4.18-7.el8.x86_64                                                                                                        31/231 
  Running scriptlet: m4-1.4.18-7.el8.x86_64                                                                                                        31/231 
  Installing       : avahi-libs-0.7-20.el8.x86_64                                                                                                  32/231 
  Installing       : cups-libs-1:2.2.6-51.el8_8.2.x86_64                                                                                           33/231 
  Installing       : libmpc-1.1.0-9.1.el8.x86_64                                                                                                   34/231 
  Installing       : autoconf-2.69-29.el8.noarch                                                                                                   35/231 
  Running scriptlet: autoconf-2.69-29.el8.noarch                                                                                                   35/231 
  Installing       : libSM-1.2.3-1.el8.x86_64                                                                                                      36/231 
  Installing       : boost-chrono-1.66.0-13.el8.x86_64                                                                                             37/231 
  Running scriptlet: boost-chrono-1.66.0-13.el8.x86_64                                                                                             37/231 
  Installing       : elfutils-libelf-devel-0.188-3.el8.x86_64                                                                                      38/231 
  Installing       : binutils-2.30-119.el8.x86_64                                                                                                  39/231 
  Running scriptlet: binutils-2.30-119.el8.x86_64                                                                                                  39/231 
  Installing       : zip-3.0-23.el8.x86_64                                                                                                         40/231 
  Installing       : libtool-ltdl-2.4.6-25.el8.x86_64                                                                                              41/231 
  Running scriptlet: libtool-ltdl-2.4.6-25.el8.x86_64                                                                                              41/231 
  Installing       : patch-2.7.6-11.el8.x86_64                                                                                                     42/231 
  Installing       : efivar-libs-37-4.el8.x86_64                                                                                                   43/231 
  Running scriptlet: efivar-libs-37-4.el8.x86_64                                                                                                   43/231 
  Installing       : make-1:4.2.1-11.el8.x86_64                                                                                                    44/231 
  Running scriptlet: make-1:4.2.1-11.el8.x86_64                                                                                                    44/231 
  Installing       : atk-2.28.1-1.el8.x86_64                                                                                                       45/231 
  Upgrading        : libgomp-8.5.0-18.el8.x86_64                                                                                                   46/231 
  Running scriptlet: libgomp-8.5.0-18.el8.x86_64                                                                                                   46/231 
  Installing       : mokutil-1:0.3.0-12.el8.x86_64                                                                                                 47/231 
  Installing       : boost-timer-1.66.0-13.el8.x86_64                                                                                              48/231 
  Running scriptlet: boost-timer-1.66.0-13.el8.x86_64                                                                                              48/231 
  Installing       : cpp-8.5.0-18.el8.x86_64                                                                                                       49/231 
  Running scriptlet: cpp-8.5.0-18.el8.x86_64                                                                                                       49/231 
  Installing       : bison-3.0.4-10.el8.x86_64                                                                                                     50/231 
  Running scriptlet: bison-3.0.4-10.el8.x86_64                                                                                                     50/231 
  Installing       : flex-2.6.1-9.el8.x86_64                                                                                                       51/231 
  Running scriptlet: flex-2.6.1-9.el8.x86_64                                                                                                       51/231 
  Installing       : jasper-libs-2.0.14-5.el8.x86_64                                                                                               52/231 
  Installing       : gtk-update-icon-cache-3.22.30-11.el8.x86_64                                                                                   53/231 
  Installing       : efi-srpm-macros-3-3.el8.noarch                                                                                                54/231 
  Installing       : boost-thread-1.66.0-13.el8.x86_64                                                                                             55/231 
  Running scriptlet: boost-thread-1.66.0-13.el8.x86_64                                                                                             55/231 
  Installing       : boost-filesystem-1.66.0-13.el8.x86_64                                                                                         56/231 
  Running scriptlet: boost-filesystem-1.66.0-13.el8.x86_64                                                                                         56/231 
  Installing       : nss-softokn-freebl-3.90.0-3.el8_8.x86_64                                                                                      57/231 
  Installing       : nss-softokn-3.90.0-3.el8_8.x86_64                                                                                             58/231 
  Installing       : nss-3.90.0-3.el8_8.x86_64                                                                                                     59/231 
  Installing       : nss-sysinit-3.90.0-3.el8_8.x86_64                                                                                             60/231 
  Installing       : nss-tools-3.90.0-3.el8_8.x86_64                                                                                               61/231 
  Installing       : elfutils-0.188-3.el8.x86_64                                                                                                   62/231 
  Installing       : elfutils-debuginfod-client-devel-0.188-3.el8.x86_64                                                                           63/231 
  Installing       : valgrind-1:3.19.0-1.el8.x86_64                                                                                                64/231 
  Installing       : libbabeltrace-1.5.4-4.el8.x86_64                                                                                              65/231 
  Running scriptlet: libbabeltrace-1.5.4-4.el8.x86_64                                                                                              65/231 
  Installing       : dwz-0.12-10.el8.x86_64                                                                                                        66/231 
  Installing       : libicu-60.3-2.el8_1.x86_64                                                                                                    67/231 
  Running scriptlet: libicu-60.3-2.el8_1.x86_64                                                                                                    67/231 
  Installing       : boost-regex-1.66.0-13.el8.x86_64                                                                                              68/231 
  Running scriptlet: boost-regex-1.66.0-13.el8.x86_64                                                                                              68/231 
  Installing       : graphite2-1.3.10-10.el8.x86_64                                                                                                69/231 
  Installing       : harfbuzz-1.7.5-3.el8.x86_64                                                                                                   70/231 
  Running scriptlet: harfbuzz-1.7.5-3.el8.x86_64                                                                                                   70/231 
  Installing       : zstd-1.4.4-1.el8.x86_64                                                                                                       71/231 
  Installing       : boost-date-time-1.66.0-13.el8.x86_64                                                                                          72/231 
  Running scriptlet: boost-date-time-1.66.0-13.el8.x86_64                                                                                          72/231 
  Installing       : boost-atomic-1.66.0-13.el8.x86_64                                                                                             73/231 
  Running scriptlet: boost-atomic-1.66.0-13.el8.x86_64                                                                                             73/231 
  Installing       : dyninst-12.1.0-1.el8.x86_64                                                                                                   74/231 
  Running scriptlet: dyninst-12.1.0-1.el8.x86_64                                                                                                   74/231 
  Running scriptlet: systemtap-runtime-4.8-2.el8.x86_64                                                                                            75/231 
  Installing       : systemtap-runtime-4.8-2.el8.x86_64                                                                                            75/231 
  Installing       : systemtap-client-4.8-2.el8.x86_64                                                                                             76/231 
  Installing       : libstdc++-devel-8.5.0-18.el8.x86_64                                                                                           77/231 
  Installing       : lksctp-tools-1.0.18-3.el8.x86_64                                                                                              78/231 
  Running scriptlet: lksctp-tools-1.0.18-3.el8.x86_64                                                                                              78/231 
  Installing       : bzip2-1.0.6-26.el8.x86_64                                                                                                     79/231 
  Installing       : libxslt-1.1.32-6.el8.x86_64                                                                                                   80/231 
  Installing       : pcre2-utf32-10.32-3.el8_6.x86_64                                                                                              81/231 
  Installing       : pcre2-utf16-10.32-3.el8_6.x86_64                                                                                              82/231 
  Installing       : pcre2-devel-10.32-3.el8_6.x86_64                                                                                              83/231 
  Installing       : libkadm5-1.18.2-22.el8_7.x86_64                                                                                               84/231 
  Installing       : lcms2-2.9-2.el8.x86_64                                                                                                        85/231 
  Running scriptlet: lcms2-2.9-2.el8.x86_64                                                                                                        85/231 
  Installing       : jbigkit-libs-2.1-14.el8.x86_64                                                                                                86/231 
  Running scriptlet: jbigkit-libs-2.1-14.el8.x86_64                                                                                                86/231 
  Installing       : libtiff-4.0.9-28.el8_8.x86_64                                                                                                 87/231 
  Installing       : gdk-pixbuf2-modules-2.36.12-5.el8.x86_64                                                                                      88/231 
  Installing       : libmcpp-2.7.2-20.el8.x86_64                                                                                                   89/231 
  Running scriptlet: libmcpp-2.7.2-20.el8.x86_64                                                                                                   89/231 
  Installing       : mcpp-2.7.2-20.el8.x86_64                                                                                                      90/231 
  Installing       : libatomic_ops-7.6.2-3.el8.x86_64                                                                                              91/231 
  Installing       : gc-7.6.4-3.el8.x86_64                                                                                                         92/231 
  Installing       : guile-5:2.0.14-7.el8.x86_64                                                                                                   93/231 
  Running scriptlet: guile-5:2.0.14-7.el8.x86_64                                                                                                   93/231 
  Installing       : libidn-1.34-5.el8.x86_64                                                                                                      94/231 
  Running scriptlet: libidn-1.34-5.el8.x86_64                                                                                                      94/231 
  Installing       : libijs-0.35-5.el8.x86_64                                                                                                      95/231 
  Installing       : libpaper-1.1.24-22.el8.x86_64                                                                                                 96/231 
  Installing       : libfontenc-1.1.3-8.el8.x86_64                                                                                                 97/231 
  Installing       : xorg-x11-font-utils-1:7.5-41.el8.x86_64                                                                                       98/231 
  Installing       : xorg-x11-fonts-ISO8859-1-100dpi-7.5-19.el8.noarch                                                                             99/231 
  Running scriptlet: xorg-x11-fonts-ISO8859-1-100dpi-7.5-19.el8.noarch                                                                             99/231 
  Installing       : perl-XML-Parser-2.44-11.el8.x86_64                                                                                           100/231 
  Installing       : libdatrie-0.2.9-7.el8.x86_64                                                                                                 101/231 
  Running scriptlet: libdatrie-0.2.9-7.el8.x86_64                                                                                                 101/231 
  Installing       : libthai-0.1.27-2.el8.x86_64                                                                                                  102/231 
  Running scriptlet: libthai-0.1.27-2.el8.x86_64                                                                                                  102/231 
  Installing       : isl-0.16.1-6.el8.x86_64                                                                                                      103/231 
  Running scriptlet: isl-0.16.1-6.el8.x86_64                                                                                                      103/231 
  Installing       : libipt-1.6.1-8.el8.x86_64                                                                                                    104/231 
  Installing       : gdb-headless-8.2-19.el8.x86_64                                                                                               105/231 
  Installing       : libXau-1.0.9-3.el8.x86_64                                                                                                    106/231 
  Installing       : libxcb-1.13.1-1.el8.x86_64                                                                                                   107/231 
  Installing       : jbig2dec-libs-0.16-1.el8.x86_64                                                                                              108/231 
  Running scriptlet: jbig2dec-libs-0.16-1.el8.x86_64                                                                                              108/231 
  Installing       : lua-5.3.4-12.el8.x86_64                                                                                                      109/231 
  Installing       : copy-jdk-configs-4.0-2.el8.noarch                                                                                            110/231 
  Installing       : pixman-0.38.4-2.el8.x86_64                                                                                                   111/231 
  Installing       : openjpeg2-2.4.0-5.el8.x86_64                                                                                                 112/231 
  Installing       : fribidi-1.0.4-9.el8.x86_64                                                                                                   113/231 
  Installing       : ctags-5.8-23.el8.x86_64                                                                                                      114/231 
  Installing       : source-highlight-3.1.8-17.el8.x86_64                                                                                         115/231 
  Running scriptlet: source-highlight-3.1.8-17.el8.x86_64                                                                                         115/231 
  Installing       : libwebp-1.0.0-8.el8_8.1.x86_64                                                                                               116/231 
  Installing       : tzdata-java-2023c-1.el8.noarch                                                                                               117/231 
  Installing       : java-1.8.0-openjdk-headless-1:1.8.0.382.b05-2.el8.x86_64                                                                     118/231 
  Running scriptlet: java-1.8.0-openjdk-headless-1:1.8.0.382.b05-2.el8.x86_64                                                                     118/231 
  Installing       : qt5-srpm-macros-5.15.3-1.el8.noarch                                                                                          119/231 
  Installing       : libX11-common-1.6.8-5.el8.noarch                                                                                             120/231 
  Installing       : libX11-1.6.8-5.el8.x86_64                                                                                                    121/231 
  Installing       : libXext-1.3.4-1.el8.x86_64                                                                                                   122/231 
  Installing       : libXrender-0.9.10-7.el8.x86_64                                                                                               123/231 
  Installing       : libXt-1.1.5-12.el8.x86_64                                                                                                    124/231 
  Installing       : libXmu-1.1.3-1.el8.x86_64                                                                                                    125/231 
  Installing       : libXfixes-5.0.3-7.el8.x86_64                                                                                                 126/231 
  Installing       : libXpm-3.5.12-9.el8_7.x86_64                                                                                                 127/231 
  Installing       : libXcursor-1.1.15-3.el8.x86_64                                                                                               128/231 
  Installing       : libXrandr-1.5.2-1.el8.x86_64                                                                                                 129/231 
  Installing       : libXinerama-1.1.4-1.el8.x86_64                                                                                               130/231 
  Installing       : libXi-1.7.10-1.el8.x86_64                                                                                                    131/231 
  Installing       : libXaw-1.0.13-10.el8.x86_64                                                                                                  132/231 
  Installing       : libXdamage-1.1.4-14.el8.x86_64                                                                                               133/231 
  Installing       : libXxf86misc-1.0.4-1.el8.x86_64                                                                                              134/231 
  Installing       : libXxf86vm-1.1.4-9.el8.x86_64                                                                                                135/231 
  Installing       : xorg-x11-server-utils-7.7-27.el8.x86_64                                                                                      136/231 
  Installing       : fontconfig-2.13.1-4.el8.x86_64                                                                                               137/231 
  Running scriptlet: fontconfig-2.13.1-4.el8.x86_64                                                                                               137/231 
  Installing       : urw-base35-p052-fonts-20170801-10.el8.noarch                                                                                 138/231 
  Running scriptlet: urw-base35-p052-fonts-20170801-10.el8.noarch                                                                                 138/231 
  Installing       : cairo-1.15.12-6.el8.x86_64                                                                                                   139/231 
  Installing       : urw-base35-gothic-fonts-20170801-10.el8.noarch                                                                               140/231 
  Running scriptlet: urw-base35-gothic-fonts-20170801-10.el8.noarch                                                                               140/231 
  Installing       : urw-base35-bookman-fonts-20170801-10.el8.noarch                                                                              141/231 
  Running scriptlet: urw-base35-bookman-fonts-20170801-10.el8.noarch                                                                              141/231 
  Installing       : urw-base35-d050000l-fonts-20170801-10.el8.noarch                                                                             142/231 
  Running scriptlet: urw-base35-d050000l-fonts-20170801-10.el8.noarch                                                                             142/231 
  Installing       : urw-base35-c059-fonts-20170801-10.el8.noarch                                                                                 143/231 
  Running scriptlet: urw-base35-c059-fonts-20170801-10.el8.noarch                                                                                 143/231 
  Installing       : urw-base35-nimbus-mono-ps-fonts-20170801-10.el8.noarch                                                                       144/231 
  Running scriptlet: urw-base35-nimbus-mono-ps-fonts-20170801-10.el8.noarch                                                                       144/231 
  Installing       : urw-base35-nimbus-sans-fonts-20170801-10.el8.noarch                                                                          145/231 
  Running scriptlet: urw-base35-nimbus-sans-fonts-20170801-10.el8.noarch                                                                          145/231 
  Installing       : urw-base35-standard-symbols-ps-fonts-20170801-10.el8.noarch                                                                  146/231 
  Running scriptlet: urw-base35-standard-symbols-ps-fonts-20170801-10.el8.noarch                                                                  146/231 
  Installing       : urw-base35-nimbus-roman-fonts-20170801-10.el8.noarch                                                                         147/231 
  Running scriptlet: urw-base35-nimbus-roman-fonts-20170801-10.el8.noarch                                                                         147/231 
  Installing       : urw-base35-z003-fonts-20170801-10.el8.noarch                                                                                 148/231 
  Running scriptlet: urw-base35-z003-fonts-20170801-10.el8.noarch                                                                                 148/231 
  Installing       : urw-base35-fonts-20170801-10.el8.noarch                                                                                      149/231 
  Installing       : libXft-2.3.3-1.el8.x86_64                                                                                                    150/231 
  Installing       : pango-1.42.4-8.el8.x86_64                                                                                                    151/231 
  Running scriptlet: pango-1.42.4-8.el8.x86_64                                                                                                    151/231 
  Installing       : librsvg2-2.42.7-4.el8.x86_64                                                                                                 152/231 
  Installing       : gd-2.2.5-7.el8.x86_64                                                                                                        153/231 
  Running scriptlet: gd-2.2.5-7.el8.x86_64                                                                                                        153/231 
  Installing       : libXcomposite-0.4.4-14.el8.x86_64                                                                                            154/231 
  Installing       : go-srpm-macros-2-17.el8.noarch                                                                                               155/231 
  Installing       : perl-Fedora-VSP-0.001-9.el8.noarch                                                                                           156/231 
  Installing       : perl-srpm-macros-1-25.el8.noarch                                                                                             157/231 
  Installing       : openblas-srpm-macros-2-2.el8.noarch                                                                                          158/231 
  Installing       : hicolor-icon-theme-0.17-2.el8.noarch                                                                                         159/231 
  Installing       : gtk2-2.24.32-5.el8.x86_64                                                                                                    160/231 
  Running scriptlet: gtk2-2.24.32-5.el8.x86_64                                                                                                    160/231 
  Installing       : adobe-mappings-pdf-20180407-1.el8.noarch                                                                                     161/231 
  Installing       : libgs-9.27-6.el8.x86_64                                                                                                      162/231 
  Installing       : graphviz-2.40.1-44.el8.x86_64                                                                                                163/231 
  Running scriptlet: graphviz-2.40.1-44.el8.x86_64                                                                                                163/231 
  Installing       : ghc-srpm-macros-1.4.2-7.el8.noarch                                                                                           164/231 
  Installing       : perl-Thread-Queue-3.13-1.el8.noarch                                                                                          165/231 
  Installing       : automake-1.16.1-7.el8.noarch                                                                                                 166/231 
  Installing       : ocaml-srpm-macros-5-4.el8.noarch                                                                                             167/231 
  Installing       : rust-srpm-macros-5-2.el8.noarch                                                                                              168/231 
  Installing       : kernel-headers-4.18.0-477.27.1.el8_8.x86_64                                                                                  169/231 
  Running scriptlet: glibc-headers-2.28-225.el8.x86_64                                                                                            170/231 
  Installing       : glibc-headers-2.28-225.el8.x86_64                                                                                            170/231 
  Installing       : glibc-devel-2.28-225.el8.x86_64                                                                                              171/231 
  Running scriptlet: glibc-devel-2.28-225.el8.x86_64                                                                                              171/231 
  Installing       : libxcrypt-devel-4.1.1-6.el8.x86_64                                                                                           172/231 
  Installing       : gcc-8.5.0-18.el8.x86_64                                                                                                      173/231 
  Running scriptlet: gcc-8.5.0-18.el8.x86_64                                                                                                      173/231 
  Installing       : annobin-10.94-1.el8.x86_64                                                                                                   174/231 
  Installing       : gcc-plugin-annobin-8.5.0-18.el8.x86_64                                                                                       175/231 
  Installing       : redhat-rpm-config-131-1.el8.noarch                                                                                           176/231 
  Running scriptlet: redhat-rpm-config-131-1.el8.noarch                                                                                           176/231 
  Installing       : gcc-gdb-plugin-8.5.0-18.el8.x86_64                                                                                           177/231 
  Running scriptlet: gcc-gdb-plugin-8.5.0-18.el8.x86_64                                                                                           177/231 
  Installing       : libcom_err-devel-1.45.6-5.el8.x86_64                                                                                         178/231 
  Installing       : libverto-devel-0.3.2-2.el8.x86_64                                                                                            179/231 
  Installing       : xz-devel-5.2.4-4.el8_6.x86_64                                                                                                180/231 
  Installing       : libsepol-devel-2.9-3.el8.x86_64                                                                                              181/231 
  Installing       : libselinux-devel-2.9-6.el8.x86_64                                                                                            182/231 
  Installing       : keyutils-libs-devel-1.5.10-9.el8.x86_64                                                                                      183/231 
  Installing       : krb5-devel-1.18.2-22.el8_7.x86_64                                                                                            184/231 
  Installing       : openssl-devel-1:1.1.1k-9.el8_7.x86_64                                                                                        185/231 
  Installing       : kernel-devel-4.18.0-477.27.1.el8_8.x86_64                                                                                    186/231 
  Running scriptlet: kernel-devel-4.18.0-477.27.1.el8_8.x86_64                                                                                    186/231 
  Installing       : libzstd-devel-1.4.4-1.el8.x86_64                                                                                             187/231 
  Installing       : elfutils-devel-0.188-3.el8.x86_64                                                                                            188/231 
  Installing       : systemtap-devel-4.8-2.el8.x86_64                                                                                             189/231 
  Installing       : gettext-common-devel-0.19.8.1-17.el8.noarch                                                                                  190/231 
  Installing       : gettext-devel-0.19.8.1-17.el8.x86_64                                                                                         191/231 
  Running scriptlet: gettext-devel-0.19.8.1-17.el8.x86_64                                                                                         191/231 
  Installing       : sgml-common-0.6.3-50.el8.noarch                                                                                              192/231 
  Installing       : docbook-dtds-1.0-69.el8.noarch                                                                                               193/231 
  Running scriptlet: docbook-dtds-1.0-69.el8.noarch                                                                                               193/231 
  Installing       : docbook-style-xsl-1.79.2-9.el8.noarch                                                                                        194/231 
  Running scriptlet: docbook-style-xsl-1.79.2-9.el8.noarch                                                                                        194/231 
  Installing       : asciidoc-8.6.10-0.5.20180627gitf7c2274.el8.noarch                                                                            195/231 
  Installing       : intltool-0.51.0-11.el8.noarch                                                                                                196/231 
  Installing       : systemtap-4.8-2.el8.x86_64                                                                                                   197/231 
  Running scriptlet: systemtap-4.8-2.el8.x86_64                                                                                                   197/231 
  Installing       : gdb-8.2-19.el8.x86_64                                                                                                        198/231 
  Installing       : rpm-build-4.14.3-26.el8.x86_64                                                                                               199/231 
  Installing       : libtool-2.4.6-25.el8.x86_64                                                                                                  200/231 
  Running scriptlet: libtool-2.4.6-25.el8.x86_64                                                                                                  200/231 
  Installing       : gcc-c++-8.5.0-18.el8.x86_64                                                                                                  201/231 
  Installing       : perl-generators-1.10-9.el8.noarch                                                                                            202/231 
  Installing       : jna-4.5.1-5.el8.x86_64                                                                                                       203/231 
  Installing       : valgrind-devel-1:3.19.0-1.el8.x86_64                                                                                         204/231 
  Running scriptlet: pesign-0.112-27.el8_7.x86_64                                                                                                 205/231 
  Installing       : pesign-0.112-27.el8_7.x86_64                                                                                                 205/231 
  Running scriptlet: pesign-0.112-27.el8_7.x86_64                                                                                                 205/231 
  Installing       : rpm-sign-4.14.3-26.el8.x86_64                                                                                                206/231 
  Upgrading        : python3-rpm-4.14.3-26.el8.x86_64                                                                                             207/231 
  Upgrading        : rpm-plugin-selinux-4.14.3-26.el8.x86_64                                                                                      208/231 
  Upgrading        : rpm-plugin-systemd-inhibit-4.14.3-26.el8.x86_64                                                                              209/231 
  Installing       : strace-5.18-2.el8.x86_64                                                                                                     210/231 
  Installing       : ltrace-0.7.91-28.el8.x86_64                                                                                                  211/231 
  Installing       : patchutils-0.3.4-10.el8.x86_64                                                                                               212/231 
  Installing       : perl-Sys-Syslog-0.35-397.el8.x86_64                                                                                          213/231 
  Installing       : byacc-1.9.20170709-4.el8.x86_64                                                                                              214/231 
  Installing       : diffstat-1.61-7.el8.x86_64                                                                                                   215/231 
  Cleanup          : libstdc++-8.5.0-16.el8_7.x86_64                                                                                              216/231 
  Running scriptlet: libstdc++-8.5.0-16.el8_7.x86_64                                                                                              216/231 
  Cleanup          : python3-rpm-4.14.3-24.el8_7.x86_64                                                                                           217/231 
  Cleanup          : rpm-build-libs-4.14.3-24.el8_7.x86_64                                                                                        218/231 
  Running scriptlet: rpm-build-libs-4.14.3-24.el8_7.x86_64                                                                                        218/231 
  Cleanup          : elfutils-libs-0.187-4.el8.x86_64                                                                                             219/231 
  Cleanup          : elfutils-debuginfod-client-0.187-4.el8.x86_64                                                                                220/231 
  Running scriptlet: libgomp-8.5.0-16.el8_7.x86_64                                                                                                221/231 
  Cleanup          : libgomp-8.5.0-16.el8_7.x86_64                                                                                                221/231 
  Running scriptlet: libgomp-8.5.0-16.el8_7.x86_64                                                                                                221/231 
  Cleanup          : rpm-plugin-systemd-inhibit-4.14.3-24.el8_7.x86_64                                                                            222/231 
  Cleanup          : rpm-4.14.3-24.el8_7.x86_64                                                                                                   223/231 
  Cleanup          : rpm-plugin-selinux-4.14.3-24.el8_7.x86_64                                                                                    224/231 
  Cleanup          : rpm-libs-4.14.3-24.el8_7.x86_64                                                                                              225/231 
  Running scriptlet: rpm-libs-4.14.3-24.el8_7.x86_64                                                                                              225/231 
  Cleanup          : elfutils-libelf-0.187-4.el8.x86_64                                                                                           226/231 
  Cleanup          : glibc-langpack-en-2.28-211.el8.x86_64                                                                                        227/231 
  Cleanup          : glibc-common-2.28-211.el8.x86_64                                                                                             228/231 
  Cleanup          : glibc-2.28-211.el8.x86_64                                                                                                    229/231 
  Cleanup          : glibc-gconv-extra-2.28-211.el8.x86_64                                                                                        230/231 
  Running scriptlet: glibc-gconv-extra-2.28-211.el8.x86_64                                                                                        230/231 
  Cleanup          : libgcc-8.5.0-16.el8_7.x86_64                                                                                                 231/231 
  Running scriptlet: libgcc-8.5.0-16.el8_7.x86_64                                                                                                 231/231 
  Running scriptlet: nss-3.90.0-3.el8_8.x86_64                                                                                                    231/231 
  Running scriptlet: guile-5:2.0.14-7.el8.x86_64                                                                                                  231/231 
  Running scriptlet: copy-jdk-configs-4.0-2.el8.noarch                                                                                            231/231 
  Running scriptlet: java-1.8.0-openjdk-headless-1:1.8.0.382.b05-2.el8.x86_64                                                                     231/231 
  Running scriptlet: urw-base35-p052-fonts-20170801-10.el8.noarch                                                                                 231/231 
  Running scriptlet: urw-base35-gothic-fonts-20170801-10.el8.noarch                                                                               231/231 
  Running scriptlet: urw-base35-bookman-fonts-20170801-10.el8.noarch                                                                              231/231 
  Running scriptlet: urw-base35-d050000l-fonts-20170801-10.el8.noarch                                                                             231/231 
  Running scriptlet: urw-base35-c059-fonts-20170801-10.el8.noarch                                                                                 231/231 
  Running scriptlet: urw-base35-nimbus-mono-ps-fonts-20170801-10.el8.noarch                                                                       231/231 
  Running scriptlet: urw-base35-nimbus-sans-fonts-20170801-10.el8.noarch                                                                          231/231 
  Running scriptlet: urw-base35-standard-symbols-ps-fonts-20170801-10.el8.noarch                                                                  231/231 
  Running scriptlet: urw-base35-nimbus-roman-fonts-20170801-10.el8.noarch                                                                         231/231 
  Running scriptlet: urw-base35-z003-fonts-20170801-10.el8.noarch                                                                                 231/231 
  Running scriptlet: libgcc-8.5.0-16.el8_7.x86_64                                                                                                 231/231 
  Running scriptlet: glibc-common-2.28-225.el8.x86_64                                                                                             231/231 
  Running scriptlet: gdk-pixbuf2-2.36.12-5.el8.x86_64                                                                                             231/231 
  Running scriptlet: fontconfig-2.13.1-4.el8.x86_64                                                                                               231/231 
  Running scriptlet: hicolor-icon-theme-0.17-2.el8.noarch                                                                                         231/231 
  Verifying        : lksctp-tools-1.0.18-3.el8.x86_64                                                                                               1/231 
  Verifying        : zip-3.0-23.el8.x86_64                                                                                                          2/231 
  Verifying        : bzip2-1.0.6-26.el8.x86_64                                                                                                      3/231 
  Verifying        : fontpackages-filesystem-1.44-22.el8.noarch                                                                                     4/231 
  Verifying        : m4-1.4.18-7.el8.x86_64                                                                                                         5/231 
  Verifying        : sgml-common-0.6.3-50.el8.noarch                                                                                                6/231 
  Verifying        : xml-common-0.6.3-50.el8.noarch                                                                                                 7/231 
  Verifying        : libtool-ltdl-2.4.6-25.el8.x86_64                                                                                               8/231 
  Verifying        : gettext-common-devel-0.19.8.1-17.el8.noarch                                                                                    9/231 
  Verifying        : gettext-devel-0.19.8.1-17.el8.x86_64                                                                                          10/231 
  Verifying        : gdk-pixbuf2-2.36.12-5.el8.x86_64                                                                                              11/231 
  Verifying        : libicu-60.3-2.el8_1.x86_64                                                                                                    12/231 
  Verifying        : patch-2.7.6-11.el8.x86_64                                                                                                     13/231 
  Verifying        : efivar-libs-37-4.el8.x86_64                                                                                                   14/231 
  Verifying        : libzstd-devel-1.4.4-1.el8.x86_64                                                                                              15/231 
  Verifying        : libxslt-1.1.32-6.el8.x86_64                                                                                                   16/231 
  Verifying        : avahi-libs-0.7-20.el8.x86_64                                                                                                  17/231 
  Verifying        : libxcrypt-devel-4.1.1-6.el8.x86_64                                                                                            18/231 
  Verifying        : keyutils-libs-devel-1.5.10-9.el8.x86_64                                                                                       19/231 
  Verifying        : libsepol-devel-2.9-3.el8.x86_64                                                                                               20/231 
  Verifying        : fontconfig-2.13.1-4.el8.x86_64                                                                                                21/231 
  Verifying        : make-1:4.2.1-11.el8.x86_64                                                                                                    22/231 
  Verifying        : xz-devel-5.2.4-4.el8_6.x86_64                                                                                                 23/231 
  Verifying        : pcre2-utf32-10.32-3.el8_6.x86_64                                                                                              24/231 
  Verifying        : libbabeltrace-1.5.4-4.el8.x86_64                                                                                              25/231 
  Verifying        : libselinux-devel-2.9-6.el8.x86_64                                                                                             26/231 
  Verifying        : pcre2-devel-10.32-3.el8_6.x86_64                                                                                              27/231 
  Verifying        : pcre2-utf16-10.32-3.el8_6.x86_64                                                                                              28/231 
  Verifying        : mokutil-1:0.3.0-12.el8.x86_64                                                                                                 29/231 
  Verifying        : krb5-devel-1.18.2-22.el8_7.x86_64                                                                                             30/231 
  Verifying        : libkadm5-1.18.2-22.el8_7.x86_64                                                                                               31/231 
  Verifying        : openssl-devel-1:1.1.1k-9.el8_7.x86_64                                                                                         32/231 
  Verifying        : libverto-devel-0.3.2-2.el8.x86_64                                                                                             33/231 
  Verifying        : strace-5.18-2.el8.x86_64                                                                                                      34/231 
  Verifying        : libcom_err-devel-1.45.6-5.el8.x86_64                                                                                          35/231 
  Verifying        : zlib-devel-1.2.11-21.el8_7.x86_64                                                                                             36/231 
  Verifying        : binutils-2.30-119.el8.x86_64                                                                                                  37/231 
  Verifying        : elfutils-libelf-devel-0.188-3.el8.x86_64                                                                                      38/231 
  Verifying        : glibc-headers-2.28-225.el8.x86_64                                                                                             39/231 
  Verifying        : elfutils-0.188-3.el8.x86_64                                                                                                   40/231 
  Verifying        : rpm-sign-4.14.3-26.el8.x86_64                                                                                                 41/231 
  Verifying        : elfutils-devel-0.188-3.el8.x86_64                                                                                             42/231 
  Verifying        : glibc-devel-2.28-225.el8.x86_64                                                                                               43/231 
  Verifying        : elfutils-debuginfod-client-devel-0.188-3.el8.x86_64                                                                           44/231 
  Verifying        : cups-libs-1:2.2.6-51.el8_8.2.x86_64                                                                                           45/231 
  Verifying        : kernel-devel-4.18.0-477.27.1.el8_8.x86_64                                                                                     46/231 
  Verifying        : kernel-headers-4.18.0-477.27.1.el8_8.x86_64                                                                                   47/231 
  Verifying        : xorg-x11-fonts-ISO8859-1-100dpi-7.5-19.el8.noarch                                                                             48/231 
  Verifying        : urw-base35-p052-fonts-20170801-10.el8.noarch                                                                                  49/231 
  Verifying        : urw-base35-gothic-fonts-20170801-10.el8.noarch                                                                                50/231 
  Verifying        : docbook-dtds-1.0-69.el8.noarch                                                                                                51/231 
  Verifying        : urw-base35-fonts-20170801-10.el8.noarch                                                                                       52/231 
  Verifying        : intltool-0.51.0-11.el8.noarch                                                                                                 53/231 
  Verifying        : google-droid-sans-fonts-20120715-13.el8.noarch                                                                                54/231 
  Verifying        : rust-srpm-macros-5-2.el8.noarch                                                                                               55/231 
  Verifying        : ocaml-srpm-macros-5-4.el8.noarch                                                                                              56/231 
  Verifying        : urw-base35-bookman-fonts-20170801-10.el8.noarch                                                                               57/231 
  Verifying        : javapackages-filesystem-5.3.0-1.module+el8+2447+6f56d9a6.noarch                                                               58/231 
  Verifying        : perl-Thread-Queue-3.13-1.el8.noarch                                                                                           59/231 
  Verifying        : ghc-srpm-macros-1.4.2-7.el8.noarch                                                                                            60/231 
  Verifying        : urw-base35-fonts-common-20170801-10.el8.noarch                                                                                61/231 
  Verifying        : urw-base35-d050000l-fonts-20170801-10.el8.noarch                                                                              62/231 
  Verifying        : urw-base35-c059-fonts-20170801-10.el8.noarch                                                                                  63/231 
  Verifying        : urw-base35-nimbus-mono-ps-fonts-20170801-10.el8.noarch                                                                        64/231 
  Verifying        : adobe-mappings-cmap-deprecated-20171205-3.el8.noarch                                                                          65/231 
  Verifying        : adobe-mappings-pdf-20180407-1.el8.noarch                                                                                      66/231 
  Verifying        : hicolor-icon-theme-0.17-2.el8.noarch                                                                                          67/231 
  Verifying        : adobe-mappings-cmap-20171205-3.el8.noarch                                                                                     68/231 
  Verifying        : asciidoc-8.6.10-0.5.20180627gitf7c2274.el8.noarch                                                                             69/231 
  Verifying        : openblas-srpm-macros-2-2.el8.noarch                                                                                           70/231 
  Verifying        : perl-srpm-macros-1-25.el8.noarch                                                                                              71/231 
  Verifying        : urw-base35-nimbus-sans-fonts-20170801-10.el8.noarch                                                                           72/231 
  Verifying        : urw-base35-standard-symbols-ps-fonts-20170801-10.el8.noarch                                                                   73/231 
  Verifying        : urw-base35-nimbus-roman-fonts-20170801-10.el8.noarch                                                                          74/231 
  Verifying        : lcms2-2.9-2.el8.x86_64                                                                                                        75/231 
  Verifying        : urw-base35-z003-fonts-20170801-10.el8.noarch                                                                                  76/231 
  Verifying        : perl-Fedora-VSP-0.001-9.el8.noarch                                                                                            77/231 
  Verifying        : jbigkit-libs-2.1-14.el8.x86_64                                                                                                78/231 
  Verifying        : libXxf86misc-1.0.4-1.el8.x86_64                                                                                               79/231 
  Verifying        : libmcpp-2.7.2-20.el8.x86_64                                                                                                   80/231 
  Verifying        : patchutils-0.3.4-10.el8.x86_64                                                                                                81/231 
  Verifying        : perl-Sys-Syslog-0.35-397.el8.x86_64                                                                                           82/231 
  Verifying        : xorg-x11-server-utils-7.7-27.el8.x86_64                                                                                       83/231 
  Verifying        : libXinerama-1.1.4-1.el8.x86_64                                                                                                84/231 
  Verifying        : libatomic_ops-7.6.2-3.el8.x86_64                                                                                              85/231 
  Verifying        : byacc-1.9.20170709-4.el8.x86_64                                                                                               86/231 
  Verifying        : graphite2-1.3.10-10.el8.x86_64                                                                                                87/231 
  Verifying        : libXcursor-1.1.15-3.el8.x86_64                                                                                                88/231 
  Verifying        : mcpp-2.7.2-20.el8.x86_64                                                                                                      89/231 
  Verifying        : libidn-1.34-5.el8.x86_64                                                                                                      90/231 
  Verifying        : libSM-1.2.3-1.el8.x86_64                                                                                                      91/231 
  Verifying        : libXfixes-5.0.3-7.el8.x86_64                                                                                                  92/231 
  Verifying        : libXaw-1.0.13-10.el8.x86_64                                                                                                   93/231 
  Verifying        : tbb-2018.2-9.el8.x86_64                                                                                                       94/231 
  Verifying        : libXxf86vm-1.1.4-9.el8.x86_64                                                                                                 95/231 
  Verifying        : diffstat-1.61-7.el8.x86_64                                                                                                    96/231 
  Verifying        : libthai-0.1.27-2.el8.x86_64                                                                                                   97/231 
  Verifying        : libijs-0.35-5.el8.x86_64                                                                                                      98/231 
  Verifying        : libXdamage-1.1.4-14.el8.x86_64                                                                                                99/231 
  Verifying        : gc-7.6.4-3.el8.x86_64                                                                                                        100/231 
  Verifying        : harfbuzz-1.7.5-3.el8.x86_64                                                                                                  101/231 
  Verifying        : libpaper-1.1.24-22.el8.x86_64                                                                                                102/231 
  Verifying        : libXcomposite-0.4.4-14.el8.x86_64                                                                                            103/231 
  Verifying        : libfontenc-1.1.3-8.el8.x86_64                                                                                                104/231 
  Verifying        : perl-XML-Parser-2.44-11.el8.x86_64                                                                                           105/231 
  Verifying        : libtool-2.4.6-25.el8.x86_64                                                                                                  106/231 
  Verifying        : libXrender-0.9.10-7.el8.x86_64                                                                                               107/231 
  Verifying        : atk-2.28.1-1.el8.x86_64                                                                                                      108/231 
  Verifying        : libdatrie-0.2.9-7.el8.x86_64                                                                                                 109/231 
  Verifying        : guile-5:2.0.14-7.el8.x86_64                                                                                                  110/231 
  Verifying        : isl-0.16.1-6.el8.x86_64                                                                                                      111/231 
  Verifying        : bison-3.0.4-10.el8.x86_64                                                                                                    112/231 
  Verifying        : libipt-1.6.1-8.el8.x86_64                                                                                                    113/231 
  Verifying        : flex-2.6.1-9.el8.x86_64                                                                                                      114/231 
  Verifying        : libXt-1.1.5-12.el8.x86_64                                                                                                    115/231 
  Verifying        : jna-4.5.1-5.el8.x86_64                                                                                                       116/231 
  Verifying        : perl-generators-1.10-9.el8.noarch                                                                                            117/231 
  Verifying        : gdk-pixbuf2-modules-2.36.12-5.el8.x86_64                                                                                     118/231 
  Verifying        : libICE-1.0.9-15.el8.x86_64                                                                                                   119/231 
  Verifying        : ltrace-0.7.91-28.el8.x86_64                                                                                                  120/231 
  Verifying        : libxcb-1.13.1-1.el8.x86_64                                                                                                   121/231 
  Verifying        : libXext-1.3.4-1.el8.x86_64                                                                                                   122/231 
  Verifying        : libXi-1.7.10-1.el8.x86_64                                                                                                    123/231 
  Verifying        : librsvg2-2.42.7-4.el8.x86_64                                                                                                 124/231 
  Verifying        : zstd-1.4.4-1.el8.x86_64                                                                                                      125/231 
  Verifying        : libXrandr-1.5.2-1.el8.x86_64                                                                                                 126/231 
  Verifying        : libXft-2.3.3-1.el8.x86_64                                                                                                    127/231 
  Verifying        : libXau-1.0.9-3.el8.x86_64                                                                                                    128/231 
  Verifying        : gd-2.2.5-7.el8.x86_64                                                                                                        129/231 
  Verifying        : libXmu-1.1.3-1.el8.x86_64                                                                                                    130/231 
  Verifying        : source-highlight-3.1.8-17.el8.x86_64                                                                                         131/231 
  Verifying        : docbook-style-xsl-1.79.2-9.el8.noarch                                                                                        132/231 
  Verifying        : libmpc-1.1.0-9.1.el8.x86_64                                                                                                  133/231 
  Verifying        : automake-1.16.1-7.el8.noarch                                                                                                 134/231 
  Verifying        : gtk2-2.24.32-5.el8.x86_64                                                                                                    135/231 
  Verifying        : efi-srpm-macros-3-3.el8.noarch                                                                                               136/231 
  Verifying        : jbig2dec-libs-0.16-1.el8.x86_64                                                                                              137/231 
  Verifying        : go-srpm-macros-2-17.el8.noarch                                                                                               138/231 
  Verifying        : libjpeg-turbo-1.5.3-12.el8.x86_64                                                                                            139/231 
  Verifying        : lua-5.3.4-12.el8.x86_64                                                                                                      140/231 
  Verifying        : xorg-x11-font-utils-1:7.5-41.el8.x86_64                                                                                      141/231 
  Verifying        : copy-jdk-configs-4.0-2.el8.noarch                                                                                            142/231 
  Verifying        : autoconf-2.69-29.el8.noarch                                                                                                  143/231 
  Verifying        : dwz-0.12-10.el8.x86_64                                                                                                       144/231 
  Verifying        : pango-1.42.4-8.el8.x86_64                                                                                                    145/231 
  Verifying        : libX11-1.6.8-5.el8.x86_64                                                                                                    146/231 
  Verifying        : jasper-libs-2.0.14-5.el8.x86_64                                                                                              147/231 
  Verifying        : libX11-common-1.6.8-5.el8.noarch                                                                                             148/231 
  Verifying        : pixman-0.38.4-2.el8.x86_64                                                                                                   149/231 
  Verifying        : cairo-1.15.12-6.el8.x86_64                                                                                                   150/231 
  Verifying        : openjpeg2-2.4.0-5.el8.x86_64                                                                                                 151/231 
  Verifying        : fribidi-1.0.4-9.el8.x86_64                                                                                                   152/231 
  Verifying        : dyninst-12.1.0-1.el8.x86_64                                                                                                  153/231 
  Verifying        : boost-thread-1.66.0-13.el8.x86_64                                                                                            154/231 
  Verifying        : boost-timer-1.66.0-13.el8.x86_64                                                                                             155/231 
  Verifying        : boost-date-time-1.66.0-13.el8.x86_64                                                                                         156/231 
  Verifying        : gdb-8.2-19.el8.x86_64                                                                                                        157/231 
  Verifying        : boost-chrono-1.66.0-13.el8.x86_64                                                                                            158/231 
  Verifying        : valgrind-1:3.19.0-1.el8.x86_64                                                                                               159/231 
  Verifying        : gtk-update-icon-cache-3.22.30-11.el8.x86_64                                                                                  160/231 
  Verifying        : qt5-srpm-macros-5.15.3-1.el8.noarch                                                                                          161/231 
  Verifying        : gdb-headless-8.2-19.el8.x86_64                                                                                               162/231 
  Verifying        : boost-system-1.66.0-13.el8.x86_64                                                                                            163/231 
  Verifying        : boost-regex-1.66.0-13.el8.x86_64                                                                                             164/231 
  Verifying        : valgrind-devel-1:3.19.0-1.el8.x86_64                                                                                         165/231 
  Verifying        : libXpm-3.5.12-9.el8_7.x86_64                                                                                                 166/231 
  Verifying        : boost-atomic-1.66.0-13.el8.x86_64                                                                                            167/231 
  Verifying        : boost-filesystem-1.66.0-13.el8.x86_64                                                                                        168/231 
  Verifying        : pesign-0.112-27.el8_7.x86_64                                                                                                 169/231 
  Verifying        : tzdata-java-2023c-1.el8.noarch                                                                                               170/231 
  Verifying        : systemtap-4.8-2.el8.x86_64                                                                                                   171/231 
  Verifying        : gcc-8.5.0-18.el8.x86_64                                                                                                      172/231 
  Verifying        : cpp-8.5.0-18.el8.x86_64                                                                                                      173/231 
  Verifying        : rpm-build-4.14.3-26.el8.x86_64                                                                                               174/231 
  Verifying        : ctags-5.8-23.el8.x86_64                                                                                                      175/231 
  Verifying        : systemtap-runtime-4.8-2.el8.x86_64                                                                                           176/231 
  Verifying        : annobin-10.94-1.el8.x86_64                                                                                                   177/231 
  Verifying        : gcc-plugin-annobin-8.5.0-18.el8.x86_64                                                                                       178/231 
  Verifying        : redhat-rpm-config-131-1.el8.noarch                                                                                           179/231 
  Verifying        : python3-rpm-macros-3-45.el8.noarch                                                                                           180/231 
  Verifying        : gcc-gdb-plugin-8.5.0-18.el8.x86_64                                                                                           181/231 
  Verifying        : python-rpm-macros-3-45.el8.noarch                                                                                            182/231 
  Verifying        : gcc-c++-8.5.0-18.el8.x86_64                                                                                                  183/231 
  Verifying        : libgs-9.27-6.el8.x86_64                                                                                                      184/231 
  Verifying        : libstdc++-devel-8.5.0-18.el8.x86_64                                                                                          185/231 
  Verifying        : python-srpm-macros-3-45.el8.noarch                                                                                           186/231 
  Verifying        : graphviz-2.40.1-44.el8.x86_64                                                                                                187/231 
  Verifying        : systemtap-client-4.8-2.el8.x86_64                                                                                            188/231 
  Verifying        : systemtap-devel-4.8-2.el8.x86_64                                                                                             189/231 
  Verifying        : libtiff-4.0.9-28.el8_8.x86_64                                                                                                190/231 
  Verifying        : java-1.8.0-openjdk-headless-1:1.8.0.382.b05-2.el8.x86_64                                                                     191/231 
  Verifying        : nspr-4.35.0-1.el8_8.x86_64                                                                                                   192/231 
  Verifying        : nss-3.90.0-3.el8_8.x86_64                                                                                                    193/231 
  Verifying        : nss-softokn-3.90.0-3.el8_8.x86_64                                                                                            194/231 
  Verifying        : nss-softokn-freebl-3.90.0-3.el8_8.x86_64                                                                                     195/231 
  Verifying        : nss-sysinit-3.90.0-3.el8_8.x86_64                                                                                            196/231 
  Verifying        : nss-tools-3.90.0-3.el8_8.x86_64                                                                                              197/231 
  Verifying        : nss-util-3.90.0-3.el8_8.x86_64                                                                                               198/231 
  Verifying        : libwebp-1.0.0-8.el8_8.1.x86_64                                                                                               199/231 
  Verifying        : rpm-plugin-selinux-4.14.3-26.el8.x86_64                                                                                      200/231 
  Verifying        : rpm-plugin-selinux-4.14.3-24.el8_7.x86_64                                                                                    201/231 
  Verifying        : python3-rpm-4.14.3-26.el8.x86_64                                                                                             202/231 
  Verifying        : python3-rpm-4.14.3-24.el8_7.x86_64                                                                                           203/231 
  Verifying        : rpm-4.14.3-26.el8.x86_64                                                                                                     204/231 
  Verifying        : rpm-4.14.3-24.el8_7.x86_64                                                                                                   205/231 
  Verifying        : rpm-libs-4.14.3-26.el8.x86_64                                                                                                206/231 
  Verifying        : rpm-libs-4.14.3-24.el8_7.x86_64                                                                                              207/231 
  Verifying        : glibc-langpack-en-2.28-225.el8.x86_64                                                                                        208/231 
  Verifying        : glibc-langpack-en-2.28-211.el8.x86_64                                                                                        209/231 
  Verifying        : rpm-plugin-systemd-inhibit-4.14.3-26.el8.x86_64                                                                              210/231 
  Verifying        : rpm-plugin-systemd-inhibit-4.14.3-24.el8_7.x86_64                                                                            211/231 
  Verifying        : elfutils-libs-0.188-3.el8.x86_64                                                                                             212/231 
  Verifying        : elfutils-libs-0.187-4.el8.x86_64                                                                                             213/231 
  Verifying        : libgomp-8.5.0-18.el8.x86_64                                                                                                  214/231 
  Verifying        : libgomp-8.5.0-16.el8_7.x86_64                                                                                                215/231 
  Verifying        : glibc-2.28-225.el8.x86_64                                                                                                    216/231 
  Verifying        : glibc-2.28-211.el8.x86_64                                                                                                    217/231 
  Verifying        : libgcc-8.5.0-18.el8.x86_64                                                                                                   218/231 
  Verifying        : libgcc-8.5.0-16.el8_7.x86_64                                                                                                 219/231 
  Verifying        : rpm-build-libs-4.14.3-26.el8.x86_64                                                                                          220/231 
  Verifying        : rpm-build-libs-4.14.3-24.el8_7.x86_64                                                                                        221/231 
  Verifying        : glibc-gconv-extra-2.28-225.el8.x86_64                                                                                        222/231 
  Verifying        : glibc-gconv-extra-2.28-211.el8.x86_64                                                                                        223/231 
  Verifying        : elfutils-debuginfod-client-0.188-3.el8.x86_64                                                                                224/231 
  Verifying        : elfutils-debuginfod-client-0.187-4.el8.x86_64                                                                                225/231 
  Verifying        : libstdc++-8.5.0-18.el8.x86_64                                                                                                226/231 
  Verifying        : libstdc++-8.5.0-16.el8_7.x86_64                                                                                              227/231 
  Verifying        : elfutils-libelf-0.188-3.el8.x86_64                                                                                           228/231 
  Verifying        : elfutils-libelf-0.187-4.el8.x86_64                                                                                           229/231 
  Verifying        : glibc-common-2.28-225.el8.x86_64                                                                                             230/231 
  Verifying        : glibc-common-2.28-211.el8.x86_64                                                                                             231/231 
Installed products updated.

Upgraded:
  elfutils-debuginfod-client-0.188-3.el8.x86_64             elfutils-libelf-0.188-3.el8.x86_64           elfutils-libs-0.188-3.el8.x86_64                 
  glibc-2.28-225.el8.x86_64                                 glibc-common-2.28-225.el8.x86_64             glibc-gconv-extra-2.28-225.el8.x86_64            
  glibc-langpack-en-2.28-225.el8.x86_64                     libgcc-8.5.0-18.el8.x86_64                   libgomp-8.5.0-18.el8.x86_64                      
  libstdc++-8.5.0-18.el8.x86_64                             python3-rpm-4.14.3-26.el8.x86_64             rpm-4.14.3-26.el8.x86_64                         
  rpm-build-libs-4.14.3-26.el8.x86_64                       rpm-libs-4.14.3-26.el8.x86_64                rpm-plugin-selinux-4.14.3-26.el8.x86_64          
  rpm-plugin-systemd-inhibit-4.14.3-26.el8.x86_64          
Installed:
  adobe-mappings-cmap-20171205-3.el8.noarch                                adobe-mappings-cmap-deprecated-20171205-3.el8.noarch                           
  adobe-mappings-pdf-20180407-1.el8.noarch                                 annobin-10.94-1.el8.x86_64                                                     
  asciidoc-8.6.10-0.5.20180627gitf7c2274.el8.noarch                        atk-2.28.1-1.el8.x86_64                                                        
  autoconf-2.69-29.el8.noarch                                              automake-1.16.1-7.el8.noarch                                                   
  avahi-libs-0.7-20.el8.x86_64                                             binutils-2.30-119.el8.x86_64                                                   
  bison-3.0.4-10.el8.x86_64                                                boost-atomic-1.66.0-13.el8.x86_64                                              
  boost-chrono-1.66.0-13.el8.x86_64                                        boost-date-time-1.66.0-13.el8.x86_64                                           
  boost-filesystem-1.66.0-13.el8.x86_64                                    boost-regex-1.66.0-13.el8.x86_64                                               
  boost-system-1.66.0-13.el8.x86_64                                        boost-thread-1.66.0-13.el8.x86_64                                              
  boost-timer-1.66.0-13.el8.x86_64                                         byacc-1.9.20170709-4.el8.x86_64                                                
  bzip2-1.0.6-26.el8.x86_64                                                cairo-1.15.12-6.el8.x86_64                                                     
  copy-jdk-configs-4.0-2.el8.noarch                                        cpp-8.5.0-18.el8.x86_64                                                        
  ctags-5.8-23.el8.x86_64                                                  cups-libs-1:2.2.6-51.el8_8.2.x86_64                                            
  diffstat-1.61-7.el8.x86_64                                               docbook-dtds-1.0-69.el8.noarch                                                 
  docbook-style-xsl-1.79.2-9.el8.noarch                                    dwz-0.12-10.el8.x86_64                                                         
  dyninst-12.1.0-1.el8.x86_64                                              efi-srpm-macros-3-3.el8.noarch                                                 
  efivar-libs-37-4.el8.x86_64                                              elfutils-0.188-3.el8.x86_64                                                    
  elfutils-debuginfod-client-devel-0.188-3.el8.x86_64                      elfutils-devel-0.188-3.el8.x86_64                                              
  elfutils-libelf-devel-0.188-3.el8.x86_64                                 flex-2.6.1-9.el8.x86_64                                                        
  fontconfig-2.13.1-4.el8.x86_64                                           fontpackages-filesystem-1.44-22.el8.noarch                                     
  fribidi-1.0.4-9.el8.x86_64                                               gc-7.6.4-3.el8.x86_64                                                          
  gcc-8.5.0-18.el8.x86_64                                                  gcc-c++-8.5.0-18.el8.x86_64                                                    
  gcc-gdb-plugin-8.5.0-18.el8.x86_64                                       gcc-plugin-annobin-8.5.0-18.el8.x86_64                                         
  gd-2.2.5-7.el8.x86_64                                                    gdb-8.2-19.el8.x86_64                                                          
  gdb-headless-8.2-19.el8.x86_64                                           gdk-pixbuf2-2.36.12-5.el8.x86_64                                               
  gdk-pixbuf2-modules-2.36.12-5.el8.x86_64                                 gettext-common-devel-0.19.8.1-17.el8.noarch                                    
  gettext-devel-0.19.8.1-17.el8.x86_64                                     ghc-srpm-macros-1.4.2-7.el8.noarch                                             
  glibc-devel-2.28-225.el8.x86_64                                          glibc-headers-2.28-225.el8.x86_64                                              
  go-srpm-macros-2-17.el8.noarch                                           google-droid-sans-fonts-20120715-13.el8.noarch                                 
  graphite2-1.3.10-10.el8.x86_64                                           graphviz-2.40.1-44.el8.x86_64                                                  
  gtk-update-icon-cache-3.22.30-11.el8.x86_64                              gtk2-2.24.32-5.el8.x86_64                                                      
  guile-5:2.0.14-7.el8.x86_64                                              harfbuzz-1.7.5-3.el8.x86_64                                                    
  hicolor-icon-theme-0.17-2.el8.noarch                                     intltool-0.51.0-11.el8.noarch                                                  
  isl-0.16.1-6.el8.x86_64                                                  jasper-libs-2.0.14-5.el8.x86_64                                                
  java-1.8.0-openjdk-headless-1:1.8.0.382.b05-2.el8.x86_64                 javapackages-filesystem-5.3.0-1.module+el8+2447+6f56d9a6.noarch                
  jbig2dec-libs-0.16-1.el8.x86_64                                          jbigkit-libs-2.1-14.el8.x86_64                                                 
  jna-4.5.1-5.el8.x86_64                                                   kernel-devel-4.18.0-477.27.1.el8_8.x86_64                                      
  kernel-headers-4.18.0-477.27.1.el8_8.x86_64                              keyutils-libs-devel-1.5.10-9.el8.x86_64                                        
  krb5-devel-1.18.2-22.el8_7.x86_64                                        lcms2-2.9-2.el8.x86_64                                                         
  libICE-1.0.9-15.el8.x86_64                                               libSM-1.2.3-1.el8.x86_64                                                       
  libX11-1.6.8-5.el8.x86_64                                                libX11-common-1.6.8-5.el8.noarch                                               
  libXau-1.0.9-3.el8.x86_64                                                libXaw-1.0.13-10.el8.x86_64                                                    
  libXcomposite-0.4.4-14.el8.x86_64                                        libXcursor-1.1.15-3.el8.x86_64                                                 
  libXdamage-1.1.4-14.el8.x86_64                                           libXext-1.3.4-1.el8.x86_64                                                     
  libXfixes-5.0.3-7.el8.x86_64                                             libXft-2.3.3-1.el8.x86_64                                                      
  libXi-1.7.10-1.el8.x86_64                                                libXinerama-1.1.4-1.el8.x86_64                                                 
  libXmu-1.1.3-1.el8.x86_64                                                libXpm-3.5.12-9.el8_7.x86_64                                                   
  libXrandr-1.5.2-1.el8.x86_64                                             libXrender-0.9.10-7.el8.x86_64                                                 
  libXt-1.1.5-12.el8.x86_64                                                libXxf86misc-1.0.4-1.el8.x86_64                                                
  libXxf86vm-1.1.4-9.el8.x86_64                                            libatomic_ops-7.6.2-3.el8.x86_64                                               
  libbabeltrace-1.5.4-4.el8.x86_64                                         libcom_err-devel-1.45.6-5.el8.x86_64                                           
  libdatrie-0.2.9-7.el8.x86_64                                             libfontenc-1.1.3-8.el8.x86_64                                                  
  libgs-9.27-6.el8.x86_64                                                  libicu-60.3-2.el8_1.x86_64                                                     
  libidn-1.34-5.el8.x86_64                                                 libijs-0.35-5.el8.x86_64                                                       
  libipt-1.6.1-8.el8.x86_64                                                libjpeg-turbo-1.5.3-12.el8.x86_64                                              
  libkadm5-1.18.2-22.el8_7.x86_64                                          libmcpp-2.7.2-20.el8.x86_64                                                    
  libmpc-1.1.0-9.1.el8.x86_64                                              libpaper-1.1.24-22.el8.x86_64                                                  
  librsvg2-2.42.7-4.el8.x86_64                                             libselinux-devel-2.9-6.el8.x86_64                                              
  libsepol-devel-2.9-3.el8.x86_64                                          libstdc++-devel-8.5.0-18.el8.x86_64                                            
  libthai-0.1.27-2.el8.x86_64                                              libtiff-4.0.9-28.el8_8.x86_64                                                  
  libtool-2.4.6-25.el8.x86_64                                              libtool-ltdl-2.4.6-25.el8.x86_64                                               
  libverto-devel-0.3.2-2.el8.x86_64                                        libwebp-1.0.0-8.el8_8.1.x86_64                                                 
  libxcb-1.13.1-1.el8.x86_64                                               libxcrypt-devel-4.1.1-6.el8.x86_64                                             
  libxslt-1.1.32-6.el8.x86_64                                              libzstd-devel-1.4.4-1.el8.x86_64                                               
  lksctp-tools-1.0.18-3.el8.x86_64                                         ltrace-0.7.91-28.el8.x86_64                                                    
  lua-5.3.4-12.el8.x86_64                                                  m4-1.4.18-7.el8.x86_64                                                         
  make-1:4.2.1-11.el8.x86_64                                               mcpp-2.7.2-20.el8.x86_64                                                       
  mokutil-1:0.3.0-12.el8.x86_64                                            nspr-4.35.0-1.el8_8.x86_64                                                     
  nss-3.90.0-3.el8_8.x86_64                                                nss-softokn-3.90.0-3.el8_8.x86_64                                              
  nss-softokn-freebl-3.90.0-3.el8_8.x86_64                                 nss-sysinit-3.90.0-3.el8_8.x86_64                                              
  nss-tools-3.90.0-3.el8_8.x86_64                                          nss-util-3.90.0-3.el8_8.x86_64                                                 
  ocaml-srpm-macros-5-4.el8.noarch                                         openblas-srpm-macros-2-2.el8.noarch                                            
  openjpeg2-2.4.0-5.el8.x86_64                                             openssl-devel-1:1.1.1k-9.el8_7.x86_64                                          
  pango-1.42.4-8.el8.x86_64                                                patch-2.7.6-11.el8.x86_64                                                      
  patchutils-0.3.4-10.el8.x86_64                                           pcre2-devel-10.32-3.el8_6.x86_64                                               
  pcre2-utf16-10.32-3.el8_6.x86_64                                         pcre2-utf32-10.32-3.el8_6.x86_64                                               
  perl-Fedora-VSP-0.001-9.el8.noarch                                       perl-Sys-Syslog-0.35-397.el8.x86_64                                            
  perl-Thread-Queue-3.13-1.el8.noarch                                      perl-XML-Parser-2.44-11.el8.x86_64                                             
  perl-generators-1.10-9.el8.noarch                                        perl-srpm-macros-1-25.el8.noarch                                               
  pesign-0.112-27.el8_7.x86_64                                             pixman-0.38.4-2.el8.x86_64                                                     
  python-rpm-macros-3-45.el8.noarch                                        python-srpm-macros-3-45.el8.noarch                                             
  python3-rpm-macros-3-45.el8.noarch                                       qt5-srpm-macros-5.15.3-1.el8.noarch                                            
  redhat-rpm-config-131-1.el8.noarch                                       rpm-build-4.14.3-26.el8.x86_64                                                 
  rpm-sign-4.14.3-26.el8.x86_64                                            rust-srpm-macros-5-2.el8.noarch                                                
  sgml-common-0.6.3-50.el8.noarch                                          source-highlight-3.1.8-17.el8.x86_64                                           
  strace-5.18-2.el8.x86_64                                                 systemtap-4.8-2.el8.x86_64                                                     
  systemtap-client-4.8-2.el8.x86_64                                        systemtap-devel-4.8-2.el8.x86_64                                               
  systemtap-runtime-4.8-2.el8.x86_64                                       tbb-2018.2-9.el8.x86_64                                                        
  tzdata-java-2023c-1.el8.noarch                                           urw-base35-bookman-fonts-20170801-10.el8.noarch                                
  urw-base35-c059-fonts-20170801-10.el8.noarch                             urw-base35-d050000l-fonts-20170801-10.el8.noarch                               
  urw-base35-fonts-20170801-10.el8.noarch                                  urw-base35-fonts-common-20170801-10.el8.noarch                                 
  urw-base35-gothic-fonts-20170801-10.el8.noarch                           urw-base35-nimbus-mono-ps-fonts-20170801-10.el8.noarch                         
  urw-base35-nimbus-roman-fonts-20170801-10.el8.noarch                     urw-base35-nimbus-sans-fonts-20170801-10.el8.noarch                            
  urw-base35-p052-fonts-20170801-10.el8.noarch                             urw-base35-standard-symbols-ps-fonts-20170801-10.el8.noarch                    
  urw-base35-z003-fonts-20170801-10.el8.noarch                             valgrind-1:3.19.0-1.el8.x86_64                                                 
  valgrind-devel-1:3.19.0-1.el8.x86_64                                     xml-common-0.6.3-50.el8.noarch                                                 
  xorg-x11-font-utils-1:7.5-41.el8.x86_64                                  xorg-x11-fonts-ISO8859-1-100dpi-7.5-19.el8.noarch                              
  xorg-x11-server-utils-7.7-27.el8.x86_64                                  xz-devel-5.2.4-4.el8_6.x86_64                                                  
  zip-3.0-23.el8.x86_64                                                    zlib-devel-1.2.11-21.el8_7.x86_64                                              
  zstd-1.4.4-1.el8.x86_64                                                 

Complete!
[ec2-user@node1 ~]$ sudo dnf install python3-devel mysql-devel -y
Updating Subscription Management repositories.
Red Hat Enterprise Linux 8 for x86_64 - BaseOS (RPMs)                                                                     108 kB/s | 4.1 kB     00:00    
Red Hat Ansible Engine 2 for RHEL 8 x86_64 (RPMs)                                                                         104 kB/s | 4.0 kB     00:00    
Red Hat Enterprise Linux 8 for x86_64 - AppStream (RPMs)                                                                  114 kB/s | 4.5 kB     00:00    
Red Hat Enterprise Linux 8 for x86_64 - Supplementary (RPMs)                                                              108 kB/s | 3.8 kB     00:00    
Dependencies resolved.
==========================================================================================================================================================
 Package                              Architecture     Version                                           Repository                                  Size
==========================================================================================================================================================
Installing:
 mysql-devel                          x86_64           8.0.32-1.module+el8.8.0+18446+fca6280e            rhel-8-for-x86_64-appstream-rpms           160 k
 python36-devel                       x86_64           3.6.8-38.module+el8.5.0+12207+5c5719bc            rhel-8-for-x86_64-appstream-rpms            17 k
Installing dependencies:
 mariadb-connector-c-config           noarch           3.1.11-2.el8_3                                    rhel-8-for-x86_64-appstream-rpms            15 k
 mysql-common                         x86_64           8.0.32-1.module+el8.8.0+18446+fca6280e            rhel-8-for-x86_64-appstream-rpms           137 k
 mysql-libs                           x86_64           8.0.32-1.module+el8.8.0+18446+fca6280e            rhel-8-for-x86_64-appstream-rpms           1.5 M
 platform-python-devel                x86_64           3.6.8-48.el8_7.1                                  rhel-8-for-x86_64-appstream-rpms           251 k
 python3-rpm-generators               noarch           5-8.el8                                           rhel-8-for-x86_64-appstream-rpms            25 k
Enabling module streams:
 mysql                                                 8.0                                                                                               

Transaction Summary
==========================================================================================================================================================
Install  7 Packages

Total download size: 2.1 M
Installed size: 8.9 M
Downloading Packages:
(1/7): python36-devel-3.6.8-38.module+el8.5.0+12207+5c5719bc.x86_64.rpm                                                   350 kB/s |  17 kB     00:00    
(2/7): platform-python-devel-3.6.8-48.el8_7.1.x86_64.rpm                                                                  3.9 MB/s | 251 kB     00:00    
(3/7): mariadb-connector-c-config-3.1.11-2.el8_3.noarch.rpm                                                               221 kB/s |  15 kB     00:00    
(4/7): python3-rpm-generators-5-8.el8.noarch.rpm                                                                          1.1 MB/s |  25 kB     00:00    
(5/7): mysql-devel-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64.rpm                                                      5.5 MB/s | 160 kB     00:00    
(6/7): mysql-common-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64.rpm                                                     3.1 MB/s | 137 kB     00:00    
(7/7): mysql-libs-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64.rpm                                                        24 MB/s | 1.5 MB     00:00    
----------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                      16 MB/s | 2.1 MB     00:00     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                                                  1/1 
  Installing       : python3-rpm-generators-5-8.el8.noarch                                                                                            1/7 
  Installing       : platform-python-devel-3.6.8-48.el8_7.1.x86_64                                                                                    2/7 
  Installing       : mariadb-connector-c-config-3.1.11-2.el8_3.noarch                                                                                 3/7 
warning: /etc/my.cnf created as /etc/my.cnf.rpmnew

  Installing       : mysql-common-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                                                                       4/7 
  Installing       : mysql-libs-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                                                                         5/7 
  Installing       : mysql-devel-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                                                                        6/7 
  Installing       : python36-devel-3.6.8-38.module+el8.5.0+12207+5c5719bc.x86_64                                                                     7/7 
  Running scriptlet: python36-devel-3.6.8-38.module+el8.5.0+12207+5c5719bc.x86_64                                                                     7/7 
  Verifying        : mariadb-connector-c-config-3.1.11-2.el8_3.noarch                                                                                 1/7 
  Verifying        : python36-devel-3.6.8-38.module+el8.5.0+12207+5c5719bc.x86_64                                                                     2/7 
  Verifying        : platform-python-devel-3.6.8-48.el8_7.1.x86_64                                                                                    3/7 
  Verifying        : python3-rpm-generators-5-8.el8.noarch                                                                                            4/7 
  Verifying        : mysql-libs-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                                                                         5/7 
  Verifying        : mysql-common-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                                                                       6/7 
  Verifying        : mysql-devel-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                                                                        7/7 
Installed products updated.

Installed:
  mariadb-connector-c-config-3.1.11-2.el8_3.noarch                             mysql-common-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                
  mysql-devel-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                    mysql-libs-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                  
  platform-python-devel-3.6.8-48.el8_7.1.x86_64                                python3-rpm-generators-5-8.el8.noarch                                     
  python36-devel-3.6.8-38.module+el8.5.0+12207+5c5719bc.x86_64                

Complete!
[ec2-user@node1 ~]$ sudo dnf install mysql -y
Updating Subscription Management repositories.
Red Hat Enterprise Linux 8 for x86_64 - BaseOS (RPMs)                                                                     111 kB/s | 4.1 kB     00:00    
Red Hat Ansible Engine 2 for RHEL 8 x86_64 (RPMs)                                                                         110 kB/s | 4.0 kB     00:00    
Red Hat Enterprise Linux 8 for x86_64 - AppStream (RPMs)                                                                  108 kB/s | 4.5 kB     00:00    
Red Hat Enterprise Linux 8 for x86_64 - Supplementary (RPMs)                                                              102 kB/s | 3.8 kB     00:00    
Dependencies resolved.
==========================================================================================================================================================
 Package              Architecture          Version                                                 Repository                                       Size
==========================================================================================================================================================
Installing:
 mysql                x86_64                8.0.32-1.module+el8.8.0+18446+fca6280e                  rhel-8-for-x86_64-appstream-rpms                 15 M

Transaction Summary
==========================================================================================================================================================
Install  1 Package

Total download size: 15 M
Installed size: 73 M
Downloading Packages:
mysql-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64.rpm                                                                    50 MB/s |  15 MB     00:00    
----------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                      50 MB/s |  15 MB     00:00     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                                                  1/1 
  Installing       : mysql-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                                                                              1/1 
  Running scriptlet: mysql-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                                                                              1/1 
  Verifying        : mysql-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                                                                              1/1 
Installed products updated.

Installed:
  mysql-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                                                                                                     

Complete!
[ec2-user@node1 ~]$ sudo systemctl status mysql
Unit mysql.service could not be found.
[ec2-user@node1 ~]$ sudo pip3 install mysql
WARNING: Running pip install with root privileges is generally not a good idea. Try `pip3 install --user` instead.
Collecting mysql
  Using cached https://files.pythonhosted.org/packages/9a/52/8d29c58f6ae448a72fbc612955bd31accb930ca479a7ba7197f4ae4edec2/mysql-0.0.3-py3-none-any.whl
Collecting mysqlclient (from mysql)
  Using cached https://files.pythonhosted.org/packages/50/5f/eac919b88b9df39bbe4a855f136d58f80d191cfea34a3dcf96bf5d8ace0a/mysqlclient-2.1.1.tar.gz
Installing collected packages: mysqlclient, mysql
  Running setup.py install for mysqlclient ... done
Successfully installed mysql-0.0.3 mysqlclient-2.1.1
[ec2-user@node1 ~]$ mysql -u your_mysql_user -p -h localhost
mysql: [ERROR] Found option without preceding group in config file /etc/my.cnf at line 1.
mysql: [ERROR] Fatal error in defaults handling. Program aborted!
[ec2-user@node1 ~]$ mysql
mysql: [ERROR] Found option without preceding group in config file /etc/my.cnf at line 1.
mysql: [ERROR] Fatal error in defaults handling. Program aborted!
[ec2-user@node1 ~]$ cat mysql -u your_mysql_user -p -h localhost
cat: invalid option -- 'p'
Try 'cat --help' for more information.
[ec2-user@node1 ~]$ sudo cat /etc/my.cnf
bind-address = 127.0.0.1
[ec2-user@node1 ~]$ sudo vi /etc/my.cnf
[ec2-user@node1 ~]$ mysql
ERROR 2002 (HY000): Can't connect to local MySQL server through socket '/var/lib/mysql/mysql.sock' (2)
[ec2-user@node1 ~]$ mysql -u test -p 123 -h localhost
Enter password: 
ERROR 2002 (HY000): Can't connect to local MySQL server through socket '/var/lib/mysql/mysql.sock' (2)
[ec2-user@node1 ~]$ mysql -u test -p -h localhost
Enter password: 
ERROR 2002 (HY000): Can't connect to local MySQL server through socket '/var/lib/mysql/mysql.sock' (2)
[ec2-user@node1 ~]$ sudo systemctl status mysqld
Unit mysqld.service could not be found.
[ec2-user@node1 ~]$ sudo dnf install mysql-server
Updating Subscription Management repositories.
Red Hat Enterprise Linux 8 for x86_64 - BaseOS (RPMs)                                                                     128 kB/s | 4.1 kB     00:00    
Red Hat Ansible Engine 2 for RHEL 8 x86_64 (RPMs)                                                                         119 kB/s | 4.0 kB     00:00    
Red Hat Enterprise Linux 8 for x86_64 - AppStream (RPMs)                                                                  139 kB/s | 4.5 kB     00:00    
Red Hat Enterprise Linux 8 for x86_64 - Supplementary (RPMs)                                                              118 kB/s | 3.8 kB     00:00    
Dependencies resolved.
==========================================================================================================================================================
 Package                    Architecture        Version                                               Repository                                     Size
==========================================================================================================================================================
Installing:
 mysql-server               x86_64              8.0.32-1.module+el8.8.0+18446+fca6280e                rhel-8-for-x86_64-appstream-rpms               32 M
Installing dependencies:
 libaio                     x86_64              0.3.112-1.el8                                         rhel-8-for-x86_64-baseos-rpms                  33 k
 mecab                      x86_64              0.996-2.module+el8.8.0+18436+8918dd75                 rhel-8-for-x86_64-appstream-rpms              394 k
 mysql-errmsg               x86_64              8.0.32-1.module+el8.8.0+18446+fca6280e                rhel-8-for-x86_64-appstream-rpms              629 k
 protobuf-lite              x86_64              3.5.0-15.el8                                          rhel-8-for-x86_64-appstream-rpms              149 k

Transaction Summary
==========================================================================================================================================================
Install  5 Packages

Total download size: 33 M
Installed size: 171 M
Is this ok [y/N]: y
Downloading Packages:
(1/5): libaio-0.3.112-1.el8.x86_64.rpm                                                                                    512 kB/s |  33 kB     00:00    
(2/5): protobuf-lite-3.5.0-15.el8.x86_64.rpm                                                                              1.9 MB/s | 149 kB     00:00    
(3/5): mecab-0.996-2.module+el8.8.0+18436+8918dd75.x86_64.rpm                                                              11 MB/s | 394 kB     00:00    
(4/5): mysql-errmsg-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64.rpm                                                     5.3 MB/s | 629 kB     00:00    
(5/5): mysql-server-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64.rpm                                                      54 MB/s |  32 MB     00:00    
----------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                      49 MB/s |  33 MB     00:00     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                                                  1/1 
  Installing       : mecab-0.996-2.module+el8.8.0+18436+8918dd75.x86_64                                                                               1/5 
  Running scriptlet: mecab-0.996-2.module+el8.8.0+18436+8918dd75.x86_64                                                                               1/5 
  Installing       : mysql-errmsg-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                                                                       2/5 
  Installing       : protobuf-lite-3.5.0-15.el8.x86_64                                                                                                3/5 
  Installing       : libaio-0.3.112-1.el8.x86_64                                                                                                      4/5 
  Running scriptlet: mysql-server-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                                                                       5/5 
  Installing       : mysql-server-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                                                                       5/5 
  Running scriptlet: mysql-server-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                                                                       5/5 
ValueError: File context for /var/log/mysql(/.*)? already defined

  Verifying        : libaio-0.3.112-1.el8.x86_64                                                                                                      1/5 
  Verifying        : protobuf-lite-3.5.0-15.el8.x86_64                                                                                                2/5 
  Verifying        : mysql-errmsg-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                                                                       3/5 
  Verifying        : mecab-0.996-2.module+el8.8.0+18436+8918dd75.x86_64                                                                               4/5 
  Verifying        : mysql-server-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                                                                       5/5 
Installed products updated.

Installed:
  libaio-0.3.112-1.el8.x86_64                                                 mecab-0.996-2.module+el8.8.0+18436+8918dd75.x86_64                         
  mysql-errmsg-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                  mysql-server-8.0.32-1.module+el8.8.0+18446+fca6280e.x86_64                 
  protobuf-lite-3.5.0-15.el8.x86_64                                          

Complete!
[ec2-user@node1 ~]$ sudo systemctl start mysqld
[ec2-user@node1 ~]$ sudo systemctl enable mysqld
Created symlink /etc/systemd/system/multi-user.target.wants/mysqld.service → /usr/lib/systemd/system/mysqld.service.
[ec2-user@node1 ~]$ mysql -u test -p -h localhost
Enter password: 
ERROR 1045 (28000): Access denied for user 'test'@'localhost' (using password: YES)
[ec2-user@node1 ~]$ mysql -u test -p -h localhost
Enter password: 
ERROR 1045 (28000): Access denied for user 'test'@'localhost' (using password: YES)
[ec2-user@node1 ~]$ sudo mysql -u root -p
Enter password: 
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: YES)
[ec2-user@node1 ~]$ mysql
ERROR 1045 (28000): Access denied for user 'ec2-user'@'localhost' (using password: NO)
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ sudo su -
[root@node1 ~]# mysql
ERROR 1045 (28000): Access denied for user 'test'@'localhost' (using password: YES)
[root@node1 ~]# exit
logout
[ec2-user@node1 ~]$ sql
-bash: sql: command not found
[ec2-user@node1 ~]$ sudo mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 13
Server version: 8.0.32 Source distribution

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SELECT user, host FROM mysql.user WHERE user = 'test';
Empty set (0.00 sec)

mysql> CREATE USER 'test'@'localhost' IDENTIFIED BY 'your_password';
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE USER 'test'@'localhost' IDENTIFIED BY '123'; 
ERROR 1396 (HY000): Operation CREATE USER failed for 'test'@'localhost'
mysql> SELECT user, host FROM mysql.user WHERE user = 'test';
+------+-----------+
| user | host      |
+------+-----------+
| test | localhost |
+------+-----------+
1 row in set (0.00 sec)

mysql> DROP USER 'test'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE USER 'test'@'localhost' IDENTIFIED BY '123'; 
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT user, host FROM mysql.user WHERE user = 'test';
+------+-----------+
| user | host      |
+------+-----------+
| test | localhost |
+------+-----------+
1 row in set (0.00 sec)

mysql> 
[8]+  Stopped                 sudo mysql -u root -p
[ec2-user@node1 ~]$ mysqlmysql -u test -p -h localhostmysql -u test -p -h localhost
-bash: mysqlmysql: command not found
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ 
[ec2-user@node1 ~]$ mysql -u test -p -h localhost
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 14
Server version: 8.0.32 Source distribution

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> GRANT ALL PRIVILEGES ON *.* TO 'test'@'localhost';
ERROR 1045 (28000): Access denied for user 'test'@'localhost' (using password: YES)
mysql> FLUSH PRIVILEGES;
ERROR 1227 (42000): Access denied; you need (at least one of) the RELOAD privilege(s) for this operation
mysql> 
[9]+  Stopped                 mysql -u test -p -h localhost
[ec2-user@node1 ~]$ sudo mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 16
Server version: 8.0.32 Source distribution

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> GRANT ALL PRIVILEGES ON *.* TO 'test'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.00 sec)

mysql> exit
Bye
[ec2-user@node1 ~]$ client_loop: send disconnect: Broken pipe
rdodia@rdodia-mac ~ % ssh -i "AAP.pem" ec2-user@ec2-54-252-142-141.ap-southeast-2.compute.amazonaws.com


Prep
[ec2-user@node1 ~]$ mysql -u test -p -h localhost
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 20
Server version: 8.0.32 Source distribution
Copyright (c) 2000, 2023, Oracle and/or its affiliates.
Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.
Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
mysql> CREATE DATABASE RBL;
Query OK, 1 row affected (0.01 sec)
mysql> USE RBL;
Database changed
mysql> CREATE TABLE apps(appid INT, name VARCHAR(20), ip VARCHAR(20));
Query OK, 0 rows affected (0.02 sec)
mysql> SHOW TABLES;
+---------------+
| Tables_in_RBL |
+---------------+
| apps          |
+---------------+
1 row in set (0.00 sec)
mysql> INSERT INTO apps(appid,name,ip) VALUES(1,"retail banking","10.30.43.44");
Query OK, 1 row affected (0.01 sec)
mysql> INSERT INTO apps(appid,name,ip) VALUES(2,"whatsapp banking","119.34.55.45");
Query OK, 1 row affected (0.00 sec)
mysql> INSERT INTO apps(appid,name,ip) VALUES(3,"coorporate banking","12.24.52.60");
Query OK, 1 row affected (0.00 sec)
mysql> SELECT * FROM apps;
+-------+--------------------+--------------+
| appid | name               | ip           |
+-------+--------------------+--------------+
|     1 | retail banking     | 10.30.43.44  |
|     2 | whatsapp banking   | 119.34.55.45 |
|     3 | coorporate banking | 12.24.52.60  |
+-------+--------------------+--------------+
3 rows in set (0.01 sec)
