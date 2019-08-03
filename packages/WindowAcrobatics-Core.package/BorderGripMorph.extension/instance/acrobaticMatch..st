*WindowAcrobatics-Core
acrobaticMatch: aGrip

	^ (super acrobaticMatch: aGrip)
		and: [self orientation = aGrip orientation]