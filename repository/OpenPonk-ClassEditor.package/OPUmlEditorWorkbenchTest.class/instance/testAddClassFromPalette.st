tests
testAddClassFromPalette
	| position shape ev classEntry link method |
	classEntry := paletteEntries detect: [ :each | each label = 'Class' ].
	classEntry performAction.
	position := 0 @ 0.
	shape := view canvas shapeWithAction: TRMouseLeftClick forPositionInPixels: position.
	ev := TRMouseLeftClick new.
	ev shape: shape.
	ev position: position.
	ev canvas: view canvas.
	"Pseudo-mock OPRenameElementCommand>>execute, so there's no asking user questions for a name."
	link := MetaLink new
		metaObject: [ :object | (object instVarNamed: #model) name: 'Hello' ];
		selector: #value:;
		arguments: #(object);
		control: #instead.
	method := OPRenameElementCommand >> #execute.
	method ast link: link.
	[ ev shape announce: ev ]
		ensure: [ link uninstall ].
	self assert: (model packagedElements asArray collect: #name) equals: #(Hello)