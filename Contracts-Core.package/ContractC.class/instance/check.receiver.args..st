discharging
check: anObject receiver: theReceiver args: theArgs

	"Checks that anObject satisfies the contract and either allows the computation to proceed, or else signals a ContractBreach."

	true == (self
		 satisfiedBy: anObject
		 receiver: theReceiver
		 args: theArgs) ifFalse: [ 
		self signalBreach: anObject ].
	^ anObject