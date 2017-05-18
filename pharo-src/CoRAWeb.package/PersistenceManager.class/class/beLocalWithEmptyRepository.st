managing
beLocalWithEmptyRepository
	self isInMemory
		ifFalse: [ VORepository current reset.
			VORepository setRepository: nil ].
	VORepository setRepository: nil.
	repository := VOMemoryRepository new.
	repository enableSingleton