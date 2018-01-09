subclassresponsibility
satisfiedBy: anObject
	^ (anObject respondsTo: selector) and: [ anObject perform: selector ]