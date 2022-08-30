contracts
testBadSelectorC

	| argC retC |
	argC := #value asContractC.
	retC := argC.
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
	self assert: (retC isKindOf: SelectorC).
	self assert: retC selector equals: #value.
	self
		should: [ 
			retC
				check: 'string'
				receiver: nil
				args: nil ]
		raise: ContractBreach.
	self
		assert: (retC
				 check: true
				 receiver: nil
				 args: nil)
		equals: true