or
testEnforceOrC
	| cc |
	cc := (CCMock >> #orC:) enforceContractC.
	self assert: (cc argContracts first isKindOf: OrC).
	self assert: (cc argContracts first contracts first isKindOf: ClassC).
	self assert: cc argContracts first contracts first supertype equals: Number.
	self assert: (cc argContracts first contracts second isKindOf: ClassC).
	self assert: cc argContracts first contracts second supertype equals: String.
	self assert: (cc returnContract  isKindOf: OrC).
	self assert: (cc returnContract  contracts first isKindOf: ClassC).
	self assert: cc returnContract  contracts first supertype equals: Number.
	self assert: (cc returnContract  contracts second isKindOf: ClassC).
	self assert: cc returnContract  contracts second supertype equals: String.