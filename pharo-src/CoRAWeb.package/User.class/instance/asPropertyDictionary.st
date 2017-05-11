as yet unclassified
asPropertyDictionary
	^ Dictionary new
		at: 'username' put: self username;
		at: 'userid' put: self userid;
		at: 'groups' put: self groups;
		yourself