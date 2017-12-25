pragmas
testNoPragmas
	self assert:( (CCMock >> #noPragmas) contractC isKindOf: CompiledMethod)