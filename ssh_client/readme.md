# Exercise 2

## Preconditions
This exercise is done on a HP Pavillion  p6-2020sc computer, running Kubuntu 16.04.2 live-USB. Puppet, Git and SSH server have already been installed and verified to be working. In addition, this git project has been cloned to the computer.

## The meat
First the boring stuff: Creating the right directories and making a copy of the ssh_config file into the templates:
    kubuntu@kubuntu:~/puppet-practices$ mkdir ssh/
    mkdir: cannot create directory ‘ssh/’: File exists
    kubuntu@kubuntu:~/puppet-practices$ ls
    apache  exercise2.md  git  ipython  LICENSE  README.md  ssh
    kubuntu@kubuntu:~/puppet-practices$ mkdir ssh_client
    kubuntu@kubuntu:~/puppet-practices$ mv exercise2.md ssh_client/readme.md
    kubuntu@kubuntu:~/puppet-practices$ cd ssh_client/
    kubuntu@kubuntu:~/puppet-practices/ssh_client$ mkdir manifests
    kubuntu@kubuntu:~/puppet-practices/ssh_client$ mkdir templates
    kubuntu@kubuntu:~/puppet-practices/ssh_client$ cd /etc/ssh/
    kubuntu@kubuntu:/etc/ssh$ ls
    moduli      sshd_config       ssh_host_dsa_key.pub  ssh_host_ecdsa_key.pub  ssh_host_ed25519_key.pub  ssh_host_rsa_key.pub
    ssh_config  ssh_host_dsa_key  ssh_host_ecdsa_key    ssh_host_ed25519_key    ssh_host_rsa_key          ssh_import_id
    kubuntu@kubuntu:/etc/ssh$ cat ssh_config 

    # This is the ssh client system-wide configuration file.  See
    # ssh_config(5) for more information.  This file provides defaults for
    # users, and the values can be changed in per-user configuration files
    # or on the command line.

    # Configuration data is parsed as follows:
    #  1. command line options
    #  2. user-specific file
    #  3. system-wide file
    # Any configuration value is only changed the first time it is set.
    # Thus, host-specific definitions should be at the beginning of the
    # configuration file, and defaults at the end.

    # Site-wide defaults for some commonly used options.  For a comprehensive
    # list of available options, their meanings and defaults, please see the
    # ssh_config(5) man page.

    Host *
    #   ForwardAgent no
    #   ForwardX11 no
    #   ForwardX11Trusted yes
    #   RhostsRSAAuthentication no
    #   RSAAuthentication yes
    #   PasswordAuthentication yes
    #   HostbasedAuthentication no
    #   GSSAPIAuthentication no
    #   GSSAPIDelegateCredentials no
    #   GSSAPIKeyExchange no
    #   GSSAPITrustDNS no
    #   BatchMode no
    #   CheckHostIP yes
    #   AddressFamily any
    #   ConnectTimeout 0
    #   StrictHostKeyChecking ask
    #   IdentityFile ~/.ssh/identity
    #   IdentityFile ~/.ssh/id_rsa
    #   IdentityFile ~/.ssh/id_dsa
    #   IdentityFile ~/.ssh/id_ecdsa
    #   IdentityFile ~/.ssh/id_ed25519
    #   Port 22
    #   Protocol 2
    #   Cipher 3des
    #   Ciphers aes128-ctr,aes192-ctr,aes256-ctr,arcfour256,arcfour128,aes128-cbc,3des-cbc
    #   MACs hmac-md5,hmac-sha1,umac-64@openssh.com,hmac-ripemd160
    #   EscapeChar ~
    #   Tunnel no
    #   TunnelDevice any:any
    #   PermitLocalCommand no
    #   VisualHostKey no
    #   ProxyCommand ssh -q -W %h:%p gateway.example.com
    #   RekeyLimit 1G 1h
        SendEnv LANG LC_*
        HashKnownHosts yes
        GSSAPIAuthentication yes
        GSSAPIDelegateCredentials no
    kubuntu@kubuntu:/etc/ssh$ cp ssh_config /home/kubuntu/puppet-practices/ssh_client/templates/ssh_config.erb



## References 
http://terokarvinen.com/2017/aikataulu-%e2%80%93-palvelinten-hallinta-ict4tn022-2-%e2%80%93-5-op-uusi-ops-loppukevat-2017-p2