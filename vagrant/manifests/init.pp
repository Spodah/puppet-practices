class vagrant {
	package{'virtualbox':
		ensure =>installed,
		allowcdrom =>true
	}
	package{'vagrant':
		ensure =>installed,
		allowcdrom =>true
	}
	package{'puppetmaster':
		ensure =>installed,
		allowcdrom =>true
	}
	file{'/home/juuso/Vagrantfile':
		content =>template('vagrant/Vagrantfile.erb'),
	}
}
