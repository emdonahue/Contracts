subclassresponsibility
discharge: aDoable
	(aDoable respondsTo: #do:)
		ifFalse: [ self signalBreach: aDoable ].
	aDoable
		do: [ :e | 
			contracts first discharge: e ].
	^ aDoable