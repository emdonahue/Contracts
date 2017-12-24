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
	self assert: (argC satisfiesContractC: 'string').
	self assert: (argC satisfiesContractC: 42).
	self deny: (argC satisfiesContractC: #()).
	self assert: (retC isKindOf: OrC).
	self assert: (retC contracts first isKindOf: ClassC).
	self assert: retC contracts first supertype equals: Number.
	self assert: (retC contracts second isKindOf: ClassC).
	self assert: retC contracts second supertype equals: String.
	self assert: (retC satisfiesContractC: 'string').
	self assert: (retC satisfiesContractC: 42).
	self deny: (retC satisfiesContractC: #()).