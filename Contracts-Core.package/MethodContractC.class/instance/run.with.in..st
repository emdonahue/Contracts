evaluation
run: aSelector with: someArgs in: anObject
	"Check argument contracts, run the method, check the return contract, and return the value."
	| i return |
	i := 1.
	"Check argument contracts."
	argContracts
		with: someArgs
		do: [ :c :a | 
			(c satisfiesContractC: a)
				ifFalse: [ ContractViolation arg: i contract: c received: a ].
			i := i + 1 ].
		"Check return contract."
	return := anObject withArgs: someArgs executeMethod: self method.
	(returnContract satisfiesContractC: return)
		ifFalse: [ ContractViolation returnContract: returnContract received: return ].
	^ return