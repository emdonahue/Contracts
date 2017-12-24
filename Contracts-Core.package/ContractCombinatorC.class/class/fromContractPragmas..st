as yet unclassified
fromContractPragmas: pragmaArgs
	^ self new contracts: (pragmaArgs collect: #asContractC)