GET
getTemplatesMatching: aURL with: aTeaRequest
	| matches |
	matches := self templates select: [ :each | each matches: aURL ].
	^ [ TeaResponse ok
		body:
			(Array
				streamContents: [ :stream | matches do: [ :each | stream nextPut: each asPropertyDictionary ] ]) ]
		on: VOMongoConnectionError
		do: [ TeaResponse serverError
				body: 'Unable to connect to database';
				yourself ]