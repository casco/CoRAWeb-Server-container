instance-creation
fromJSON: jsonIgnoreOwner withOwner: aUser
	| it dict |
	dict := NeoJSONReader fromString: jsonIgnoreOwner.
	#('name' 'url-pattern' 'item-type')
		do: [ :each | 
			(dict includesKey: each)
				ifFalse: [ ^ nil ] ].
	it := ExtractionTemplate new
		owner: aUser;
		name: (dict at: 'name');
		urlPattern: (dict at: 'url-pattern');
		itemType: (dict at: 'item-type');
		groups: (dict at: 'groups' ifAbsent: Set new);
		xPathPropertySelectors:
			(dict copy
				removeKey: 'url-pattern';
				removeKey: 'name';
				removeKey: 'item-type';
				removeKey: 'groups';
				removeKey: 'owner' ifAbsent: [  ];
				removeKey: 'last-updated' ifAbsent: [  ];
				yourself).
	^ it