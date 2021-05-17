*Contracts-Core
unenforceContractC
	self classes do: [ :c | (c isKindOf: Trait) ifFalse: [ c unenforceContractC ] ].