example-instances
populateWithExampleInstances
	<script>
	| user template item xPathPropertySelectors |
	PersistenceManager beLocalWithEmptyRepository.
	user := (User named: 'Juan' withId: 'juan@gmail.com')
		groups: #('one' 'two');
		yourself.
	user save.
	item := Item new
		url: 'http://www.amazon.com/books/newBook';
		type: 'http://schema.org/Book';
		owner: user;
		groups: #('lifia' 'public');
		at: 'title' put: 'Really New Book';
		at: 'author' put: 'Annonymous';
		yourself.
	item save.
	xPathPropertySelectors := Dictionary new
		at: 'title' put: 'title-selector';
		at: 'summary' put: 'summary-selector';
		yourself.
	template := ExtractionTemplate new
		groups: #('public' 'lifia');
		itemType: 'Book';
		owner: user;
		urlPattern: 'http://www.amazon.com/.*';
		xPathPropertySelectors: xPathPropertySelectors.
	template save