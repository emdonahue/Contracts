inherits
testInheritsC
	
	CCMockSuper enforceContractC.
	self assert: (obj inheritsC: 'string') equals: 'string'.
	self should: [ obj inheritsC: 42 ] raise: ContractViolation