Abstract class for defining custom contracts. Subclasses should implement #satisfiesContractC, which returns true if the value satisfies the contract, or false if not. Classes can be enforced with ClassName enforceContractC. Packages can be enfored with 'PackageName' asPackage enforceContractC.

TODO
- ensure that contracts check that their methods have the right number of args
- remove all enforceC methods and replace with enforceContractC to prevent autocomplete from making a mistake
- consider sign/void rather than enforce/unenforce