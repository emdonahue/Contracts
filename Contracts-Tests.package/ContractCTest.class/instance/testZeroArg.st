contracts
testZeroArg
	(CCMock >> #zeroArg) signContracts.
	obj return: 'string'.
	self assert: obj zeroArg equals: 'string'.
	obj return: 42.
	self should: [ obj zeroArg ] raise: ContractBreach 