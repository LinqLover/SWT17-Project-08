as yet unclassified
gripsWithAllNeighbours: grips

	| allGrips |
	allGrips := Set new.
	[grips notEmpty] whileTrue: [
		| grip |
		grip := grips remove: grips anyOne.
		allGrips add: grip.
		grips addAll: ((self findAdjacentsOf: grip) copyWithoutAll: allGrips)].
	Transcript showln: (allGrips asDictionaryByValue: #owner).
	^ allGrips