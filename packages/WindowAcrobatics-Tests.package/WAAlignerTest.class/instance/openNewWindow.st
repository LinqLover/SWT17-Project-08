tools
openNewWindow

	^ (windowHeap add: PluggableSystemWindow new)
		"visible: false;"
		openInWorld;
		yourself