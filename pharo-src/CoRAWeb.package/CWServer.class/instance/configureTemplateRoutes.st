routes
configureTemplateRoutes
	teapot
		GET: '/templates' -> [ :req | templatesHandler listWith: req ];
		output: #json;
		GET: '/templates/<url>' -> [ :req | templatesHandler getTemplatesMatching: (req at: #url) with: req ];
		output: #json;
		POST:
			'/templates'
				-> [ :req | templatesHandler addOrUpdateTemplateWith: req forUserId: (req at: #userid) ].