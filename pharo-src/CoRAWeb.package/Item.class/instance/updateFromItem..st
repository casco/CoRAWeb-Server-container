updating
updateFromItem: anotherItem
	self
		type: anotherItem type;
		owner: anotherItem owner;
		properties: anotherItem properties.
	self groups addAll: anotherItem groups.
