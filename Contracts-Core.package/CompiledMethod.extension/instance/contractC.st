*Contracts-Core
contractC
	"Reads the contract pragma and returns a generated contract without enforcing it."
	self pragmasDo: [ :p | 
		(p selector matchesRegex: '(type\:)+') ifTrue: [ 
			^ MethodContractC fromPragma: p ]].
	^ VoidC void.