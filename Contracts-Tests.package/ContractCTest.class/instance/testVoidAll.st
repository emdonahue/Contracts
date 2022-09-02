metalinks
testVoidAll
	(CCMock >> #classC:) signContracts.
	self should: [ obj classC: 42 ] raise: ContractBreach.
	self should: [ obj classC: 42 ] raise: ContractBreach.
	ContractC voidAllContracts.
	obj classC: 42.