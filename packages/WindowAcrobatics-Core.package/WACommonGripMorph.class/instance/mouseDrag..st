as yet unclassified
mouseDrag: anEvent

	| delta |
	delta := anEvent position - self referencePoint.
	self referencePoint: anEvent position.
	self apply: delta.
	self bounds: (
		self bounds origin
			+ (delta * (self class dimensionWeightFor: self orientation))
		extent: self bounds extent).