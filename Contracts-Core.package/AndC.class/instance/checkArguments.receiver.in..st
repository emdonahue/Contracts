discharging
checkArguments: argArray receiver: theReceiver in: aContext
	"AndC is reused as the contract for the argument array."
	argArray doWithIndex: [ :x :i | 
		[ 
		self
			check: x
			receiver: theReceiver
			args: argArray ]
			on: ContractBreach
			do: [ :e | (e arg: i) signalIn: aContext ] ]