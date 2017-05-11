initialize
extractSlideshareItemFrom: urlToPost
	| dict it |
	dict := ItemExtractor new extractFromSlideshare: urlToPost.
	dict notNil
		ifTrue: [ it := Item new.
			it
				type: 'http://schema.org/PresentationDigitalDocument';
				url: urlToPost printString;
				groups: 'public';
				properties: dict.
			it save ].
	^TeaResponse ok
		body: (self extractionReportFor: it);
		yourself