initialize
initialize
	self configureTeapot.
	self configureRoutes.
	itemsHandler := CWItemsHandler new.
	usersHandler := CWUsersHandler new.
	templatesHandler := CWTemplatesHandler new