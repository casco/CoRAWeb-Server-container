extracting
extractFromSlideshare: url
	| html doc dict authors |
	dict := Dictionary new.
	html := ZnClient new get: url.
	doc := (XMLHTMLParser on: html) parseDocument.
	dict at: 'title' put: (XPath for: '//meta[@property="og:title"]/@content' in: doc) first value.
	authors := (XPath for: '//a[@rel="author"]/span[@itemprop="name"]/text()' in: doc) first value.
	dict at: 'authors' put: (authors ifNil: [ 'annonymous' ] ifNotNil: [ authors printString ]).
	dict at: 'description' put: (XPath for: '//meta[@property="og:description"]/@content' in: doc) first value.
	^ dict