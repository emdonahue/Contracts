*Contracts-Core
signContract
	self pragmasDo: [ :p | 
		(p selector matchesRegex: '(type\:)+') ifTrue: [ 
			self voidContract.
			self ast link: 
				(ContractLink new
				metaObject: p arguments last asContractC;
				selector: #check:in:;
				control: #after;
				arguments: #(value context))]].