Abstract class for defining custom contracts. Subclasses should implement #satisfiesContractC, which returns true if the value satisfies the contract, or false if not. Classes can be enforced with ClassName enforceContractC. Packages can be enfored with 'PackageName' asPackage enforceContractC.

TODO
- handle trait methods
- handle class side methods
- add binary method contracts and use == as a check on when something returns itself