tests
testAsContractC
	| cc |
	cc := #String asContractC.
	self assert: (cc isKindOf: ClassC).
	self assert: cc supertype equals: String