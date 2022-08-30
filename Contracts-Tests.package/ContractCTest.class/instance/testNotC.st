combinators
testNotC

	| cc argC retC |
	cc := (CCMock >> #notC:) pragmas first arguments collect:
		      #asContractC.
	argC := cc first.
	retC := cc last.
	self assert: (argC isKindOf: NotC).
	self assert: (argC contracts first isKindOf: ClassC).
	self assert: (retC isKindOf: NotC).
	self assert: (retC contracts first isKindOf: ClassC).
	self assert: (argC
			 satisfiedBy: 'string'
			 receiver: nil
			 args: nil).
	self assert: (argC
			 satisfiedBy: #(  )
			 receiver: nil
			 args: nil).
	self deny: (argC
			 satisfiedBy: 42
			 receiver: nil
			 args: nil).
	self deny: (argC
			 satisfiedBy: #symbol
			 receiver: nil
			 args: nil).
	self assert: (retC
			 satisfiedBy: 42
			 receiver: nil
			 args: nil).
	self assert: (retC
			 satisfiedBy: #(  )
			 receiver: nil
			 args: nil).
	self deny: (retC
			 satisfiedBy: 'string'
			 receiver: nil
			 args: nil)