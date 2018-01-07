selector
testSelectorC
	| cc argC retC |
	cc := (CCMock >> #selectorC:) contractC.
	argC := cc argContracts first.
	retC := cc returnContract.
	self assert: (argC isKindOf: SelectorC).
	self assert: argC selector equals: #isString.
	self assert: (argC discharge: 'string') equals: 'string'.
	self should: [ argC discharge: 42 ] raise: ContractBreach.
	self assert: (retC isKindOf: SelectorC).
	self assert: retC selector equals: #even.
	self should: [ retC discharge: 'string' ] raise: ContractBreach.
	self assert: (retC discharge: 42) equals: 42.
	self should: [ retC discharge: 43 ] raise: ContractBreach