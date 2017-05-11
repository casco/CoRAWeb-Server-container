testing
testExtractFromSlideShare
	| dict |
	dict := ItemExtractor new
		extractFromSlideshare:
			'https://es.slideshare.net/eneko/herramientas-groupware-y-de-participacin-en-la-empresa?qid=50ea6169-fb23-4c91-ba3d-a2a4511ba33e&v=&b=&from_search=2'.
	self
		assert: (dict at: 'title')
			equals: 'Herramientas groupware y de participación en la empresa';
		assert: (dict at: 'authors')
			equals: 'Eneko Astigarraga';
		assert: ((dict at: 'description') beginsWith: 'Presentación utilizada en la jornada Herramientas').
