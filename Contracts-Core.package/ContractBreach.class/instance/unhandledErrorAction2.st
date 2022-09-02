handling
unhandledErrorAction2
	"If an error is thrown and not caught (such as in testing), remove all contracts from all classes so that the debugger does not have to step through them."
	ContractC voidAllContracts.
	^ super unhandledErrorAction.