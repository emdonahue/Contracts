not
testEnforceNotC
	(CCMock >> #notC:) contractC enforceC.
	obj return: 42.
	self assert: (obj notC: 'string') equals: 42.
	self should: [ obj notC: 42 ] raise: ContractBreach.
	obj return: 'string'.
	self should: [ obj notC: 'string' ] raise: ContractBreach