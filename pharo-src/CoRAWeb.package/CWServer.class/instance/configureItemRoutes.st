routes
configureItemRoutes
	teapot
		GET: '/items' -> [ :req | itemsHandler listWith: req ];
		output: #json;
		POST:
			'/items'
				-> [ :req | itemsHandler addOrUpdateItemWith: req forUserId: (req at: #userid) ].