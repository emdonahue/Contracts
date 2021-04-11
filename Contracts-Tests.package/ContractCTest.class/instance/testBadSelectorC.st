selector
testBadSelectorC
	| cc argC retC |
	cc := (CCMock >> #badSelectorC:) contractC.
	argC := cc argContracts first.
	retC := cc returnContract.
	self assert: (argC isKindOf: SelectorC).
	self assert: argC selector equals: #value.
	self assert: (argC discharge: true) equals: true.
	self should: [ argC discharge: 42 ] raise: ContractBreach.
	self assert: (retC isKindOf: SelectorC).
	self assert: retC selector equals: #value.
	self should: [ retC discharge: 'string' ] raise: ContractBreach.
	self assert: (retC discharge: true) equals: true.