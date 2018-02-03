discharging
dischargeArgContractsOn: someArgs
	argContracts
		withIndexDo: [ :c :i | 
			[ c discharge: (someArgs at: i) ]
				on: ContractBreach
				do: [ :e | (e setArgText: i) resignalAtBreachSite ] ].