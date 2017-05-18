testing
testSetterChangesUpdateTime
	| a last |
	a := (User named: 'Juan' withId: 'juan@gmail.com')
		groups: #('one' 'two');
		yourself.
	{#userid: . #groups: . #username:}
		do: [ :sel | 
			last := a lastUpdatedOn.
			a perform: sel with: 'astringthatisalsoacollection'.
			self assert: last < a lastUpdatedOn ]