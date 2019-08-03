*WindowAcrobatics-Core
doesAbut: aPoint for: commonGripMorph

	^ (aPoint dist: (self bounds pointNearestTo: aPoint)) < 10
		and: [
			Transcript showln: 'abut passed / 2'.
			Transcript showln: (self visibleAreas collect: [:a | a outsetBy: 11]).
			self visibleAreas anySatisfy: [:a | (a outsetBy: 11) containsPoint: aPoint]]