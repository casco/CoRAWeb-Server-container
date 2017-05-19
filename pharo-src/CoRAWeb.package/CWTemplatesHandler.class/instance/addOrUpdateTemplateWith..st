POST
addOrUpdateTemplateWith: aTeaRequest
	| user template userid |
	userid := aTeaRequest
		at: #userid
		ifAbsent: [ ^ TeaResponse badRequest
				body: 'userid parameter is missing';
				yourself ].
	user := self userOrNil: userid.
	user
		ifNil: [ ^ TeaResponse badRequest
				body: 'User ' , userid , ' does not exist.';
				yourself ].
	template := ExtractionTemplate fromJSON: aTeaRequest contents withOwner: user.
	template
		ifNil: [ ^ TeaResponse badRequest
				body: 'wrong body - check format and ensure all mandatory fields are present' ].
	(template name isNil or: [ template name isEmpty ])
		ifTrue: [ ^ TeaResponse badRequest: 'name property is mandatory' ].
	^ [ self updateOrSaveTemplate:  template.
	TeaResponse ok ]
		on: VOMongoConnectionError
		do: [ TeaResponse serverError
				body: 'Unable to connect to database';
				yourself ]