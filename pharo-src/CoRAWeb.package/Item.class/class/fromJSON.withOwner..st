instance creation
fromJSON: jsonIgnoreOwner withOwner: aUser
	| it dict |
	dict := NeoJSONReader fromString: jsonIgnoreOwner.
	it := Item new
		owner: aUser;
		url: (dict at: 'url');
		type: (dict at: 'type');
		groups: (dict at: 'groups');
		properties:
			(dict copy
				removeKey: 'url';
				removeKey: 'type';
				removeKey: 'groups';
				removeKey: 'owner' ifAbsent: [  ];
				yourself).
	^ it