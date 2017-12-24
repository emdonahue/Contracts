*Contracts-Core
asContractC
	"Arrays in type signatures correspond to OrC contracts, which check that values satisfy any of their sub-contracts."

	^  (Smalltalk globals at: self first) fromPragmas: self allButFirst 