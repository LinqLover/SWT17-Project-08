running
performTest

	^ Preferences
		setFlag: #fullScreenLeavesDeskMargins
		toValue: false
		during: [Preferences
			setFlag: #activateAlignFocusedWindow
			toValue: false
			during: [super performTest]]