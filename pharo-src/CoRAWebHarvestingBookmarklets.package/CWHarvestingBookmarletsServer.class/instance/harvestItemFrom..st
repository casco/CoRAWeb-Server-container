initialize
harvestItemFrom: urlString
	| url |
	url := urlString asUrl.
	(url host endsWith: 'mendeley.com')
		ifTrue: [ ^ self extractMendeleyItemFrom: url ].
	(url host endsWith: 'slideshare.net')
		ifTrue: [ ^ self extractSlideshareItemFrom: url ].
	(url host endsWith: 'youtube.com')
		ifTrue: [ ^ self extractYoutubeItemFrom: url ].
	^ TeaResponse badRequest
		body: 'Only urls from www.mendeley.com and slideshare.net can be posted with this bookmarklet';
		yourself