subclassresponsibility
satisfiedBy: anObject
	^ contracts allSatisfy: [ :c | (c satisfiedBy: anObject) not ].