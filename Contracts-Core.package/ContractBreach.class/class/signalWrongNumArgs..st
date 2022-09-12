signaling
signalWrongNumArgs: aMethod
	| methodName |
	methodName := WriteStream on: ''.
	aMethod printOn: methodName.
	(self new messageText: methodName contents, ' has wrong number of arguments'; method: aMethod) signal