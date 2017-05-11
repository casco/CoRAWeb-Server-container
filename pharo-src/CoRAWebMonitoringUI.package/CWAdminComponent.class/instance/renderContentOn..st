rendering
renderContentOn: html
   self readConfiguration. 
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Seerver configuration' ].
			html
				tbsPanelBody: [ html
						tbsForm: [ 
							self renderServerLocationFieldOn: html.
							self renderPersistenceTypeButtonsOn: html.
							self renderMongodbConfigurationOn: html.
							self renderButtonsOn: html ] ] ]