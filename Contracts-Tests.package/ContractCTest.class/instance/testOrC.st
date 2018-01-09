or
testOrC
	| cc argC retC |
	cc := (CCMock >> #orC:) contractC.
	argC := cc argContracts first.
	retC := cc returnContract.
	self assert: (argC isKindOf: OrC).
	self assert: (argC contracts first isKindOf: ClassC).
	self assert: argC contracts first supertype equals: Number.
	self assert: (argC contracts second isKindOf: ClassC).
	self assert: argC contracts second supertype equals: String.
	self assert: (argC satisfiedBy: 'string').
	self assert: (argC satisfiedBy: 42).
	self deny: (argC satisfiedBy: #()).
	self assert: (retC isKindOf: OrC).
	self assert: (retC contracts first isKindOf: ClassC).
	self assert: retC contracts first supertype equals: Number.
	self assert: (retC contracts second isKindOf: ClassC).
	self assert: retC contracts second supertype equals: String.
	self assert: (retC satisfiedBy: 'string').
	self assert: (retC satisfiedBy: 42).
	self deny: (retC satisfiedBy: #()).