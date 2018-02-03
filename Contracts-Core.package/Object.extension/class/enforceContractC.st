*Contracts-Core
enforceContractC
	"Apply contracts to any method that has a type signature."
	<todo>
	self methodDictionary
		valuesDo: [ :m | 
			(m isKindOf: CompiledMethod) | (m isKindOf: MethodContractC)
				ifFalse: [ Transcript show: m asString ].
			m contractC enforceC ]