contracts
testZeroArg
	| cc |
	cc := (CCMock >> #zeroArg) contractC.
	self assert: cc argContracts isEmpty.
	self assert: (cc returnContract isKindOf: ClassC).
	cc enforceC.
	obj return: 'string'.
	self assert: obj zeroArg equals: 'string'.
	obj return: 42.
	self should: [ obj zeroArg ] raise: ContractBreach 