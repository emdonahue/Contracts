subclassresponsibility
satisfiesContractC: anObject
	^ (anObject respondsTo: selector) and: [ anObject perform: selector ]