subclassresponsibility
satisfiedBy: aDoable
	(aDoable respondsTo: #do:) ifFalse: [ ^ false ].
	aDoable
		do: [ :e | 
			(contracts first satisfiedBy: e)
				ifFalse: [ ^ false ] ].
	^ true