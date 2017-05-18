testing
testFromToJSON
	| a json b |
	a := (User named: 'Juan' withId: 'juan@gmail.com')
		groups: #('one' 'two');
		yourself.
	json := a asJSON.
	b := User fromJSON: json.
	self assert: (a equalsUser: b)