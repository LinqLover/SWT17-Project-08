*WindowAcrobatics-Core
isAdjacentOf: aGrip for: commonGripMorph

	^ (self bounds minDist: aGrip bounds) < 15 asPoint