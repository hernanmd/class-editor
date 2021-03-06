example
example1
	| pim psm wb e1 v1 v2 |
pim := 'VegetationUnit location --- occupant Forager[*];' asClassDiagram.
pim name: 'Model'.

psm := UCMVWPimToPsmTransformer new
	generateFor: pim with: nil.

(wb := OPWorkbench new) openProject: (OPProject new).

v1 := ((e1 := OPEditor new)
	workbench: wb;
	buildWithSpec;
	openModel: pim) canvasModel roassalView.

v2 := ((e1 := OPEditor new)
	workbench: wb;
	buildWithSpec;
	openModel: psm) canvasModel roassalView.

v1 addAll: v2 elements.
RTGridLayout new
	gapSize: 150;
	on: (v1 elements select: [ :each | each model isKindOf: OPUmlClassifierShape]).
v1