rendering
renderContentOn: html
	[ self renderBookmarkletOn: html.
	self renderItemsTableOn: html ]
		on: VOMongoConnectionError
		do: [ self renderMongoConnectionErrorOn: html ]