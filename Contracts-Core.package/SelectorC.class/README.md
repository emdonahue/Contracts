A contract that checks that a given value returns true in response to the contract's message. Type signature symbols not in the system dictionary automatically generate this type of contract. If the object does not respond to the given selector, this is counted as a contract violation as well.

<type: #isString returns: #isNumber>