tests
testAndC
	| cc argC retC |
	cc := (CCMock >> #andC:) contractC.
	argC := cc argContracts first.
	retC := cc returnContract.
	self assert: (argC isKindOf: AndC).
	self assert: (argC contracts first isKindOf: ClassC).
	self assert: (argC contracts second isKindOf: SelectorC).
	self assert: (retC isKindOf: AndC).
	self assert: (retC contracts first isKindOf: SelectorC).
	self assert: (retC contracts second isKindOf: ClassC).
	self assert: (argC satisfiesContractC: '').
	self deny: (argC satisfiesContractC: #()).
	self deny: (argC satisfiesContractC: 'string').
	self assert: (retC satisfiesContractC: '').
	self deny: (retC satisfiesContractC: #()).
	self deny: (retC satisfiesContractC: 'string').