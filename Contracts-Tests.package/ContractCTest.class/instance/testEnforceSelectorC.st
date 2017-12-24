selector
testEnforceSelectorC
	(CCMock >> #selectorC:) enforceContractC.
	obj return: 42.
	self assert: (obj selectorC: 'string') equals: 42.
	self should: [ obj selectorC: 42 ] raise: ContractViolation.
	obj return: 'string'.
	self should: [ obj selectorC: 'string' ] raise: ContractViolation