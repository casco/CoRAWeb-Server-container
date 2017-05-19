updating
updateFromTemplate: template
	self
		urlPattern: template urlPattern;
		xPathPropertySelectors: template xPathPropertySelectors;
		owner: template owner;
		itemType: template itemType.
	groups := (groups addAll: template groups) asSet