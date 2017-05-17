persistence
templatesFrom: offset limit: limit
  ^ExtractionTemplate 		selectMany: [ :each | true ]
		limit: limit
		offset: offset