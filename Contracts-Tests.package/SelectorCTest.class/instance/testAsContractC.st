tests
testAsContractC
	| cc |
	cc := #isString asContractC.
	self assert: (cc isKindOf: SelectorC ).
	self assert: cc selector equals: #isString.