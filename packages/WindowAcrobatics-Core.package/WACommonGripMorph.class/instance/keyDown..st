as yet unclassified
keyDown: anEvent

	anEvent shiftPressed ifTrue: [self abandon].
	super keyDown: anEvent