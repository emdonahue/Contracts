subclassresponsibility
satisfiesContractC: aDoable
	(aDoable respondsTo: #do:) ifFalse: [ ^ false ].
	aDoable
		do: [ :e | 
			(contracts first satisfiesContractC: e)
				ifFalse: [ ^ false ] ].
	^ true