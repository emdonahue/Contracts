enforcing
testEnforceContractC
	self assert: (CCMock >> #classC: isKindOf: CompiledMethod).
	CCMock enforceContractC.
	self assert: (CCMock >> #classC: isKindOf: MethodContractC).
	CCMock enforceContractC.
	self assert: (CCMock >> #classC: isKindOf: MethodContractC).
	CCMock unenforceContractC.
	self assert: (CCMock >> #classC: isKindOf: CompiledMethod)..
	CCMock unenforceContractC.
	self assert: (CCMock >> #classC: isKindOf: CompiledMethod)..
	