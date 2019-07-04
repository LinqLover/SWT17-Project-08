testing
testAlignSixLastUsedWindows

	|window1 window2 window3 window4 window5 window6|
	
	window1 := self openNewWindow.
	window2 := self openNewWindow.
	window3 := self openNewWindow.
	window4 := self openNewWindow.
	window5 := self openNewWindow.
	window6 := self openNewWindow.
	
	WAAligner new alignLastUsedWindows: 6.
	
	self assert: window1 width near: World width / 2 description: 'Width is incorrect'.
	self assert: window2 height near: World height - self dockingBarHeight / 3 description: 'Height is incorrect'.
	self assert: window6 position near: 0 @ self dockingBarHeight description: 'Order of windows is incorrect'.