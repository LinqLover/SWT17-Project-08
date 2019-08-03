*WindowAcrobatics-Core
acrobaticMatch: aGrip

	^ "(aGrip isKindOf: CornerGripMorph)"true
		and: [(self isKindOf: BorderGripMorph) = (aGrip isKindOf: BorderGripMorph)]