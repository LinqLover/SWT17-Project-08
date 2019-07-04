as yet unclassified
mouseEnter: aGrip

	| relevantNeighbours |
	Sensor shiftPressed ifTrue: [^ self].
	(aGrip isKindOf: self) ifTrue: [^ self].
	
	relevantNeighbours := OrderedCollection new.
	World allMorphs
		select: [:anotherGrip |
			(anotherGrip ~= aGrip
				and: [anotherGrip isKindOf: CornerGripMorph]
				and: [(anotherGrip isKindOf: self) not]
				and: [anotherGrip world = aGrip world]
				and: [anotherGrip canBeSeen]
				and: [(aGrip isKindOf: BorderGripMorph) = (anotherGrip isKindOf: BorderGripMorph)]
				and: [(aGrip isKindOf: BorderGripMorph) ==> [anotherGrip orientation = aGrip orientation]]
				and: [|x|x := (self "gapBetween: aGrip and: anotherGrip"cursorDistFrom: anotherGrip) abs < self maxGap. "self haltIf: [Sensor controlKeyPressed and: x not]."
					"STEHENGEBLIEBEN: Testen, warum das nicht symmetrisch funktioniert." x]
				and: [self haltIf: Sensor controlKeyPressed. (anotherGrip bounds corners collect: [:corner |
					corner dist: (aGrip bounds pointNearestTo: corner)]) min < self maxDist])]
		thenDo: [:anotherGrip |
			relevantNeighbours add: anotherGrip].
	relevantNeighbours ifEmpty: [^ self].

	relevantNeighbours add: aGrip.
	self openGripsFor: relevantNeighbours.