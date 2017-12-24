subclassresponsibility
satisfiesContractC: anObject
	^ (contracts first satisfiesContractC: anObject) not