class apache {
	package{'apache2':
		ensure =>installed,
		allowcdrom =>true
	}
	file{'/etc/apache2/sites-available/000-default.conf':
		content =>template('apache/000-default.conf.erb')
	}
	file{'/etc/apache2/sites-enabled/000-default.conf':
		content =>template('apache/se-000-default.conf.erb')
	}
}
