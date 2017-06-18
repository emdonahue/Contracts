applying
applyContract: aValue
	(self satisfiesContractC: aValue)
		ifFalse: [ ContractViolation signal ].
	^ aValue