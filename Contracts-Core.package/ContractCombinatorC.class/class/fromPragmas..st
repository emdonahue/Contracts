as yet unclassified
fromPragmas: pragmaArgs
	^ self new contracts: (pragmaArgs collect: #asContractC)