tests
testOperation
	self parse: 'name()' rule: #operation.
	self parse: 'name() : Type' rule: #operation.
	self parse: 'name(arg)' rule: #operation.
	self parse: '+name(param: Type, param2: Type[*]): Type[1..2]' rule: #operation