any
testAnyC
	| cc |
	cc := (CCMock >> #anyC:) contractC.
	self assert: (cc argContracts first isKindOf: AnyC).
	self assert: (cc argContracts first satisfiesContractC: 42).
	self assert: (cc argContracts first satisfiesContractC: 'string').
	self assert: (cc returnContract isKindOf: AnyC).
	self assert: (cc returnContract satisfiesContractC: 42).
	self assert: (cc returnContract satisfiesContractC: 'string')