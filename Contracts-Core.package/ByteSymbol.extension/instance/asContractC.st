*Contracts-Core
asContractC
	"ByteSymbols in type signatures may represent ClassContracts if uppercase, or MessageContracts if lowercase."
	^ self first isLowercase
		ifTrue: [ SelectorC new selector: self ]
		ifFalse: [ (Smalltalk globals at: self) asContractC ]