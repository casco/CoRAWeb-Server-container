testing
testSetterChangesUpdateTime
	| a last |
	a := Item new
		url: 'http://www.amazon.com/books/newBook';
		type: 'http://schema.org/Book';
		owner: nil;
		groups: #('lifia' 'public');
		at: 'author' put: 'Annonymous';
		yourself.
	{#owner: . #groups: . #url: . #type:}
		do: [ :sel | 
			last := a lastUpdatedOn.
			a perform: sel with: 'astringthatisalsoacollection'.
			self assert: last < a lastUpdatedOn ].
	last := a lastUpdatedOn.
	a properties: Dictionary new.
	self assert: last < a lastUpdatedOn.
	last := a lastUpdatedOn.
	a at: 'title' put: 'test'.
	self assert: last < a lastUpdatedOn.
	