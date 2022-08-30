contracts
testBinarySelectorC
	
	(CCMock >> #binarySelectorC:) signContracts.
	obj return: obj.
	obj binarySelectorC: 42.
	self should: [ obj binarySelectorC: 41 ] raise: ContractBreach.
	obj return: 42.
	self should: [ obj binarySelectorC: 42 ] raise: ContractBreach.