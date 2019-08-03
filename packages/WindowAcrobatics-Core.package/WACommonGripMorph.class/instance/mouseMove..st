as yet unclassified
mouseMove: anEvent

	| delta newGrips |
	(anEvent redButtonPressed and: [self referencePoint notNil])
		ifTrue: [^ self mouseDrag: anEvent].
	delta := self referencePoint ifNil: [0@0] ifNotNil: [anEvent position - self referencePoint].
	
	newGrips := self class gripsWithAllNeighbours: (self class findGripsAround: anEvent position matching: ((World morphsAt: anEvent position behind: self unlocked: true) detect: [:m | m isKindOf: AbstractResizerMorph] ifNone: [^ self])).
	newGrips
		ifNotEmpty: [self grips: newGrips]
		"ifEmpty: [self tryAbandon]".
	"self grips: (self class gripsWithAllNeighbours: grips, (grips collectAll: [:grip | self class findGripsAround: anEvent position matching: grip]))."