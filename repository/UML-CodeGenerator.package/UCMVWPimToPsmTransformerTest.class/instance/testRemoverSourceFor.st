tests - accessors
testRemoverSourceFor
	input := FAMIXAttribute named: 'items'.
	input multiplicity upper: 2.
	result := transformer removerSourceFor: input.
	self
		assert: result body
		equals:
			'removeItem: anObject
	items remove: anObject'