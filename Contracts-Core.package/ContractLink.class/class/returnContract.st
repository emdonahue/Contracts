as yet unclassified
returnContract
	^ self new
		selector: #checkReturn:in:;
		control: #after;
		arguments: #(value context)