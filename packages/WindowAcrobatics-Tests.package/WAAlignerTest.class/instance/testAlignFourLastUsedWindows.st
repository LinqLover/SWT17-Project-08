testing
testAlignFourLastUsedWindows

	|window1 window2 window3|
	
	window1 := windowTest openNewWindow.
	window2 := windowTest openNewWindow.
	window3 := windowTest openNewWindow.
	
	WAAligner new alignLastUsedWindows: 4.
	
	self assert: (window1 width = (World width / 2) asInteger) description: 'Width is incorrect'.
	self assert: (window2 height = ((World height - 18) / 2) asInteger) description: 'Height is incorrect'.
	self assert: (window3 position = (0 @ 18)) description: 'Order of windows is incorrect'.