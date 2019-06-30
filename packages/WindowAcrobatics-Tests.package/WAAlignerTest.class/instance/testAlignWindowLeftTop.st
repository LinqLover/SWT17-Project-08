testing
testAlignWindowLeftTop
	
	WAAligner new
		align: #left;
		align: #top.
	
	self
		assertBoundsFor: window
		left: 0 top: 18
		width: World width / 2 height: World height - 18 / 2