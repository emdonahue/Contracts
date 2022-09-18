metalinks
testAnyC
	(CCMock >> #anyC:) signContracts.
	obj anyC: #(1 'string').
	self should: [obj anyC: #('string' 'string')] raise: ContractBreach.
	self should: [obj anyC: 42] raise: ContractBreach.