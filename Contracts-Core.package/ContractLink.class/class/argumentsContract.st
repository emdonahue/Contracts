as yet unclassified
argumentsContract
	^ self new
		selector: #checkArguments:receiver:node:in:;
		control: #before;
		arguments: #(arguments receiver node context)