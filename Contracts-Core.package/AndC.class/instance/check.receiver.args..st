subclassresponsibility
check: anObject receiver: theReceiver args: theArgs

	contracts do: [ :c | 
		c
			check: anObject
			receiver: theReceiver
			args: theArgs ]