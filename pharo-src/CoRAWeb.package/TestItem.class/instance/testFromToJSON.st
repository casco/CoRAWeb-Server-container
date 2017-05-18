testing
testFromToJSON
	| user itema itemb json |
	user := User named: 'juan' withId: 'juan@gmail.com'.
	itema := Item new
		url: 'http://www.amazon.com/books/newBook';
		type: 'http://schema.org/Book';
		owner: user;
		groups: #('lifia' 'public');
		at: 'title' put: 'Really New Book';
		at: 'author' put: 'Annonymous';
		yourself.
	json := itema asJSON.
	itemb := Item fromJSON: json withOwner: user.
	self assert: (itema equalsItem: itemb)