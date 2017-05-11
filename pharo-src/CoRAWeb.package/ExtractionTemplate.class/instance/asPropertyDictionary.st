converting
asPropertyDictionary
	^ Dictionary new
		at: 'url-pattern' put: self urlPattern;
		at: 'item-type' put: self itemType;
		at: 'owner' put: self owner userid;
		at: 'groups' put: self groups;
		addAll: xPathPropertySelectors;
		yourself