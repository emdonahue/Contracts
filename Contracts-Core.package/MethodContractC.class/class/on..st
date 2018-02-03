instance creation
on: aMethod
	^ (aMethod pragmaAt: ('' join: (Array new: aMethod numArgs withAll: #type:) , {#returns:}) asSymbol) ifNil: aMethod ifNotNil: [ :p | (self fromPragma: p) method: aMethod ]