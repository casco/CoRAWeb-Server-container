managing
beLocalWithEmptyRepository
	VORepository setRepository: nil.
	repository := VOMemoryRepository new.
	repository enableSingleton