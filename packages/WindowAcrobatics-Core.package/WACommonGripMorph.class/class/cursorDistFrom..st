as yet unclassified
cursorDistFrom: aGrid

	(aGrid isKindOf: BorderGripMorph) ifFalse: [^ 0].
	^ (aGrid position - ActiveHand position
		* (self dimensionWeightFor: aGrid orientation)) r
