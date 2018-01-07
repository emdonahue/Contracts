signaling
resignalAsArgContract: anIndex
	"self signal: 'arg contract!'"

	self resignalAs: ((self class contract: contract argument: argument) position: 'Arg ', anIndex asString)