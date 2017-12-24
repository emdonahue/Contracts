or
testApplyOrC
	(CCMock >> #orC:) enforceContractC.
	obj return: 42.
	self assert: (obj orC: 42) equals: 42.
	obj return: 'string'.
	self assert: (obj orC: 'string') equals: 'string'.
	self should: [ obj orC: true ] raise: ContractViolation.
	obj return: true.
	self should: [ obj orC: 42 ] raise: ContractViolation