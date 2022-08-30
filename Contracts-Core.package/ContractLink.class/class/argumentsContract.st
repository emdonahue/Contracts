as yet unclassified
argumentsContract
	^ self new
		selector: #checkArguments:receiver:in:;
		control: #before;
		arguments: #(arguments receiver context)