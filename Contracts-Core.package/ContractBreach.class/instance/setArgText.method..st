accessing
setArgText: argIndex method: aMethod
	"Set the messageText to describe a breach of argument contract argIndex."

	self messageText: 'Arg' , argIndex asString , self messageText , ' in ' , aMethod name.