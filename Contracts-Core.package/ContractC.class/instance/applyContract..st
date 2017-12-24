applying
applyContract: aValue
	"Triggers an error if aValue does not satisfy this contract."
	(self satisfiesContractC: aValue)
		ifFalse: [ ContractViolation signal ].
	^ aValue