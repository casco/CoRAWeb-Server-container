rendering
renderBookmarkletOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Drop this bookmarklets in your bookmarks bar' ].
			html
				tbsPanelBody: [ html paragraph: 'Drag the next link to your bookmarks toolbar and use it to harvest items.'.
					self renderBookmarkletAnchorOn: html.
					html paragraph: 'It only works on Mendeley articles, Slideshare presentations, and Youtube videos' ] ]