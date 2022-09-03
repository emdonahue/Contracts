as yet unclassified
asContractC: pragmaArgs
	^ self new contracts: (pragmaArgs collect: #asContractC)