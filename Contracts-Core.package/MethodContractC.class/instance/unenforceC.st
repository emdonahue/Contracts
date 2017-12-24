enforcing
unenforceC
	"Voids this contract and restores the original method to the methodDict."

	self methodClass methodDictionary at: self selector put: self method