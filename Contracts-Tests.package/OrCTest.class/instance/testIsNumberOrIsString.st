as yet unclassified
testIsNumberOrIsString
	| cc |
	cc := (CCMock >> #isNumberOrIsString:) enforceContractC.
	self assert: (cc argContracts first isKindOf: OrC).
	self assert: (obj isNumberOrIsString: 42) equals: 42.
	self assert: (obj isNumberOrIsString: 'string') equals: 'string'.
	self should: [ obj isNumberOrIsString: true ] raise: ContractViolation 