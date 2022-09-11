*Contracts-Core
signContracts
	self pragmasDo: [ :p | 
		(p selector matchesRegex: '(type\:)+') ifTrue: [ 
			self argumentNames size + 1 = p numArgs ifFalse: [ 
				ContractBreach signalWrongNumArgs: self ].
			self voidContracts.
			self ast link: (ContractLink returnContract metaObject: p arguments last asContractC).
			self ast link: (ContractLink argumentsContract metaObject: (ContractCombinatorC asContractC: p arguments allButLast)) ]].
	