persistence
userOrNil: userid
	"Returns the user with the given id or nil if none"

	^ User selectOne: [ :each | each userid = userid ]