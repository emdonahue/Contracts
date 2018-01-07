signaling
returnContract: aContract received: aValue
	self signal: 'Return expected: ' , aContract asString , ' received: ' , aValue asString