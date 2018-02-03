coverage
testCoverageCompatibility
	| coverage |
	coverage := (TestCoverage on: (CCMock >> #coverageCompatibility:) methodReference) install.
	(CCMock >> #coverageCompatibility:) contractC enforceC.
	self should: [ obj coverageCompatibility: 42 ] raise: ContractBreach.
	(CCMock >> #coverageCompatibility:) contractC unenforceC.
	self assert: (obj coverageCompatibility: 42) equals: 42.
	self assert: coverage hasRun.
	coverage uninstall