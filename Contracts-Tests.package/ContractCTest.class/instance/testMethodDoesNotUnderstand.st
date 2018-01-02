method
testMethodDoesNotUnderstand
	CCMock enforceContractC.
	self deny: (CCMock >> #classC:) isAbstract