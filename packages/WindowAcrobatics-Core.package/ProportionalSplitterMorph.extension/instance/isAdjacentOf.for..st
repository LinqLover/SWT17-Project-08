*WindowAcrobatics-Core
isAdjacentOf: aGrip for: commonGripMorph

	^ (super isAdjacentOf: aGrip for: commonGripMorph)
		and: [aGrip splitsTopAndBottom = self splitsTopAndBottom]