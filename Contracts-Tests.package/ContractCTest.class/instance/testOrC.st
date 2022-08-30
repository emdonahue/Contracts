combinators
testOrC

	| cc argC retC |
	cc := (CCMock >> #orC:) pragmas first arguments collect: #asContractC.
	argC := cc first.
	retC := cc last.
	self assert: (argC isKindOf: OrC).
	self assert: (argC contracts first isKindOf: ClassC).
	self assert: argC contracts first supertype equals: Number.
	self assert: (argC contracts second isKindOf: ClassC).
	self assert: argC contracts second supertype equals: String.
	self assert: (argC
			 satisfiedBy: 'string'
			 receiver: nil
			 args: nil).
	self assert: (argC
			 satisfiedBy: 42
			 receiver: nil
			 args: nil).
	self deny: (argC
			 satisfiedBy: #(  )
			 receiver: nil
			 args: nil).
	self assert: (retC isKindOf: OrC).
	self assert: (retC contracts first isKindOf: ClassC).
	self assert: retC contracts first supertype equals: Number.
	self assert: (retC contracts second isKindOf: ClassC).
	self assert: retC contracts second supertype equals: String.
	self assert: (retC
			 satisfiedBy: 'string'
			 receiver: nil
			 args: nil).
	self assert: (retC
			 satisfiedBy: 42
			 receiver: nil
			 args: nil).
	self deny: (retC
			 satisfiedBy: #(  )
			 receiver: nil
			 args: nil)