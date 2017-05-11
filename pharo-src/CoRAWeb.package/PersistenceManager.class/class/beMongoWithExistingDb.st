managing
beMongoWithExistingDb
	repository := VOMongoRepository
		host: self host
		database: self database
		username: self username 
		password: self password .
	repository enableSingleton