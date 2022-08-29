discharging
checkArguments: argArray in: aContext
	"AndC is reused as the contract for the argument array."
	argArray do: [ :x | self check: x ].