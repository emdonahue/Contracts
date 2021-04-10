compatibility
doesNotUnderstand: aMessage
	"If we receive a message meant for the underlying method, clean up and get out of the way."

	self methodClass unenforceContractC.
	^ aMessage sendTo: self method 