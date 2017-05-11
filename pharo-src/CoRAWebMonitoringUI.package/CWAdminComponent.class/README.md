| app |
	app := WAAdmin
		register: self
		asApplicationAt: 'admin'.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary.