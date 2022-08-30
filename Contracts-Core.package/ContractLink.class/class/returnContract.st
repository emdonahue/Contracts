as yet unclassified
returnContract
	^ self new
		selector: #checkReturn:receiver:args:in:;
		control: #after;
		arguments: #(value receiver arguments context)