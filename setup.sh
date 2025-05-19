bastille create wazuh-dashboard 14.2-RELEASE 10.0.0.30
bastille cmd wazuh-dashboard sed -e "s|quarterly|latest|g" -i.bak /etc/pkg/FreeBSD.conf
bastille cmd wazuh-dashboard sed -e "s|#PermitRootLogin no|PermitRootLogin yes|g" -i.bak /etc/ssh/sshd_config
bastille cmd wazuh-dashboard sed -e "s|#PasswordAuthentication no|PasswordAuthentication yes|g" -i.bak /etc/ssh/sshd_config
bastille cmd wazuh-dashboard sed -e "s|#PermitEmptyPasswords no|PermitEmptyPasswords yes|g" -i.bak /etc/ssh/sshd_config
bastille cmd wazuh-dashboard service sshd enable
bastille cmd wazuh-dashboard service sshd start
bastille cmd wazuh-dashboard passwd
#cp config/* /usr/local/bastille/jails/wazuh-dashboard/
bastille stop wazuh-dashboard; bastille start wazuh-dashboard
bastille pkg wazuh-dashboard update -y; bastille pkg wazuh-dashboard update
bastille pkg wazuh-dashboard install -y wazuh-dashboard
bastille pkg wazuh-dashboard info -D -x wazuh-dashboard | less

bastille bootstrap https://github.com/bastille-templates/wazuh-dashboard
bastille template wazuh-dashboard bastille-templates/wazuh-dashboard
