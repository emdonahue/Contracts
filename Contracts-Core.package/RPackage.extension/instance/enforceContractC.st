*Contracts-Core
enforceContractC
	<todo> "Figure out how to handle traits."
	self classes do: [:c | (c isKindOf: Trait) ifFalse: [ c enforceContractC ] ].