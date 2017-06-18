as yet unclassified
testNumberOrString
	| cc |
	cc := (CCMock >> #numberOrString:) enforceContractC.
	self assert: (cc argContracts first isKindOf: OrC).
	self assert: (obj numberOrString: 42) equals: 42.
	self assert: (obj numberOrString: 'string') equals: 'string'.
	self should: [ obj numberOrString: true ] raise: ContractViolation 