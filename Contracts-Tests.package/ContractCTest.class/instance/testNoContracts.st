pragmas
testNoContracts
	self assert: ((CCMock >> #noContracts) contractC isKindOf: CompiledMethod)