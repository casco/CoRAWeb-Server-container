testing
testMatches
	| a |
	a := ExtractionTemplate new urlPattern: 'http://www.amazon.com/.*'.
	self assert: (a matches: 'https://www.amazon.com/path/to/index.html').
	a := ExtractionTemplate new urlPattern: 'http://www.amazon.com/^home/.*'.
	self assert: (a matches: 'https://www.amazon.com/home/to/index.html').
	self deny: (a matches: 'https://www.amazon.com/path/home/to/index.html')