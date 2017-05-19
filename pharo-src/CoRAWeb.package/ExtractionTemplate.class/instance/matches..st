testing
matches: urlString
	| hostMatcher pathMatcher |
	hostMatcher := RxMatcher forString: urlPattern asUrl host ignoreCase: true.
	pathMatcher := RxMatcher forString: urlPattern asUrl path ignoreCase: true.
	^ (hostMatcher matches: urlString asUrl host)
		& (pathMatcher matches: urlString asUrl path)