POST
updateOrSaveTemplate: template
	| templateToUpdate |
	templateToUpdate := ExtractionTemplate selectOne: [ :each | each name = template name ].
	templateToUpdate
		ifNil: [ template save ]
		ifNotNil: [ templateToUpdate updateFromTemplate: template.
			templateToUpdate save ]