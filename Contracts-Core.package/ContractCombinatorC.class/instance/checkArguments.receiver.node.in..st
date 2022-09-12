discharging
checkArguments: argArray receiver: theReceiver node: theNode in: aContext
	"Combinator is reused as the contract for the argument array."
	argArray doWithIndex: [ :x :i | 
		[ (contracts at: i) check: x receiver: theReceiver args: argArray ] 
			on: ContractBreach do: [ :e | (e arg: i; method: theNode methodClass >> theNode selector) signalIn: aContext ] ]