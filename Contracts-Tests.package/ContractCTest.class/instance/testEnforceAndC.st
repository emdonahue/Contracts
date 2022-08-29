metalinks
testEnforceAndC
	(CCMock >> #andC:) contractC enforceC.
	obj return: ''.
	self assert: (obj andC: '') equals: ''.
	self should: [ obj andC: 'notEmpty' ] raise: ContractBreach.
	[ obj andC: 'notEmpty' ]
		on: ContractBreach
		do: [ :e | self assert: e messageText equals: 'Arg1 expected: #isEmpty received: notEmpty in CCMock>>#andC:' ]. "Test that and correctly blames subcontract."