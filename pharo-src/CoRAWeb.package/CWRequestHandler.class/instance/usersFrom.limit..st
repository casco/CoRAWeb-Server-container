persistence
usersFrom: offset limit: limit
	^ User
		selectMany: [ :each | true ]
		limit: limit
		offset: offset