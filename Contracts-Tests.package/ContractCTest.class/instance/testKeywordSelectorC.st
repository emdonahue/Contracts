contracts
testKeywordSelectorC
	
	(CCMock >> #keywordSelectorC:) signContracts.
	obj return: 42.
	obj keywordSelectorC: 42.
	self should: [ obj keywordSelectorC: 41 ] raise: ContractBreach.
	obj return: 41.
	self should: [ obj keywordSelectorC: 42 ] raise: ContractBreach.