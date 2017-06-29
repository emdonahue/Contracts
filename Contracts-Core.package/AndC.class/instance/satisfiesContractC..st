subclassresponsibility
satisfiesContractC: anObject
	^ contracts allSatisfy: [ :c | c satisfiesContractC: anObject ]