*Contracts-Core
isContractCPragma
	"Returns true if this pragma represents a type signature for use in authoring a contract."
	^ self keyword matchesRegex: '(type\:)*(returns\:)'