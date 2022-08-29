contracts
testClassC
	| argC retC |
	argC := ClassC new supertype: String.
	retC := ClassC new supertype: Number.
	self assert: (argC isKindOf: ClassC).
	self assert: argC supertype equals: String.
	self assert: (argC satisfiedBy: 'string').
	self deny: (argC satisfiedBy: 42).
	self should: [argC check: 42] raise: ContractBreach.
	self assert: (retC isKindOf: ClassC).
	self assert: retC supertype equals: Number.
	self deny: (retC satisfiedBy: 'string').
	self assert: (retC satisfiedBy: 42).
	self should: [retC check: 'string'] raise: ContractBreach.