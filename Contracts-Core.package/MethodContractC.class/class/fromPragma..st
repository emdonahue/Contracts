instance creation
fromPragma: aPragma
	^ self new
		argContracts: (aPragma arguments allButLast collect: #asContractC);
		returnContract: aPragma arguments last asContractC