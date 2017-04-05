class git{
	file {'/etc/bash.bashrc':
		content =>template('git/bash.bashrc.erb')
	}
	package {git:
		ensure => latest,
		allowcdrom => true
	}
}
