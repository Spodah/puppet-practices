class git{
	file {'/etc/bash.bashrc':
		content =>template('git/bash.bashrc.erb')
	}
	file{'/etc/.gitconfig':
		content =>template('git/.gitconfig.erb')
	}
	package {git:
		ensure => latest,
		allowcdrom => true
	}
}
