class ipython{
	file { '/tmp/ipython':
		content => "Playing with puppets\n"
	}
	package {'ipython3':
		ensure => latest,
		allowcdrom => true
		
	}
}
