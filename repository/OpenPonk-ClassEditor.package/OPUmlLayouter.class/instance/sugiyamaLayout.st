ui hooks
sugiyamaLayout
	self
		applyLayout: [ :boxes :hierarchy :links | 
			| centerY |
			RTSugiyamaLayout new
				doNotAttachPoint;
				verticalGap: 100;
				horizontalGap: 100;
				on: boxes edges: hierarchy , links.
			centerY := boxes asGroup encompassingRectangle center y.
			boxes do: [ :each | each translateBy: 0 @ 2 * (centerY - each position y) ] ]