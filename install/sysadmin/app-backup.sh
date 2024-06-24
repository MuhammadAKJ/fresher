# BACKUP AND RECOVERY TOOLS

# rsync
# A fast and versatile file copying tool that can synchronize files and directories between different locations with minimal data transfer.
sudo apt-get install rsync

# Bacula
# A set of programs that allow managing backup, recovery, and verification of data across a network of different kinds of computers.
sudo apt install bacula #default bacula uses postgresql
# sudo apt install bacula-director-sqlite3
# sudo apt install bacula-director-mysql

# Duplicity
# A backup solution that provides encrypted, bandwidth-efficient backup using the rsync algorithm, with support for various storage backends.
sudo apt install duplicity