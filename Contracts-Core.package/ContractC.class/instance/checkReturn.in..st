discharging
checkReturn: anObject in: aContext

	"Check the return contract and resignal in aContext if breached."

	[ 
	self
		check: anObject
		receiver: self notYetImplemented
		args: self notYetImplemented ]
		on: ContractBreach
		do: [ :e | e return signalIn: aContext ]