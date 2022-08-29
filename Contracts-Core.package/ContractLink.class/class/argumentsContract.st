as yet unclassified
argumentsContract
	^ self new
		selector: #checkArguments:in:;
		control: #before;
		arguments: #(arguments context)