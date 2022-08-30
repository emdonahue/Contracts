combinators
testAndC

	| argC retC |
	argC := #( AndC String isEmpty ) asContractC.
	retC := #( AndC String isEmpty ) asContractC.
	self assert: (argC isKindOf: AndC).
	self assert: (argC contracts first isKindOf: ClassC).
	self assert: (argC contracts second isKindOf: SelectorC).
	self assert: (retC isKindOf: AndC).
	self assert: (retC contracts first isKindOf: ClassC).
	self assert: (retC contracts second isKindOf: SelectorC).
	self assert: (argC
			 satisfiedBy: ''
			 receiver: nil
			 args: nil).
	self deny: (argC
			 satisfiedBy: #(  )
			 receiver: nil
			 args: nil).
	self deny: (argC
			 satisfiedBy: 'string'
			 receiver: nil
			 args: nil).
	self assert: (retC
			 satisfiedBy: ''
			 receiver: nil
			 args: nil).
	self deny: (retC
			 satisfiedBy: #(  )
			 receiver: nil
			 args: nil).
	self deny: (retC
			 satisfiedBy: 'string'
			 receiver: nil
			 args: nil)