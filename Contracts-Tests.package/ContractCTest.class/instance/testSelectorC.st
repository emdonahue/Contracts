contracts
testSelectorC

	| cc argC retC |
	cc := (CCMock >> #selectorC:) pragmas first arguments collect:
		      #asContractC.
	argC := cc first.
	retC := cc last.
	self assert: (argC isKindOf: SelectorC).
	self assert: argC selector equals: #isString.
	self
		assert: (argC
				 check: 'string'
				 receiver: nil
				 args: nil)
		equals: 'string'.
	self
		should: [ 
			argC
				check: 42
				receiver: nil
				args: nil ]
		raise: ContractBreach.
	self assert: (retC isKindOf: SelectorC).
	self assert: retC selector equals: #even.
	self
		should: [ 
			retC
				check: 'string'
				receiver: nil
				args: nil ]
		raise: ContractBreach.
	self
		assert: (retC
				 check: 42
				 receiver: nil
				 args: nil)
		equals: 42.
	self
		should: [ 
			retC
				check: 43
				receiver: nil
				args: nil ]
		raise: ContractBreach