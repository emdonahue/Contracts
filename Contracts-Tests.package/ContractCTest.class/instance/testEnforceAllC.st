all
testEnforceAllC
	(CCMock >> #allC:) contractC enforceC.
	obj return: true.
	self should: [ obj allC: 42 ] raise: ContractViolation.
	self assert: (obj allC: #()).
	self should: [ obj allC: #(symbol) ] raise: ContractViolation.
	self assert: (obj allC: #(42)).
	self assert: (obj allC: #(42 51)).
	self assert: (obj allC: #(42 51) asOrderedCollection).
	self assert: (obj allC: #(42 51) asSet).
	self should: [ obj allC: #(42 symbol) ] raise: ContractViolation.