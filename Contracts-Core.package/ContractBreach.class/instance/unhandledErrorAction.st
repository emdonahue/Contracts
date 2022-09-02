handling
unhandledErrorAction
	"Void all contracts on uncaught errors so debugger doesn't have to step through them."
	ContractC voidAllContracts.
	^ super unhandledErrorAction.