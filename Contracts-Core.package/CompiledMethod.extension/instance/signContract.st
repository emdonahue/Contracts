*Contracts-Core
signContract
	self pragmasDo: [ :p | 
		(p selector matchesRegex: '(type\:)+') ifTrue: [ 
			self voidContract.
			self ast link: (ContractLink returnContract metaObject: p arguments last asContractC).
			self ast link: (ContractLink argumentsContract metaObject: (AndC fromPragmas: p arguments allButLast)) ]].
	