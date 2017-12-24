not
testNotC
	| cc argC retC |
	cc := (CCMock >> #notC:) contractC.
	argC := cc argContracts first.
	retC := cc returnContract.
	self assert: (argC isKindOf: NotC).
	self assert: (argC contracts first isKindOf: ClassC).
	self assert: (retC isKindOf: NotC).
	self assert: (retC contracts first isKindOf: ClassC).
	self assert: (argC satisfiesContractC: 'string').
	self assert: (argC satisfiesContractC: #()).
	self deny: (argC satisfiesContractC: 42).
	self assert: (retC satisfiesContractC: 42).
	self assert: (retC satisfiesContractC: #()).
	self deny: (retC satisfiesContractC: 'string')