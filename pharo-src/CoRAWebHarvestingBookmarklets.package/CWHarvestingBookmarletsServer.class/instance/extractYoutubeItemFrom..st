initialize
extractYoutubeItemFrom: urlToPost
	| dict it |
	dict := ItemExtractor new extractFromYoutube: urlToPost.
	dict notNil
		ifTrue: [ it := Item new.
			it
				type: 'http://schema.org/VideoObject';
				url: urlToPost printString;
				groups: {'public'};
				properties: dict.
			it save ].
	^ TeaResponse ok
		body: (self extractionReportFor: it);
		yourself