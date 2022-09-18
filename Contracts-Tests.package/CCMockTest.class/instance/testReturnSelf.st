metalinks
testReturnSelf
	"Tests a bug in MetaLinks where implicit self returns are called twice, once with nil and once with self. Will pass when MetaLinks is patched."
	(CCMock >> #returnSelf) signContracts.
	obj returnSelf.