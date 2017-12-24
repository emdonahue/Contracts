class
testClassC
	| cc argC retC |
	cc := (CCMock >> #classC:) contractC.
	self assert: (cc isKindOf: MethodContractC).
	argC := cc argContracts first.
	retC := cc returnContract.
	self assert: (argC isKindOf: ClassC).
	self assert: argC supertype equals: String.
	self assert: (argC satisfiesContractC: 'string').
	self deny: (argC satisfiesContractC: 42).
	self assert: (retC isKindOf: ClassC).
	self assert: retC supertype equals: Number.
	self deny: (retC satisfiesContractC: 'string').
	self assert: (retC satisfiesContractC: 42)