*Contracts-Core
asContractC
	"ByteSymbols in type signatures may represent ClassC if classes exist, or SelectorC otherwise."
	^ self class environment at: self
		ifPresent: [ :c | c asContractC ] "This covers class contracts as well as all custom contracts."
		ifAbsent: [ SelectorC fromSelector: self ].