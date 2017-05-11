initialize
extractMendeleyItemFrom: urlToPost
	| dict it |
	dict := ItemExtractor new extractFromMendeley: urlToPost.
	dict notNil
		ifTrue: [ it := Item new.
			it
				type: 'http://schema.org/Article';
				url: urlToPost printString;
				groups: 'public';
				properties: dict.
			it save ].
	^TeaResponse ok
		body: (self extractionReportFor: it);
		yourself