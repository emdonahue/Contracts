tests
testIsSatisfiedBy
	| cc |
	cc := SelectorC new selector: #isString.
	self assert: (cc satisfiesContractC: 'string').
	self assert: (cc satisfiesContractC: #symbol).
	self deny: (cc satisfiesContractC: 42)