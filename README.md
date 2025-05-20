# wazuh-dashboard
Wazuh dashboard, users can visualize security events, detected vulnerabilities, file integrity monitoring data, configuration assessment results, cloud infrastructure monitoring events, and regulatory compliance standards.

## Now apply template to container
```sh
bastille pkg wazuh-dashboard info -D -x wazuh-dashboard | less
```
Edii file /usr/local/bastille/jails/wazuh-dashboard/fstab
```sh
fdesc	/dev/fd		fdescfs		rw	0	0
proc	/proc		procfs		rw	0	0
```

## License
This project is licensed under the BSD-3-Clause license.