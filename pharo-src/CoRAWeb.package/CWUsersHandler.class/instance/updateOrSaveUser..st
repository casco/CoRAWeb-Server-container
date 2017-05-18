POST
updateOrSaveUser: user
	| userToSave |
	userToSave := User selectOne: [ :each | each userid = user userid ].
	userToSave
		ifNil: [ user save ]
		ifNotNil: [ userToSave
				username: user username;
				groups: user groups.
			userToSave save ]