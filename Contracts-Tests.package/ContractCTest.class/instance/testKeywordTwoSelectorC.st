contracts
testKeywordTwoSelectorC
	
	(CCMock >> #keywordTwo:selectorC:) signContracts.
	obj return: 42.
	obj keywordTwo: 42 selectorC: 42.
	self should: [ obj keywordTwo: 42 selectorC: 43 ] raise: ContractBreach.
	obj return: 41.
	self should: [ obj keywordTwo: 42 selectorC: 42 ] raise: ContractBreach.