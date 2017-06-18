tests
testNumberInputPass
	CCMock enforceContractC.
	self assert: (obj number: 42) equals: 42