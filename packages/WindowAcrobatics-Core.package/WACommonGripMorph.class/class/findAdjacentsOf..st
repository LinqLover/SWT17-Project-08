as yet unclassified
findAdjacentsOf: aGrip

	"#test ifNotNil: [^ Set new]."
	^ World allMorphs select: [:anotherGrip |
		(anotherGrip ~= aGrip
			and: [(anotherGrip isKindOf: self gripClass) and: [(anotherGrip isKindOf: self) not]]
			and: [anotherGrip world = aGrip world]
			and: [anotherGrip visibleAreas notEmpty]
			and: [(aGrip acrobaticMatch: anotherGrip) and: [anotherGrip acrobaticMatch: aGrip]]
			and: [anotherGrip isAdjacentOf: aGrip for: self])]