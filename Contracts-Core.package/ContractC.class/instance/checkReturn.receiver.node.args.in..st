metalinks
checkReturn: aValue receiver: theReceiver node: theNode args: theArgs in: aContext 
	"Check the return contract and resignal in aContext if breached."
	[ self check: aValue receiver: theReceiver args: theArgs ] on: ContractBreach 
		do: [ :e | (e return; method: (theNode methodClass >> theNode selector)) signalIn: aContext ].