testing-GET
testUsersList
	"tests for /users/"

	| client |
	client := ZnClient new
		url: 'http://localhost/users/';
		get;
		response.