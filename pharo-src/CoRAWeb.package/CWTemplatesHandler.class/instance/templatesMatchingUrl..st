GET
templatesMatchingUrl: url
	| selected |
	selected := ExtractionTemplate selectAll select: [ :each | each matches: url ].
	^ TeaResponse ok
		body:
			(Array
				streamContents: [ :stream | selected do: [ :each | stream nextPut: each asPropertyDictionary ] ])