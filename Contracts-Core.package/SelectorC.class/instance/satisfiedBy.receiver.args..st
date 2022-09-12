subclassresponsibility
satisfiedBy: anObject receiver: theReceiver args: theArgs
	selector isUnary ifTrue: [ 
		^ (anObject respondsTo: selector) and: [ true == (anObject perform: selector)]].
	selector numArgs = 1 ifTrue: [ 
		^ (theReceiver respondsTo: selector) and: [ true == (theReceiver perform: selector with: anObject)]].
	selector numArgs = 2 ifTrue: [
		^ (theReceiver respondsTo: selector) and: [ true == (theReceiver perform: selector with: anObject with: theArgs)]].
	^ false.