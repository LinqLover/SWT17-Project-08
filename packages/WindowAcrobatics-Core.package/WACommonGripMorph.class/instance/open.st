as yet unclassified
open

	| owners |
	owners := grips collect: #ownerInWorld.
	self world addMorph: self inFrontOf:
		(self world submorphs detect: [:m | m allMorphs includesAnyOf: owners]).