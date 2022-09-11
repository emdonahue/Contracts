contracts
testArgMismatch
	self should: [ (CCMock>>#arg:mismatch:) signContracts ] raise: ContractBreach.
	[ (CCMock>>#arg:mismatch:) signContracts ] on: ContractBreach do: [ :e | 
		self assert: e asString equals: 'ContractBreach: CCMock>>#arg:mismatch: has wrong number of arguments' ].