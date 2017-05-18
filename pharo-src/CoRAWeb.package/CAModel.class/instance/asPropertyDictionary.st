converting
asPropertyDictionary
	^ Dictionary new
		at: 'last-updated' put: self lastUpdatedOn printString;
		yourself