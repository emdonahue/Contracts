combinators
testNotAndC

	"Tests whether default satisfiedBy based on check works properly."

	| c |
	c := #( NotC #( AndC positive even ) ) asContractC.
	self assert: (c
			 satisfiedBy: -2
			 receiver: nil
			 args: nil).
	self assert: (c
			 satisfiedBy: 3
			 receiver: nil
			 args: nil).
	self deny: (c
			 satisfiedBy: 2
			 receiver: nil
			 args: nil)