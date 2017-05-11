testing
testDescription
	| itema |
	itema := Item new
		url: 'http://www.amazon.com/books/newBook';
		type: 'http://schema.org/Book';
		owner: nil;
		groups: #('lifia' 'public');
		at: 'author' put: 'Annonymous';
		yourself.
	self assert: itema description equals: ''.
	itema at: 'description' put: 'Really New Book and this is its description'.
	self assert: itema description equals: 'Really New Book and this is its description'