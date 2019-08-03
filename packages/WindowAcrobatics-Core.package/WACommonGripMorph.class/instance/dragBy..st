as yet unclassified
dragBy: delta

	self apply: delta.
	self bounds: (
		self bounds origin
			+ (delta * (self class dimensionWeightFor: self orientation))
		extent: self bounds extent).