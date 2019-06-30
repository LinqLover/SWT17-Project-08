testing
testAlignTwoLastUsedWindows

	|window1 window2|
	
	window1 := windowTest openNewWindow.
	window2 := windowTest openNewWindow.
	
	WAAligner new alignLastUsedWindows: 2.
	
	self assert: (window1 width = (World width / 2) asInteger) description: 'Width is incorrect'.
	self assert: (window2 height = (World height - 18) asInteger) description: 'Height is incorrect'.