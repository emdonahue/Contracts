discharging
checkArguments: argArray receiver: theReceiver in: aContext
	"Combinator is reused as the contract for the argument array."
	argArray doWithIndex: [ :x :i | 
		[ (contracts at: i) check: x receiver: theReceiver args: argArray ] 
			on: ContractBreach do: [ :e | (e arg: i) signalIn: aContext ] ]