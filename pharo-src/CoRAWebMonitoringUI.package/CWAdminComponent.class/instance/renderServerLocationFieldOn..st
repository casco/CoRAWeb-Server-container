rendering
renderServerLocationFieldOn: html
	html
		tbsFormGroup: [ html label
				for: 'server';
				with: 'Server name or ip'.
			html textInput
				callback: [ :value | location := value ];
				tbsFormControl;
				id: 'server';
				with: location ]