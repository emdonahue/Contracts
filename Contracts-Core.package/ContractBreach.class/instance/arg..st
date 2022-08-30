accessing
arg: argIndex
	"Set the messageText to describe a breach of argument contract argIndex."
	
	self messageText: 'Arg' , argIndex asString , self messageText.