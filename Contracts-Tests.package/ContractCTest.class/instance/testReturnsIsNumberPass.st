tests
testReturnsIsNumberPass
	CCMock enforceContractC.
	self assert: (obj returnsIsNumber: 42) equals: 42