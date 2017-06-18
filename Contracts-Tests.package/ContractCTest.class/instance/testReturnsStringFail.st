tests
testReturnsStringFail
	CCMock enforceContractC.
	self should: [ obj returnsString: 42 ] raise: ContractViolation 