and
testEnforceAndC
	(CCMock >> #andC:) enforceContractC.
	obj return: ''.
	self assert: (obj andC: '') equals: ''.
	self should: [ obj andC: 'notEmpty' ] raise: ContractViolation