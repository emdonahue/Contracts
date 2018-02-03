discharging
dischargeReturnContractOn: aReturn
	[ ^ returnContract discharge: aReturn ]
		on: ContractBreach
		do: [ :e | e setReturnText resignalAtBreachSite ].