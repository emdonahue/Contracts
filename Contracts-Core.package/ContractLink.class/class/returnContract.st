as yet unclassified
returnContract
	^ self new
		selector: #checkReturn:receiver:node:args:in:;
		control: #after;
		arguments: #(value receiver node arguments context)