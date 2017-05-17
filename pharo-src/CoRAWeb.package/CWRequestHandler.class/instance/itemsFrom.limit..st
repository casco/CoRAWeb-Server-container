persistence
itemsFrom: offset limit: limit
	^ Item
		selectMany: [ :each | true ]
		limit: limit
		offset: offset