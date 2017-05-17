POST
addOrUpdateTemplateWith: aTeaRequest forUserId: userid
	| user template |
	user := self userOrNil: userid.
	user ifNil: [ ^ TeaResponse badRequest ].
	template := ExtractionTemplate fromJSON: aTeaRequest contents withOwner: user.
	template ifNil: [ ^ TeaResponse badRequest ].
	^ [ template save.
	TeaResponse ok ]
		on: VOMongoConnectionError
		do: [ TeaResponse serverError
				body: 'Unable to connect to database';
				yourself ]