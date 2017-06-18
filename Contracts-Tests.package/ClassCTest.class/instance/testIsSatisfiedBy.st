tests
testIsSatisfiedBy
	| cc |
	cc := ClassC new supertype: String.
	self assert: (cc satisfiesContractC: 'string').
	self assert: (cc satisfiesContractC: #symbol).
	self deny: (cc satisfiesContractC: 42)