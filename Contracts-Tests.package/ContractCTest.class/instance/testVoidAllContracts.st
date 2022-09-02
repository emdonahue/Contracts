combinators
testVoidAllContracts
	CCMock signContracts.
	self should: [obj classC: 42] raise: ContractBreach.
	self should: [obj classC: 42] raise: ContractBreach. "Ensure it doesn't void all contracts during testing."
	ContractC voidAllContracts.
	obj classC: 42.