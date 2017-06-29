instance creation
fromContractPragmas: pragmaArgs
	^ self new contracts: (pragmaArgs collect: #asContractC)