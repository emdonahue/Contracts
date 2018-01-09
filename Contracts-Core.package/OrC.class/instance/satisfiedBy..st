subclassresponsibility
satisfiedBy: anObject
	^ contracts anySatisfy: [ :c | c satisfiedBy: anObject  ]