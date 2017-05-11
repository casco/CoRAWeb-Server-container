testing
testTitle
	| itema |
	itema := Item new
		url: 'http://www.amazon.com/books/newBook';
		type: 'http://schema.org/Book';
		owner: nil;
		groups: #('lifia' 'public');
		at: 'author' put: 'Annonymous';
		yourself.
	self assert: itema title equals: ''.
	itema at: 'title' put: 'Really New Book'.
	self assert: itema title equals: 'Really New Book'