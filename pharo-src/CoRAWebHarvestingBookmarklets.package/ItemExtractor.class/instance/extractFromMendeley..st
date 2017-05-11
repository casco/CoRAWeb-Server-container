extracting
extractFromMendeley: url
	| html doc dict  |
	dict := Dictionary new.
	html := ZnClient new get: url.
	doc := (XMLHTMLParser on: html) parseDocument.
	dict at: 'title' put: (XPath for: '//meta[@name="dc.title"]/@content' in: doc) first value.
	dict at: 'authors' put: ((XPath for: '//meta[@name="citation_authors"]/@content' in: doc) first value ifNil: [ 'annonymous' ]).
	dict at: 'description' put: (XPath for: '//meta[@property="og:description"]/@content' in: doc) first value.
	^ dict