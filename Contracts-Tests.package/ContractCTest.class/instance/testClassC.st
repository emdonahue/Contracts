class
testClassC
	| cc argC retC |
	cc := (CCMock >> #classC:) contractC.
	self assert: (cc isKindOf: MethodContractC).
	argC := cc argContracts first.
	retC := cc returnContract.
	self assert: (argC isKindOf: ClassC).
	self assert: argC supertype equals: String.
	self assert: (argC satisfiedBy: 'string').
	self deny: (argC satisfiedBy: 42).
	self assert: (retC isKindOf: ClassC).
	self assert: retC supertype equals: Number.
	self deny: (retC satisfiedBy: 'string').
	self assert: (retC satisfiedBy: 42)