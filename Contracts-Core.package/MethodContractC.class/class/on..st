instance creation
on: aMethod
	^ aMethod pragmas detect: #isContractCPragma ifFound: [ :p | (self fromPragma: p) enforce ] ifNone: aMethod	"If this method contains no contract pragmas, abort and leave it un-typed."