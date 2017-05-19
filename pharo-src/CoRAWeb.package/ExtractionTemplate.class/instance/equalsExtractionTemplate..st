testing
equalsExtractionTemplate: temp
	^ self name = temp name
		and: [ self urlPattern = temp urlPattern
				and: [ self itemType = temp itemType
						and: [ self owner = temp owner
								and: [ self xPathPropertySelectors = temp xPathPropertySelectors
										and: [ (self groups asSet
												addAll: temp groups;
												yourself) size = self groups size ] ] ] ] ]