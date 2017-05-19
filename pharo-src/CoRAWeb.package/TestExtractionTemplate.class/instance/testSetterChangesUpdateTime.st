testing
testSetterChangesUpdateTime
	| a last user xPathPropertySelectors |
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
	{#owner: . #groups: . #name:. #urlPattern: . #itemType:. #xPathPropertySelectors:}
		do: [ :sel | 
			last := a lastUpdatedOn.
			a perform: sel with: 'astringthatisalsoacollection'.
			self assert: last < a lastUpdatedOn ].

	