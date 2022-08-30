combinators
testVoidC
	(CCMock >> #voidC:) signContracts.
	self assert: (obj voidC: 42) equals: 42.
	self assert: (obj voidC: 'string') equals: 'string'.