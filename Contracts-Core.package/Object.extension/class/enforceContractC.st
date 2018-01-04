*Contracts-Core
enforceContractC
	"Apply contracts to any method that has a type signature."

	| sup |
	self methodDictionary valuesDo: [ :m | m contractC enforceC ].
	sup := self superclass.
	[ sup = ProtoObject ] whileFalse: [ 
		sup enforceContractC.
	sup := sup superclass ]