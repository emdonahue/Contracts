contracts
testBrowse

	[ (CCMock>>#arg:mismatch:) signContracts ] on: ContractBreach do: [ :e | self assert: e method equals: (CCMock>>#arg:mismatch:) ].
	(CCMock>>#classC:) signContracts.
	[ obj classC: 42 ] on: ContractBreach do: [ :e | self assert: e method equals: (CCMock>>#classC:) ].
	[ obj classC: 'string' ] on: ContractBreach do: [ :e | self assert: e method equals: (CCMock>>#classC:) ].