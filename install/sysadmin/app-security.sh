# SECURITY AND COMPLIANCE TOOLS

# SELinux
# A security architecture for Linux systems that provides a mechanism for supporting access control security policies, including mandatory access controls.
systemctl status apparmor #checking status
systemctl start apparmor #starting apparmor
sudo systemctl stop apparmor #stoping the damn thing
sudo apt install policycoreutils selinux-basics selinux-utils -y #installing selinux
sudo selinux-activate #activating selinux


# Fail2ban
# A log-parsing application that protects servers from brute-force attacks by monitoring log files and banning IPs that show malicious signs.
sudo apt-get install fail2ban #install fail2ban
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local #copy jail.conf file and then edit conf yourself

# ClamAV
# An open-source antivirus engine designed for detecting trojans, viruses, malware, and other malicious threats on Linux systems.
sudo apt-get install clamav clamav-daemon -y #install clamAV
sudo systemctl stop clamav-freshclam #stop clam to update AV database
sudo freshclam #update virus database
sudo systemctl start clamav-freshclam #start clam