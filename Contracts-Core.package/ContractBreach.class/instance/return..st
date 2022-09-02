accessing
return: aValue
	"Set the messageText to describe a breach of return contract."
	value := aValue.
	self messageText: 'Return' , self messageText.