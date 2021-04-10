any
testAnyC
	| cc |
	cc := (CCMock >> #anyC:) contractC.
	self assert: (cc argContracts first isKindOf: ObjectC).
	self assert: (cc argContracts first satisfiedBy: 42).
	self assert: (cc argContracts first satisfiedBy: 'string').
	self assert: (cc returnContract isKindOf: ObjectC).
	self assert: (cc returnContract satisfiedBy: 42).
	self assert: (cc returnContract satisfiedBy: 'string')