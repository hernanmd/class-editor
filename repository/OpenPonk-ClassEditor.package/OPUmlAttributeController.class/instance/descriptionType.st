forms
descriptionType
	<magritteDescription>
	^ MAStringDescription new
		accessor:
			(MAPluggableAccessor
				read: [ :me | me model type ifNil: [ '' ] ifNotNil: #name ]
				write: [ :me :newValue | 
					newValue
						ifEmpty: [ me model type: nil ]
						ifNotEmpty: [ me model type: (self typeNamed: newValue) ].
					self refreshFigure ]);
		label: 'Type';
		priority: 5;
		yourself