discharging
checkArguments: argArray in: aContext

	"AndC is reused as the contract for the argument array."

	argArray doWithIndex: [ :x :i | 
		[ 
		self
			check: x
			receiver: nil
			args: nil ]
			on: ContractBreach
			do: [ :e | (e arg: i) signalIn: aContext ] ]