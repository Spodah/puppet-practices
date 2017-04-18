class ufw {
        package{'ufw':
                ensure =>installed,
                allowcdrom => true
        }
	service{'ufw':
		ensure =>true,
		enable =>true,
		provider =>systemd
	}
	exec { "ufw enable":
		path => "/bin/:/usr/bin/:/sbin/:/usr/sbin/",
		unless => 'sudo ufw status verbose|grep "Status: active"',
	}
}

