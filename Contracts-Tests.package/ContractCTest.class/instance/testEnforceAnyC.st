metalinks
testEnforceAnyC
	(CCMock >> #voidC:) signContracts.
	obj return: 42.
	self assert: (obj voidC: 42) equals: 42.
	obj return: 'string'.
	self assert: (obj voidC: 'string') equals: 'string'