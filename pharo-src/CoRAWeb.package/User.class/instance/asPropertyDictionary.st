as yet unclassified
asPropertyDictionary
	^ super asPropertyDictionary 
		at: 'username' put: self username;
		at: 'userid' put: self userid;
		at: 'groups' put: self groups;
		yourself