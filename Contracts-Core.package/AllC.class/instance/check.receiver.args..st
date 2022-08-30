subclassresponsibility
check: aCollection receiver: theReceiver args: theArgs

	(aCollection respondsTo: #do:) ifFalse: [ 
		self signalBreach: aCollection ].
	aCollection do: [ :x | 
		contracts do: [ :c | 
			c
				check: x
				receiver: theReceiver
				args: theArgs ] ]