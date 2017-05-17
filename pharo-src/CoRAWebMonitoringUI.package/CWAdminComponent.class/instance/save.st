callbacks
save
	CWAdminComponent location: location.
	isLocal
		ifTrue: [ PersistenceManager beLocalWithEmptyRepository ]
		ifFalse: [ PersistenceManager
				host: host;
				database: database;
				username: username;
				password: password;
				beMongoWithExistingDb ]