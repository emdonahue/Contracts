tests
testNumberInputFail
	CCMock enforceContractC.
	self should: [ obj number: #symbol ] raise: ContractViolation 