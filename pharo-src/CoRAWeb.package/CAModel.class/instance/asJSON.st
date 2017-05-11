converting
asJSON
	^ NeoJSONWriter
		toString:
			(self asPropertyDictionary )