userinterface
rebuild
	self disableRefresh.
	super rebuild.
	self enableRefresh.
	self controllers
		select: [ :each | each isKindOf: OPUmlClassController ]
		thenDo: [ :each | each refreshFigure ].
	self controllers do: #refreshFigure.
	self updateView