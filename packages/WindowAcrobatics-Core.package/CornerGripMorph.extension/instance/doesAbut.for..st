*WindowAcrobatics-Core
doesAbut: aPoint for: commonGripMorph

	^ (super doesAbut: aPoint for: commonGripMorph)
		and: [(self isKindOf: BorderGripMorph) or: [(aPoint dist: (self bounds pointNearestTo: aPoint)) < 5]]