A contract that accepts if any of its subcontracts accepts. Used for methods that may have several different types. Array type signatures automatically generate this type of contract.

<type: #(#Number #String) returns: #(#isNumber #isString)>