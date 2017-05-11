instance creation
fromJSON: jsonString
	| dict instance |
	dict := NeoJSONReader fromString: jsonString.
	instance := self named: (dict at: 'username') withId: (dict at: 'userid').
	instance groups: (dict at: 'groups' ifAbsent: [ #() ]).
	^ instance