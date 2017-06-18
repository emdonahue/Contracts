tests
testReturnsIsNumberFail
	CCMock enforceContractC.
	self should: [ obj returnsIsNumber: 'string' ] raise: ContractViolation 