*Contracts-Core
asContractC
	"A generic class promotes to a ClassContract when used in a type signature. This contract checks that all values subclass this class, using #isKindOf:"

	^ ClassC fromClass: self