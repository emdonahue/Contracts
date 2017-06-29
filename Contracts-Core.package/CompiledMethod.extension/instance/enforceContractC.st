*Contracts-Core
enforceContractC
	"Reads the contract pragma and inserts an appropriate contract into the methodDict."

	^ (MethodContractC on: self) enforceC