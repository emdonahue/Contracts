*Contracts-Core
asContractC
	"Arrays in type signatures represent S-expressions in which the first element of the array represents a composite contract that composes the rest of the elements as subcontracts. For instance, OrC checks if values satisfy any subcontract whereas AndC checks that all subcontracts are satisfied."

	^ (self class environment at: self first) asContractC: self allButFirst 