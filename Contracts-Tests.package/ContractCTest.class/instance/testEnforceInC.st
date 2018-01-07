in
testEnforceInC
	self skip.
	(CCMock >> #inC:) contractC enforceC.
	obj return: true.
	self should: [ obj inC: 42 ] raise: ContractBreach.
	self assert: (obj inC: #()).
	self should: [ obj inC: #(symbol) ] raise: ContractBreach.
	self assert: (obj inC: #(42)).
	self assert: (obj inC: #(42 51)).
	self assert: (obj inC: #(42 51) asOrderedCollection).
	self assert: (obj inC: #(42 51) asSet).
	self assert: (obj inC: #(42 symbol)).
	self assert: (obj inC: #(symbol 42))