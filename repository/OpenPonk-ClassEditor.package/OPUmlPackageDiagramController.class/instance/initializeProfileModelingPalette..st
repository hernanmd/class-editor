palette
initializeProfileModelingPalette: aPalette
	(self model oclIsKindOf: #Profile)
		ifFalse: [ ^ self ].
	aPalette newSeparator.
	(aPalette newCreationEntry: [ OPUmlStereotypeController new ])
		label: 'Stereotype';
		icon: OPUmlIcons stereotypeIcon;
		whenCompletedRename.
	(aPalette newConnectionCreationTool: [ OPUmlExtensionController new ])
		label: 'Extension';
		icon: OPUmlIcons extensionIcon