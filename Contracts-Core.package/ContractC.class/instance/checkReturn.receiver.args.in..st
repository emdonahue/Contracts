metalinks
checkReturn: aValue receiver: anObject args: theArgs in: aContext 
	"Check the return contract and resignal in aContext if breached."
	[ self check: aValue receiver: anObject args: theArgs ] on: ContractBreach 
		do: [ :e | (e return: aValue) "signalIn: aContext" ].