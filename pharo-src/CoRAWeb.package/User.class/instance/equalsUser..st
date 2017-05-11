testing
equalsUser: aUser
	^ self username = aUser username
		and: [ self userid = aUser userid
				and: [ self groups size = aUser groups size
						and: [ (self groups asSet
								addAll: aUser groups;
								yourself) size = self groups size ] ] ]