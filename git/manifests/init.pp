class git{
	file {'/etc/bash.bashrc':
		content =>template('git/bash.bashrc.erb')
	}
	file{'/etc/.gitconfig':
<<<<<<< HEAD
		content =>template('git/.gitconfig.erb')
=======
		content =>template('git/gitconfig.erb')
>>>>>>> 165ad1320e9008df5bca0a32896b2d2c47571807
	}
	package {git:
		ensure => latest,
		allowcdrom => true
	}
}
