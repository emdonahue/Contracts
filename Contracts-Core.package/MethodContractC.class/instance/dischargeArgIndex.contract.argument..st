discharging
dischargeArgIndex: argIndex contract: aContract argument: anArgument
	^ [ aContract discharge: anArgument ]
		on: ContractBreach
		do: [ :e | e pass ]