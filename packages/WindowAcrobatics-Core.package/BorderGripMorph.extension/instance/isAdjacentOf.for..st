*WindowAcrobatics-Core
isAdjacentOf: aGrip for: commonGripMorph

	| dist looseDimension tightDimension |
	tightDimension := self orientation caseOf: {
		[#horizontal] -> [#y].
		[#vertical] -> [#x]
	}.
	looseDimension := self orientation caseOf: {
		[#horizontal] -> [#x].
		[#vertical] -> [#y]
	}.
	
	dist := self bounds minDist: aGrip bounds.
	^ (dist in: tightDimension) < 15
		and: [(dist in: looseDimension) < 50]