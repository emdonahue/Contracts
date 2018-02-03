discharging
run: aSelector with: someArgs in: anObject
	"Mark the coverage case as run before proceeding with the contract check."
	method mark.
	^ super run: aSelector with: someArgs in: anObject