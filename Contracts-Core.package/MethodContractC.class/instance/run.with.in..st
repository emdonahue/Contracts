evaluation
run: aSelector with: someArgs in: anObject
	"Check argument contracts, run the method, check the return contract, and return the value."

	| return |
	argContracts
		withIndexDo: [ :c :i | 
			[ self dischargeArgIndex: i contract: c argument: (someArgs at: i) ]
				on: ContractBreach
				do:
					[ :e | (e setArgText: i) resignalAtBreachSite	"Signal argument contract errors at the point where the contracting method was called." ] ].
	return := anObject withArgs: someArgs executeMethod: self method.
	(returnContract satisfiesContractC: return)
		ifFalse: [ ContractBreach returnContract: returnContract received: return ].
	^ return