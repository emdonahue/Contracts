contracts
testClassC

	| argC retC |
	argC := ClassC new supertype: String.
	retC := ClassC new supertype: Number.
	self assert: (argC isKindOf: ClassC).
	self assert: argC supertype equals: String.
	self assert: (argC
			 satisfiedBy: 'string'
			 receiver: nil
			 args: nil).
	self deny: (argC
			 satisfiedBy: 42
			 receiver: nil
			 args: nil).
	self
		should: [ 
			argC
				check: 42
				receiver: nil
				args: nil ]
		raise: ContractBreach.
	self assert: (retC isKindOf: ClassC).
	self assert: retC supertype equals: Number.
	self deny: (retC
			 satisfiedBy: 'string'
			 receiver: nil
			 args: nil).
	self assert: (retC
			 satisfiedBy: 42
			 receiver: nil
			 args: nil).
	self
		should: [ 
			retC
				check: 'string'
				receiver: nil
				args: nil ]
		raise: ContractBreach