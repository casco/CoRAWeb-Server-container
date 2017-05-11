testing
testSource
	|  itema   |
	itema := Item new
		url: 'http://www.amazon.com/books/newBook';
		type: 'http://schema.org/Book';
		owner: nil;
		groups: #('lifia' 'public');
		at: 'title' put: 'Really New Book';
		at: 'author' put: 'Annonymous';
		yourself.
	self assert: itema source equals: 'www.amazon.com'