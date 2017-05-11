| app |
	app := WAAdmin
		register: self
		asApplicationAt: 'items'.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary.