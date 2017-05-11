accessing
urlPattern: aString
	urlPattern := aString.
	hostMatcher := RxMatcher forString: aString asUrl host ignoreCase: true.
	pathMatcher := RxMatcher forString: aString asUrl path ignoreCase: true