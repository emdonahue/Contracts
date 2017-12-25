arguments
testTwoArg
	| cc |
	cc := (CCMock >> #two:arg:) contractC.
	self assert: cc argContracts size equals: 2.
	self assert: (cc returnContract isKindOf: ClassC).
	cc enforceC.
	obj return: 'string'.
	self assert: (obj two: 'string' arg: 'string') equals: 'string'.

	self should: [ obj two: 'string' arg: 42 ] raise: ContractViolation.
self should: [ obj two: 42 arg: 'string' ] raise: ContractViolation.
	
	obj return: 42.
	self should: [ obj two: 'string' arg: 'string' ] raise: ContractViolation.