*Contracts-Core
asContractC
	"ByteSymbols in type signatures may represent ClassContracts if uppercase, or MessageContracts if lowercase."

	^ self first isLowercase
		ifTrue: [ SelectorC fromSelector: self ]
		ifFalse: [ (self class environment at: self) asContractC	"This covers class contracts as well as all custom contracts." ]