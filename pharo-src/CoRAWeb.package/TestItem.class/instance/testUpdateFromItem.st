testing
testUpdateFromItem
	| user itema itemb lastUpdated |
	user := User named: 'juan' withId: 'juan@gmail.com'.
	itema := Item new
		url: 'http://www.amazon.com/books/newBook';
		type: 'http://schema.org/Book';
		owner: user;
		groups: #('lifia' 'public');
		at: 'title' put: 'Really New Book';
		at: 'author' put: 'Annonymous';
		yourself.
	lastUpdated := itema lastUpdatedOn.
	itemb := Item new
		url: 'http://www.amazon.com/books/newBook';
		type: 'http://schema.org/Book';
		owner: user;
		groups: #('unlp');
		at: 'title' put: 'Really New Book (2)';
		at: 'author' put: 'Jhon';
		yourself.
	itema updateFromItem: itemb.
	self assert: (itema at: 'title') equals: 'Really New Book (2)'.
	self assert: (itema at: 'author') equals: 'Jhon'.
	self assert: itema groups size equals: 3.
	self assert: (itema groups includes: 'unlp').
	self assert: lastUpdated < itema lastUpdatedOn.
