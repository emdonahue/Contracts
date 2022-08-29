combinators
testNotC
	| cc argC retC |
	cc := (CCMock >> #notC:) contractC.
	argC := cc argContracts first.
	retC := cc returnContract.
	self assert: (argC isKindOf: NotC).
	self assert: (argC contracts first isKindOf: ClassC).
	self assert: (retC isKindOf: NotC).
	self assert: (retC contracts first isKindOf: ClassC).
	self assert: (argC satisfiedBy: 'string').
	self assert: (argC satisfiedBy: #()).
	self deny: (argC satisfiedBy: 42).
	self deny: (argC satisfiedBy: #symbol).
	self assert: (retC satisfiedBy: 42).
	self assert: (retC satisfiedBy: #()).
	self deny: (retC satisfiedBy: 'string')