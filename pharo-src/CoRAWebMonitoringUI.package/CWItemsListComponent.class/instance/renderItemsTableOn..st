rendering
renderItemsTableOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Items already in the repository' ].
			html
				tbsPanelBody: [ html
						tbsTable: [ html tableHead: [ self renderTableHeaderOn: html ].
							html tableBody: [ self items do: [ :it | self renderItem: it on: html ] ] ] ] ]