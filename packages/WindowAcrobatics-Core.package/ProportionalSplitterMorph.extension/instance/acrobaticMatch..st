*WindowAcrobatics-Core
acrobaticMatch: aGrip

	"(aGrip isKindOf: ProportionalSplitterMorph)
		ifFalse: [^ false]."
	"^ (super acrobaticMatch: aGrip)
		and: [aGrip owner = self owner]"
	"^ true"
	^ aGrip ownerInWorld = self ownerInWorld