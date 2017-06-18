evaluation
run: aSelector with: someArgs in: anObject
	argContracts with: someArgs do: [ :c :a | c applyContract: a ].
	^ returnContract applyContract: (anObject withArgs: someArgs executeMethod: self method)