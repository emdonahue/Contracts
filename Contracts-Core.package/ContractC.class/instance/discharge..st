discharging
discharge: anObject
	"Checks that anObject satisfies the contract and either allows the computation to proceed, or else signals a ContractViolation."

	(self satisfiedBy: anObject)
		ifFalse: [ self signalBreach: anObject ].
	^ anObject