discharging
run: aSelector with: someArgs in: anObject
	"Check argument contracts, run the method, check the return contract, and return the value."

	| return |
	self dischargeArgContractsOn: someArgs.
	return := anObject withArgs: someArgs executeMethod: self method.
	^ self dischargeReturnContractOn: return.