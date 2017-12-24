and
testEnforceAndC
	(CCMock >> #andC:) contractC enforceC.
	obj return: ''.
	self assert: (obj andC: '') equals: ''.
	self should: [ obj andC: 'notEmpty' ] raise: ContractViolation