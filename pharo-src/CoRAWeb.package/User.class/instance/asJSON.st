json
asJSON
	| dictionary |
	dictionary := Dictionary new
		at: 'username' put: self username;
		at: 'userid' put: self userid;
		at: 'groups' put: self groups;
		yourself.
	^NeoJSONWriter toString: dictionary