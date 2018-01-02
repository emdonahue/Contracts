all
testAnyC
	(CCMock >> #anyC:) contractC enforceC.
	obj return: true.
	self should: [ obj anyC: 42 ] raise: ContractViolation.
	self assert: (obj anyC: #()).
	self should: [ obj anyC: #(symbol) ] raise: ContractViolation.
	self assert: (obj anyC: #(42)).
	self assert: (obj anyC: #(42 51)).
	self assert: (obj anyC: #(42 51) asOrderedCollection).
	self assert: (obj anyC: #(42 51) asSet).
	self assert: ( obj anyC: #(42 symbol) ).
	self assert: ( obj anyC: #(symbol 42 ) ).