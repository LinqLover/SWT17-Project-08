*WindowAcrobatics-Core
visibleAreas

	| areas |
	areas := Set new.
	self bounds 
		allAreasOutsideList: (((self world submorphs copyUpTo: self ownerInWorld)
			copyWithout: self ownerInWorld)
			reject: [:m | m isKindOf: WACommonGripMorph]
				thenCollect: [:m | m bounds]) 
		do: [:rect | areas add: rect].
	^ areas