callbacks
normalizeLocation: aUrlString
	^ 'http://' , aUrlString asUrl host , ':' , aUrlString asUrl port printString , '/'