*Contracts-Core
voidContracts
	self classes do: [ :c | (c isKindOf: Trait) ifFalse: [ c voidContracts ] ].