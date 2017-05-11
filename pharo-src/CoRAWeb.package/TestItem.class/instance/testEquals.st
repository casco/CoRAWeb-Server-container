testing
testEquals
	| user itema itemb itemc |
	user := User named: 'juan' withId: 'juan@gmail.com'.
	itema := Item new
		url: 'http://www.amazon.com/books/newBook';
		type: 'http://schema.org/Book';
		owner: user;
		groups: #('lifia' 'public');
		at: 'title' put: 'Really New Book';
		at: 'author' put: 'Annonymous';
		yourself.
	itemb := Item new
		url: 'http://www.amazon.com/books/newBook';
		type: 'http://schema.org/Book';
		owner: user;
		groups: #('public' 'lifia');
		at: 'title' put: 'Really New Book';
		at: 'author' put: 'Annonymous';
		yourself.
	itemc := Item new
		url: 'http://www.amazon.com/books/newBook';
		type: 'http://schema.org/Book';
		owner: user;
		groups: #('lifia' 'public');
		at: 'title' put: 'Really XXX Book';
		at: 'author' put: 'Annonymous';
		yourself.
	self assert: itema equals: itemb.
	self deny: itema = itemc