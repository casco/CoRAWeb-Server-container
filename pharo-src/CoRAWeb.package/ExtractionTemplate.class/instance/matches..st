testing
matches: urlString
	^ (hostMatcher matches: urlString asUrl host) & (pathMatcher matches: urlString asUrl path)