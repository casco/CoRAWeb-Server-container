rendering
renderMongoConnectionErrorOn: html 

html tbsAlert 
			beDanger;
			with: [ html strong: 'Oh snap!'. html text: ' ... cannot connect to the database - Change a few things and try again.' ].