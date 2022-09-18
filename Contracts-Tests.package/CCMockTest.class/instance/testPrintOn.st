printing
testPrintOn
	self assert: (ClassC fromClass: String) asString equals: 'String'.
	self assert: (SelectorC fromSelector: #isString) asString equals: '#isString'.
	self assert: VoidC new asString equals: #VoidC.
	self assert: (NotC new contracts: {(ClassC fromClass: String)}) asString equals: '(NotC String)'.
	self assert: (AndC new contracts: {(ClassC fromClass: String)}) asString equals: '(AndC String)'.
	self assert: (OrC new contracts: {(ClassC fromClass: String). (SelectorC fromSelector: #isString) }) asString equals: '(OrC String #isString)'