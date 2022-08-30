subclassresponsibility
satisfiedBy: aCollection receiver: theReceiver args: theArgs

	^ (aCollection respondsTo: #do:) and: [ 
		  aCollection do: [ :x | 
			  (contracts allSatisfy: [ :c | 
				  c satisfiedBy: x
					  receiver: theReceiver
					  args: theArgs ]) 
						ifFalse: [ ^ false ]]. 
				true ]