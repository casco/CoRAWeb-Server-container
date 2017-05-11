testing
testExtractFromMendeley
	| dict |
	dict := ItemExtractor new
		extractFromMendeley:
			'https://www.mendeley.com/research-papers/crowdmock-approach-defining-evolving-web-augmentation-requirements/'.
	self
		assert: (dict at: 'title')
			equals: 'CrowdMock: an approach for defining and evolving web augmentation requirements';
		assert: (dict at: 'authors')
			equals: 'Firmenich, Diego; Firmenich, Sergio; Rivero, José Matías; Antonelli, Leandro; Rossi, Gustavo';
		assert: ((dict at: 'description') beginsWith: 'Web Applications are accessed').
