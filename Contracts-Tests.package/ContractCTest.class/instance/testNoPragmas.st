pragmas
testNoPragmas
	(CCMock >> #noPragmas) signContracts.
	self deny: ((CCMock >> #noPragmas) ast links includes: #isContractLink).