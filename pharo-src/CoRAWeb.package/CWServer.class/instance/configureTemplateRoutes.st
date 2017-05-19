routes
configureTemplateRoutes
	teapot
		GET: '/templates' -> [ :req | templatesHandler listWith: req ];
		output: #json;
		POST:
			'/templates'
				-> [ :req | templatesHandler addOrUpdateTemplateWith: req].