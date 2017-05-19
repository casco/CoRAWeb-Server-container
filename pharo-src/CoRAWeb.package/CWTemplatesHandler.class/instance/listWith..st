GET
listWith: req
	^ (req at: #url ifAbsent: [ nil ])
		ifNil: [ super listWith: req ]
		ifNotNil: [ self templatesMatchingUrl: (req at: #url) ]