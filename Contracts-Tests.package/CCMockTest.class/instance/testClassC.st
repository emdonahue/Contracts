metalinks
testClassC
	(CCMock >> #classC:) signContracts.
	obj return: 42.
	self assert: (obj classC: 'string') equals: 42.
	self should: [ obj classC: 42 ] raise: ContractBreach.
	obj return: 'string'.
	self should: [ obj classC: 'string' ] raise: ContractBreach