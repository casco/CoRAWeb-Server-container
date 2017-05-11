testing
equalsItem: anItem
	^ self type = anItem type
		and: [ self url = anItem url
				and: [ self owner = anItem owner
						and: [ self properties = anItem properties
								and: [ (self groups asSet
										addAll: anItem groups;
										yourself) size = self groups size ] ] ] ]