routes
configureUserRoutes
	teapot
		GET:
			'/users'
				-> [ :req | usersHandler listWith: req ];
		output: #json