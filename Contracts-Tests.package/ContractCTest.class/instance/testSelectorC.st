selector
testSelectorC
	| cc argC retC |
	cc := (CCMock >> #selectorC:) contractC.
	argC := cc argContracts first.
	retC := cc returnContract.
	self assert: (argC isKindOf: SelectorC).
	self assert: argC selector equals: #isString.
	self assert: (argC satisfiesContractC: 'string').
	self deny: (argC satisfiesContractC: 42).
	self assert: (retC isKindOf: SelectorC).
	self assert: retC selector equals: #isNumber.
	self deny: (retC satisfiesContractC: 'string').
	self assert: (retC satisfiesContractC: 42)