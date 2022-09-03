# Contracts
Dynamic runtime type-checking in Pharo using pragmas.

Contracts is a library that allows the programmer to write pragma annotations for methods that define types and other constraints that arguments and return values must satisfy. If a method is called with or returns improper values, an error is raised. This allows greater type safety with no runtime performance costs since the contract pragmas need only be enabled during testing.

## Basic Usage
Methods are annotated with the `type:` pragma, which specifies a type for each input argument and a final type for the return value. The following pragma specifies that the `#str:charAt:` method in `MyClass` accepts a `String` and an `Integer` and returns a `Character`.
```smalltalk
MyClass>>str: aStr charAt: aNum
<type: #String type: #Integer type: #Character>
^ aStr at: aNum.
```

The contract can be activated by "signing" it, using one of the following statements, which activate the contract of an individual method, all the methods in a class, or all the methods in a package, respectively:
```smalltalk
(MyClass>>#str:charAt:) signContracts.
MyClass signContracts.
'MyPackage' asPackage signContracts.
```
Contracts can be disabled using the corresponding `voidContracts` call, or `ContractC voidAllContracts` to void all contracts in the image. It is common to include signing calls in `TestCase>>setUp` methods and the corresponding void calls in `TestCase>>tearDown` methods to ensure that the tests run with contracts in place but that contracts are not applied in production (although they can be enabled at any time if so desired). 

## Primitive Contracts
There are a number of built-in types of contracts that can be used in `type:` pragmas:
- *Class Contracts*: Class contracts are specified by symbols that correspond to the class name, such as `#String`, and check that the argument or return value belongs to a subclass of the class.
- *Unary Method Contracts*: Unary method contracts are specified by a symbol corresponding to a method on the argument or return value itself and must return a boolean. For instance, in the above example, it might be useful to check that the index integer is positive with `type: #positive`. 
- *Binary Method Contracts*: Binary method contracts are specified by a symbol corresponding to a binary method on the *receiving* object and accept the argument or return value as their second argument. A common binary contract is `type: #==` for return values, which checks that the return value is the same as the receiving object. This contract will apply to any method that returns `self`.
- *Two Argument Keyword Method Contracts*: These contracts are specified by symbols corresponding to keyword arguments again on the *receiving* object that receives both the argument or return value and an array containing all arguments (or all arguments plus the return value if it is a return value contract). This is useful for constraints that are defined in terms of more than one argument.

## Contract Combinators
The Contracts library comes with a set of combinator contracts that allow the ad-hoc combinations of primitive contracts using a prefix array notation in the pragma. For instance, to ensure that `charAt:` accepts a positive integer, one can use the `AndC` contract, which is satisfied only when all of its subcontracts are satisfied, as follows: `#(AndC Integer positive)`. The combinator contract is the first element of the array, and every other item is a subcontract interpreted in the usual way. Current combinators include:
- *AndC*: Satisfied when all subcontracts are satisfied.
- *OrC*: Satisfied when any subcontract is satisfied.
- *NotC*: Satisfied when no subcontracts are satisfied.
- *AllC*: Assumes a collection that responds to `#do:` and is satisfied when all elements of that collection satisfy all subcontracts.
- *AnyC*: Assumes a collection that responds to `#do:` and is satisfied when any elements of that collection satisfy all subcontracts.
- *VoidC*: Always satisfied by any value. Use to ignore this element of the contract.

## Custom Contracts
For more complex typechecking, it is possible to create a class that houses custom logic. The class itself must respond to `asContractC` and return an instance that responds to `satisfies:`, which returns a boolean based on whether a value satisfies the relevant contract. To create a parameterizable contract such as a new combinator, the class must respond to `asContractC:`, which accepts the pragma array minus the first element corresponding to the custom class. The array elements can be turned into contracts as per the default strategy using `asContract` on the array or array elements, or the values can be interpreted as needed by the custom contract.

## Installation
```smalltalk
Metacello new
	baseline: 'Contracts';
	repository: 'github://emdonahue/Contracts';
	load.
  ```
