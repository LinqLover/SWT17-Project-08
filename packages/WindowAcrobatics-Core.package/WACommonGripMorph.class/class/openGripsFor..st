as yet unclassified
openGripsFor: aCollection

	self allInstancesDo: #abandon.
	^ (self grips: aCollection)
		open;
		yourself