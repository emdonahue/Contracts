constructor
sign: aMethod contract: aPragma

	(aMethod ast links select: #isContractLink) do: #uninstall.
	aMethod ast link: (ContractLink new
			 metaObject: aPragma arguments last asContractC;
			 selector: #discharge:in:;
			 control: #after;
			 arguments: #( value context );
			 condition: [ :l :v | 
				 (l metaObject
					  satisfiedBy: v
					  receiver: self notYetImplemented
					  args: self notYetImplemented) not ]
			 arguments: #( link value ))