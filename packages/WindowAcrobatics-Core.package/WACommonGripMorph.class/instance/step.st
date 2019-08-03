as yet unclassified
step

	(self bounds containsPoint: ActiveHand position) ifFalse: [self tryAbandon].
	self assert: targetOpacity notNil.
	(targetOpacity - opacity) sign caseOf: {
		[1] -> [opacity := (opacity + 0.15) clampHigh: targetOpacity].
		[-1] -> [opacity := (opacity - 0.05) clampLow: targetOpacity]. }
		otherwise: [].
	self submorphsDo: [:m | m color: (self regularColor alpha: opacity); redraw].
	opacity = 0 ifTrue: [^ self abandon].