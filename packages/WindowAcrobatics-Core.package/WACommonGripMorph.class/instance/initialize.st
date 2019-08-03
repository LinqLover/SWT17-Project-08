as yet unclassified
initialize

	super initialize.
	
	okToAbandon := true.
	self layoutPolicy: ProportionalLayout new.
	self color: Color transparent.
	self regularColor: Color midnight.
	opacity := 0.
	self boot.