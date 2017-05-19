POST
addOrUpdateUserWith: aTeaRequest
	| user |
	user := User fromJSON: aTeaRequest contents.
	user
		ifNil: [ ^ TeaResponse badRequest body: 'wrong format or mandatory fields are missing' ].
	(user userid isNil or: [ user userid isEmpty ])
		ifTrue: [ ^ TeaResponse badRequest: 'userid is a mandatory field' ].
	[ self updateOrSaveUser: user ]
		on: VOMongoConnectionError
		do: [ TeaResponse serverError
				body: 'Unable to connect to database';
				yourself ].
	^ TeaResponse ok