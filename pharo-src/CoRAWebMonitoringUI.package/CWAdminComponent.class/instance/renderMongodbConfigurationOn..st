rendering
renderMongodbConfigurationOn: html
	html
		tbsFormGroup: [ html label
				for: 'host';
				with: 'Hostname or ip'.
			html textInput
				callback: [ :value | host := value ];
				tbsFormControl;
				id: 'host';
				with: host;
				placeholder: 'Enter mongodb hostname or ip' ].
	html
		tbsFormGroup: [ html label
				for: 'db';
				with: 'Database name'.
			html textInput
				callback: [ :value | database := value ];
				tbsFormControl;
				id: 'db';
				with: database;
				placeholder: 'Enter the name of the mongodb database' ].
	html
		tbsFormGroup: [ html label
				for: 'username';
				with: 'Database username'.
			html textInput
				callback: [ :value | username := value ];
				tbsFormControl;
				id: 'username';
				with: username;
				placeholder: 'Enter the username for the mongodb database' ].
	html
		tbsFormGroup: [ html label
				for: 'password';
				with: 'Database password'.
			html textInput
				callback: [ :value | password := value ];
				tbsFormControl;
				id: 'password';
				with: password;
				placeholder: 'Enter the password for the mongodb database' ]