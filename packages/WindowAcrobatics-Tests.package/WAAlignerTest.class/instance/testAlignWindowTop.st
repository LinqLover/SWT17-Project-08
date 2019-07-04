testing
testAlignWindowTop
	
	|window|
	
	window := self openNewWindow.
	WAAligner new align: #top.
	self assert: (window position = (0 @ self dockingBarHeight)) description: 'Window didnt align correctly (top).'.