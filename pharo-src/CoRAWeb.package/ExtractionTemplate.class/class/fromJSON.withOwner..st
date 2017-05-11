instance-creation
fromJSON: jsonIgnoreOwner withOwner: aUser
	| it dict |
	dict := NeoJSONReader fromString: jsonIgnoreOwner.
	it := ExtractionTemplate  new
		owner: aUser;
		urlPattern: (dict at: 'url-pattern');
		itemType: (dict at: 'item-type');
		groups: (dict at: 'groups');
		xPathPropertySelectors:
			(dict copy
				removeKey: 'url-pattern';
				removeKey: 'item-type';
				removeKey: 'groups';
				removeKey: 'owner' ifAbsent: [  ];
				yourself).
	^ it