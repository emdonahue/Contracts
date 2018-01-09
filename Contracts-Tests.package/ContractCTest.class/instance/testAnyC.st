any
testAnyC
	| cc |
	cc := (CCMock >> #anyC:) contractC.
	self assert: (cc argContracts first isKindOf: AnyC).
	self assert: (cc argContracts first satisfiedBy: 42).
	self assert: (cc argContracts first satisfiedBy: 'string').
	self assert: (cc returnContract isKindOf: AnyC).
	self assert: (cc returnContract satisfiedBy: 42).
	self assert: (cc returnContract satisfiedBy: 'string')