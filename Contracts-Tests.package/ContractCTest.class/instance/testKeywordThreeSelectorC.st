contracts
testKeywordThreeSelectorC
	
	(CCMock >> #keywordThreeSelectorC:) signContracts.
	self should: [ obj keywordThreeSelectorC: 42 ] raise: ContractBreach.