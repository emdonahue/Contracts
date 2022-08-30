subclassresponsibility
satisfiedBy: anObject receiver: theReceiver args: theArgs

	^ contracts allSatisfy: [ :c | 
		  (c
			   satisfiedBy: anObject
			   receiver: theReceiver
			   args: theArgs) not ]