managing
beMongoWithExistingDb
	VORepository current reset.
	VORepository setRepository: nil.
	repository := VOMongoRepository
		host: self host
		database: self database
		username: self username
		password: self password.
	repository enableSingleton