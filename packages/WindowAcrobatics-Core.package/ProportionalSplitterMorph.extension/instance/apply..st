*WindowAcrobatics-Core
apply: delta

	self repositionBy: (self splitsTopAndBottom
		ifTrue: [0 @ delta y]
		ifFalse: [delta x @ 0]).