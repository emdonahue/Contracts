contracts
testTwoArg
	(CCMock >> #two:arg:) signContracts.
	obj return: 'string'.
	self assert: (obj two: 'string' arg: 'string') equals: 'string'.

	self should: [ obj two: 'string' arg: 42 ] raise: ContractBreach.
self should: [ obj two: 42 arg: 'string' ] raise: ContractBreach.
	
	obj return: 42.
	self should: [ obj two: 'string' arg: 'string' ] raise: ContractBreach.