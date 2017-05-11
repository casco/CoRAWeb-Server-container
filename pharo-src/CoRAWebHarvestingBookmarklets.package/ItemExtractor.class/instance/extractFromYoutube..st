extracting
extractFromYoutube: url
	| html doc dict authors |
	dict := Dictionary new.
	html := ZnClient new get: url.
	doc := (XMLHTMLParser on: html) parseDocument.
	dict at: 'title' put: (XPath for: '//span[@id="eow-title"]/text()' in: doc) first value printString.
	authors := (XPath for: '//div[@class="yt-user-info"]/a/text()' in: doc) first value.
	dict at: 'authors' put: (authors ifNil: [ 'annonymous' ] ifNotNil: [ authors printString ]).
	dict at: 'description' put: (XPath for: '//p[@id="eow-description"]/text()' in: doc) first value printString.
	^ dict