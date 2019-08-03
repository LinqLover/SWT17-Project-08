as yet unclassified
grips: aCollection

	| bounds |
	grips := aCollection asSet.
	(grips allSatisfy: [:g | g isKindOf: BorderGripMorph])
		ifTrue: [	orientation := grips single: #orientation].
	cursor := (grips collect: #resizeCursor) hasSingle
		ifTrue: [grips anyOne resizeCursor]
		ifFalse: [Cursor crossHair].
	bounds := grips collect: #bounds.
	self bounds: (
		(bounds collect: #origin) min
			corner: (bounds collect: #corner) max).
	
	self removeAllMorphs.
	(orientation ifNil: 42)
		ifNotNil: [self
			addMorph: (Morph new
				color: (self regularColor alpha: opacity);
				yourself)
			fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1));
			yourself]
		ifNil: [
			"grips collect: [:g | (g gripLayoutFrame leftFraction @ g gripLayoutFrame topFraction) * 2 - 1].
			self addMorph: (EllipseMorph new
			extent: 50@50;
			color: (Color midnight alpha: 0.42);
			layoutFrame: (LayoutFrame
				fractions: (1 @ 1 / 2 extent: 0 @ 0)
				offsets: (50 @ 50 / -2 corner: 0 @ 0));
			borderWidth: 0;
			yourself)"
			| rects |
			rects := (grips collect: #bounds) in: [:rs | rs "copyWithoutAll: (rs cross: rs collect: [:r1 :r2 | r1 = r2 ifFalse: [0@0extent:0@0] ifTrue: [r1 intersect: r2]])"].
			rects haltOnce do: #markWithMorph
			"TODO: If we want to, we must not color the corner but the side grips. how to get them? how to trace them?"].