selector
testEnforceSelectorC
	(CCMock >> #selectorC:) contractC enforceC.
	obj return: 42.
	self assert: (obj selectorC: 'string') equals: 42.
	self should: [ obj selectorC: 42 ] raise: ContractBreach.
	obj return: 'string'.
	self should: [ obj selectorC: 'string' ] raise: ContractBreach