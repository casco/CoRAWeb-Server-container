testing
testEquals
	| xPathPropertySelectors user a b c |
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
	b := ExtractionTemplate new
		groups: #('lifia' 'public');
		itemType: 'Book';
		owner: user;
		urlPattern: 'http://www.amazon.com/.*';
		xPathPropertySelectors: xPathPropertySelectors copy.
	c := ExtractionTemplate new
		groups: #('public' 'lifia');
		itemType: 'Book';
		owner: user;
		urlPattern: 'http://www.XXX.com/.*';
		xPathPropertySelectors: xPathPropertySelectors.
	self assert: a equals: b.
	self deny: a = c