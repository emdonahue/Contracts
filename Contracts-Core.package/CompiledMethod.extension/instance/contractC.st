*Contracts-Core
contractC
	"Reads the contract pragma and returns a generated contract without enforcing it."
	(self pragmaAt: ('' join: ((Array new: self numArgs withAll: #type:) , { #returns: })) asSymbol) ifNotNil: [ :p | ^ MethodContractC fromPragma: p ].