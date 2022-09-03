subclassresponsibility
satisfiedBy: aValue receiver: theReceiver args: theArgs

	"Returns a boolean indicating whether aValue satisfied this contract, so that contract combinators can check subcontracts without firing an error. By default, checks whether an error will be thrown. Each contract must implement either check or satsifiedBy."

	[ 
	self
		check: aValue
		receiver: theReceiver
		args: theArgs ]
		on: ContractBreach
		do: [ ^ false ].
	^ true