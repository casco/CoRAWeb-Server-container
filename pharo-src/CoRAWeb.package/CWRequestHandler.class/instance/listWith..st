GET
listWith: aRequest
	| list offset limit |
	[ offset := aRequest at: #offset ifAbsent: nil.
	limit := aRequest at: #limit ifAbsent: nil.
	limit notNil & offset notNil
		ifTrue: [ list := self elementsFrom: offset limit: limit ]
		ifFalse: [ list := self elements ] ]
		on: VOMongoConnectionError
		do: [ ^ TeaResponse serverError
				body: 'Unable to connect to database';
				yourself ].
	^ TeaResponse ok
		body: (Array streamContents: [ :stream | list do: [ :each | stream nextPut: each asPropertyDictionary ] ])