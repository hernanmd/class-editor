configuration
constraintLabel: aLabel at: aPosition side: aSide
	| config anchor |
	config := Dictionary
		with: #source -> (Array with: 10 with: aSide * 10)
		with: #target -> (Array with: -10 with: aSide * 10)
		with: #middle -> (Array with: 0.5 with: 10).
	anchor := OPRTAnchorConstraint new.
	anchor
		element: aLabel rtElement;
		edge: associationShape rtEdge;
		balance: (config at: aPosition) first;
		minDistance: (config at: aPosition) second.
	^ anchor