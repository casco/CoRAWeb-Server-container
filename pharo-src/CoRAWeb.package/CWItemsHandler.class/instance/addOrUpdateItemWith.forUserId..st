POST
addOrUpdateItemWith: aTeaRequest forUserId: userid
	| dict user item |
	user := self userOrNil: userid.
	user ifNil: [ ^ TeaResponse badRequest ].
	item := Item fromJSON: aTeaRequest contents withOwner: user.
	item ifNil: [ ^ TeaResponse badRequest ].
	item save.
	^ TeaResponse ok