pragmas
testPragmasAndContracts
	self assert: ((CCMock >> #pragmasAndContracts) contractC isKindOf: MethodContractC)