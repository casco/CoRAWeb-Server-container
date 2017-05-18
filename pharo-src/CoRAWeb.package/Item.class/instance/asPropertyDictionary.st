converting
asPropertyDictionary
	^ super asPropertyDictionary 
		at: 'type' put: self type;
		at: 'url' put: self url;
		at: 'owner' put: (self owner ifNotNil: [ self owner userid ] ifNil: [ 'annonymous' ]);
		at: 'groups' put: self groups;
		addAll: properties;
		yourself