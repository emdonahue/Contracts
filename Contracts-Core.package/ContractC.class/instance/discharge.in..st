discharging
discharge: aValue in: aContext
	[ self discharge: aValue ] on: Error do: [ :e | e signalIn: aContext ].