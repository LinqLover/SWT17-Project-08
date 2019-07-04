testing
testAlignWindowLeft
	
	|window|
	
	window := self openNewWindow.
	WAAligner new align: #left.
	self assert: (window position = (0 @ self dockingBarHeight)) description: 'Window didnt align correctly (left).'.
	self assert: (window height = (World height - self dockingBarHeight)) description: 'Window didnt align correctly (left).'.