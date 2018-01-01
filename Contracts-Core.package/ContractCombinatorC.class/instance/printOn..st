printing
printOn: aStream
	aStream
		nextPut: $(;
		nextPutAll: self className; space.
		
	contracts do: [ :c | c printOn: aStream ] separatedBy: [ aStream space ].
	aStream nextPut: $)