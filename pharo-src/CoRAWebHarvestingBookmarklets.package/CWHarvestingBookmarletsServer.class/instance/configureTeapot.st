initialize
configureTeapot
	teapot := Teapot
		configure:
			{(#defaultOutput -> #json).
			(#port -> 8000).
			(#debugMode -> true)}