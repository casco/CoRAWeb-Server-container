testing
testExtractFromYoutube
	| dict |
	dict := ItemExtractor new
		extractFromYoutube:
			'https://www.youtube.com/watch?v=N4mEzFDjqtA' .
	self
		assert: (dict at: 'title')
			equals: '\    Python Programming\  ' withCRs;
		assert: (dict at: 'authors')
			equals: 'Derek Banas';
		assert: ((dict at: 'description') beginsWith: 'Get the Cheat Sheet Here').
