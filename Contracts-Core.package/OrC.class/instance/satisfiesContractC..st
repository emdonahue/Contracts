subclassresponsibility
satisfiesContractC: anObject
	^ contracts anySatisfy: [ :c | c satisfiesContractC: anObject  ]