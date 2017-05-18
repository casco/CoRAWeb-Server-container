persistence
itemsFrom: offset limit: limit
	^ Item
		selectMany: [ :each | ]
		limit: limit
		offset: offset