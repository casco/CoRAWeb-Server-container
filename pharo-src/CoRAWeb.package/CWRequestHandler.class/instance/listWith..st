GET
listWith: aRequest
	^ TeaResponse ok
		body:
			(Array
				streamContents:
					[ :stream | self elements do: [ :each | stream nextPut: each asPropertyDictionary  ] ])