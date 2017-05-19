instance creation
fromJSON: jsonIgnoreOwner withOwner: aUser
	| it dict |
	dict := NeoJSONReader fromString: jsonIgnoreOwner.
	#('url' 'type')
		do: [ :each | 
			(dict includesKey: each)
				ifFalse: [ ^ nil ] ].
	it := Item new
		owner: aUser;
		url: (dict at: 'url');
		type: (dict at: 'type');
		groups: (dict at: 'groups' ifAbsent: Set new);
		properties:
			(dict copy
				removeKey: 'url';
				removeKey: 'type';
				removeKey: 'groups';
				removeKey: 'owner' ifAbsent: [  ];
				removeKey: 'last-updated' ifAbsent: [  ];
				yourself).
	^ it