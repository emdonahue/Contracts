as yet unclassified
satisfiesContractC: anObject
	^ contracts anySatisfy: [ :c | c satisfiesContractC: anObject  ]