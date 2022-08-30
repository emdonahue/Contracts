subclassresponsibility
satisfiedBy: anObject receiver: theReceiver args: theArgs

	^ contracts anySatisfy: [ :c | 
		  c
			  satisfiedBy: anObject
			  receiver: theReceiver
			  args: theArgs ]