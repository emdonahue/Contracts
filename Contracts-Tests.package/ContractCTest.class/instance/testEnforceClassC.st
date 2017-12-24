class
testEnforceClassC
	 (CCMock >> #classC:) enforceContractC.
	obj return: 42.
	self assert: (obj classC: 'string') equals: 42.
	self should: [ obj classC: 42 ] raise: ContractViolation.
	obj return: 'string'.
	self should: [ obj classC: 'string' ] raise: ContractViolation.