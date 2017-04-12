class apache {
	package{'apache2':
		ensure =>installed,
		allowcdrom =>true
	}
	file{'/etc/apache2/sites-available/000-default.conf':
		content =>template('apache/000-default.conf.erb'),
		notify =>Service['apache2']
	}
	file{'/etc/apache2/sites-enabled/000-default.conf':
		content =>template('apache/se-000-default.conf.erb'),
		notify =>Service['apache2']
	}
	file{'/etc/apache2/apache2.conf':
		content =>template('apache/apache2.conf.erb'),
		notify =>Service['apache2']
	}
	service{'apache2':
		ensure =>true,
		enable =>true,
		provider =>systemd
	}
}
