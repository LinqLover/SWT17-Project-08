as yet unclassified
testHorizontalCommonGrip

	| left right leftWidth leftX rightWidth rightX |
	left := windowTest openNewWindow.
	right := windowTest openNewWindow.
	left left: 0.
	right
		left: left right;
		top: left top.
	leftWidth := left width.
	rightWidth := right width.
	leftX := left position x.
	rightX := right position x.
	
	self subject
		mouseOver: right leftCenter;
		dragMouseTo: right leftCenter - (20 @ 0).
		
	self
		assert: leftX equals: left position x;
		assert: rightX - 20 equals: right position x.
	self halt
		assert: leftWidth - 20 equals: left width;
		assert: rightWidth + 20 equals: right width.