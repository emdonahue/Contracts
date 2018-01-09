and
testAndC
	| cc argC retC |
	CTemp new blarg: 'blarg'.
	cc := (CCMock >> #andC:) contractC.
	argC := cc argContracts first.
	retC := cc returnContract.
	self assert: (argC isKindOf: AndC).
	self assert: (argC contracts first isKindOf: ClassC).
	self assert: (argC contracts second isKindOf: SelectorC).
	self assert: (retC isKindOf: AndC).
	self assert: (retC contracts first isKindOf: ClassC).
	self assert: (retC contracts second isKindOf: SelectorC).
	self assert: (argC satisfiedBy: '').
	self deny: (argC satisfiedBy: #()).
	self deny: (argC satisfiedBy: 'string').
	self assert: (retC satisfiedBy: '').
	self deny: (retC satisfiedBy: #()).
	self deny: (retC satisfiedBy: 'string')