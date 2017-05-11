rendering
renderContentOn: html
   self readPersistenceSettings. 
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Database configuration' ].
			html
				tbsPanelBody: [ html
						tbsForm: [ self renderPersistenceTypeButtonsOn: html.
							self renderMongodbConfigurationOn: html.
							self renderButtonsOn: html ] ] ]