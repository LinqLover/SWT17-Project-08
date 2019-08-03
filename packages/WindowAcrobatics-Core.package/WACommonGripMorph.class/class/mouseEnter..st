as yet unclassified
mouseEnter: aGrip

	| position grips allGrips |
	Sensor shiftPressed ifTrue: [^ self].
	(aGrip isKindOf: self) ifTrue: [^ self].
	
	Transcript showln: 'It all began with ', aGrip.
	position := ActiveHand position.
	grips := self findGripsAround: position matching: aGrip.
	grips add: aGrip.
	allGrips := self gripsWithAllNeighbours: grips.
	allGrips hasMany ifFalse: [^ self].
	
	self openGripsFor: allGrips.