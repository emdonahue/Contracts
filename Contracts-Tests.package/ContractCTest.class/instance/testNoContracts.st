pragmas
testNoContracts
	(CCMock >> #noContracts) signContracts.
	self deny: ((CCMock >> #noContracts) ast links includes: #isContractLink).