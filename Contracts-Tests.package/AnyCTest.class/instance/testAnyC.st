as yet unclassified
testAnyC
	| cc |
	cc := (CCMock >> #anyC:) enforceContractC.
	self assert: (cc argContracts first isKindOf: AnyC).
	self assert: (obj anyC: 42) equals: 42.
	self assert: (obj anyC: 'string') equals: 'string'