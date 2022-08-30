subclassresponsibility
satisfiedBy: anObject receiver: theReceiver args: theArgs
	^ (anObject respondsTo: selector) and: [ true == (anObject perform: selector) ]