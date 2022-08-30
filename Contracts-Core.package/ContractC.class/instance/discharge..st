discharging
discharge: anObject

	"Checks that anObject satisfies the contract and either allows the computation to proceed, or else signals a ContractViolation."

	| maybeBool |
	maybeBool := self
		             satisfiedBy: anObject
		             receiver: self notYetImplemented
		             args: self notYetImplemented.
	(maybeBool respondsTo: #ifFalse:) ifFalse: [ 
		self signalBreach: anObject ].
	maybeBool ifFalse: [ self signalBreach: anObject ].
	^ anObject