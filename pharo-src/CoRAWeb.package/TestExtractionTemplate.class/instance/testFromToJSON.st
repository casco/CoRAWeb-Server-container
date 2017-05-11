testing
testFromToJSON
	| xPathPropertySelectors user a b json |
	user := (User named: 'Jhon Doe' withId: 'doe@gmail.com')
		groups: #('lifia' 'public');
		yourself.
	xPathPropertySelectors := Dictionary new
		at: 'title' put: 'title-selector';
		at: 'summary' put: 'summary-selector';
		yourself.
	a := ExtractionTemplate new
		groups: #('public' 'lifia');
		itemType: 'Book';
		owner: user;
		urlPattern: 'http://www.amazon.com/.*';
		xPathPropertySelectors: xPathPropertySelectors.
	json := a asJSON.
	b := ExtractionTemplate fromJSON: json withOwner: user.
	self assert: a equals: b