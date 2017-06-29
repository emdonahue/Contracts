tests
testFromPragma
	| cc |
	cc := MethodContractC fromContractPragmas: (CCMock >> #string:string:) pragmas first.
	self assert: (cc isKindOf: MethodContractC).
	self assert: cc argContracts size equals: 2.
	self assert: (cc argContracts first isKindOf: ClassC).
	self assert: (cc argContracts second isKindOf: SelectorC).
	self assert: (cc returnContract isKindOf: ClassC)