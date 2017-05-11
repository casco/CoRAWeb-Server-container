initialize
configureRoutes
	teapot
		GET: '/harvest' -> [ :req | self harvestItemFrom: (req at: #url) ];
		output: #html.