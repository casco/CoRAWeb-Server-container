testing
testEqualsUser
	| a b c |
	a := (User named: 'Juan' withId: 'juan@gmail.com')
		groups: #('one' 'two');
		yourself.
	b := (User named: 'Juan' withId: 'juan@gmail.com')
		groups: #('two' 'one');
		yourself.
	c := (User named: 'Pedro' withId: 'juan@gmail.com')
		groups: #('two' 'one');
		yourself.
	self assert: (a equalsUser: b).
	self deny: (a equalsUser: c)