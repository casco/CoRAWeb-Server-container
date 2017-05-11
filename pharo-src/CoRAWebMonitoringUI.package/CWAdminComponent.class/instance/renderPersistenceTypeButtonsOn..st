rendering
renderPersistenceTypeButtonsOn: html
	| group |
	html
		tbsPanel: [ group := html radioGroup.
			group radioButton
				selected: isLocal;
				callback: [ isLocal := true ].
			html text: ' In memory (ignores configuration below)'.
			html break.
			group radioButton
				selected: isLocal not;
				callback: [ isLocal := false ].
			html text: ' Mongodb (Uses configuration below)' ]