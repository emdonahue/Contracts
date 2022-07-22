*Contracts-Core
signContract
	self pragmasDo: [ :p | 
		(p selector matchesRegex: '(type\:)*') ifTrue: [ 
			ContractC sign: self contract: p ]].