metalinks
testAllC
	| c |
	c := (CCMock >> #allC:) signContracts.
	obj return: true.
	self should: [ obj allC: 42 ] raise: ContractBreach.
	self assert: (obj allC: #()).
	self should: [ obj allC: #(symbol) ] raise: ContractBreach.
	self assert: (obj allC: #(42)).
	self assert: (obj allC: #(42 51)).
	self assert: (obj allC: #(42 51) asOrderedCollection).
	self assert: (obj allC: #(42 51) asSet).
	self should: [ obj allC: #(42 symbol) ] raise: ContractBreach.
	[ obj allC: #(42 symbol) ]
		on: ContractBreach
		do: [ :e | self assert: e messageText equals: 'Arg1 expected: Number received: symbol' ].
	[ obj allC: 42 ]
		on: ContractBreach
		do: [ :e | self assert: e messageText equals: 'Arg1 expected: (AllC Number) received: 42' ]