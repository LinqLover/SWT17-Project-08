as yet unclassified
findGripsAround: aPoint matching: aGrip

	^ World allMorphs asSet select: [:anotherGrip |
		(anotherGrip ~= aGrip
			and: [(anotherGrip isKindOf: self gripClass) and: [(anotherGrip isKindOf: self) not]]
			and: [anotherGrip world = aGrip world]
			and: [anotherGrip color ~= Color transparent
					ifTrue: [Transcript showln: 'Consider ', anotherGrip].
				anotherGrip doesAbut: aPoint for: self]
			and: [Transcript showln: 'abut passed'.
				aGrip acrobaticMatch: anotherGrip]
			and: [Transcript showln: 'Match passed'.
				true])]