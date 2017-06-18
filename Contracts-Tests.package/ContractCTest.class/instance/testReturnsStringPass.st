tests
testReturnsStringPass
	CCMock enforceContractC.
	self assert: (obj returnsString: 'string') equals: 'string'