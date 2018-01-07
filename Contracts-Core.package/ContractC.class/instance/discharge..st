subclassresponsibility
discharge: anObject
	"Checks that anObject satisfies the contract and either allows the computation to proceed, or else signals a ContractViolation."

	(self satisfiesContractC: anObject)
		ifFalse: [ (ContractBreach contract: self argument: anObject) signal ].
	^ anObject