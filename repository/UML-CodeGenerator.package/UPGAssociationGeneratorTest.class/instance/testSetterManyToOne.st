tests
testSetterManyToOne
	self
		ast: (generator setter: oneToMany sourceEnd)
		equals:
			'university: anUniversity
	|oldRef|
	university = anUniversity ifTrue: [ ^ self ].
	oldRef := university.
	university := anUniversity.
	"oldRef ifNotNil: [ oldRef removeDepartment: self ]."
	oldRef ifNotNil: [ oldRef forgetAttribute: #department ].
	university ifNotNil: [ university addDepartment: self ]'