examples
notUsedExampleCommonStructure
	| uml cs |
	uml := OPUMLXMISpecsStorage umlMetamodel.
	cs := uml packagedElements
		detect: [ :each | each name = 'CommonStructure' ].
	^ OPUmlProject openOnModel: cs