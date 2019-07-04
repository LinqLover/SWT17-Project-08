as yet unclassified
step

	(self bounds containsPoint: ActiveHand position) ifFalse: [^ self abandon].
	^ super step