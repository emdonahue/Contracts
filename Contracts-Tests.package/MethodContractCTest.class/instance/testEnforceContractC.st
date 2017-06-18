tests
testEnforceContractC
	| cc |
	cc := (CCMock >> #number:) enforceContractC.
	self assert: (cc isKindOf: MethodContractC).
	self assert: cc argContracts size equals: 1.
	self assert: (cc argContracts first isKindOf: ClassC).
	self assert: (cc returnContract isKindOf: ClassC)