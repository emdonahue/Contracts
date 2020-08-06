baselines
baseline: spec 
	<baseline>
	spec
		for: #common 
		do: [
			spec package: 'Contracts-Core';
				package: 'Contracts-Tests' with: [ spec requires: #('Contracts-Core') ]
		]