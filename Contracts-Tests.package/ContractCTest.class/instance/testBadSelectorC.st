contracts
testBadSelectorC

	| argC |
	argC := #value asContractC.
	self assert: (argC isKindOf: SelectorC).
	self assert: argC selector equals: #value.
	self
		assert: (argC
				 check: true
				 receiver: nil
				 args: nil)
		equals: true.
	self
		should: [ 
			argC
				check: 42
				receiver: nil
				args: nil ]
		raise: ContractBreach.
