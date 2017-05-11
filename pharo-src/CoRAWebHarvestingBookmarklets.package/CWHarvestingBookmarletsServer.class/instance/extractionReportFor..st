initialize
extractionReportFor: it
	^ '<html><body><h1>You can close this window</h1><h3>Extraction result</h3>' , it asJSON , '</body></html>'