(#( 'Pharo.image' 'blank.image' ) includes: ( Smalltalk imageFile fullPath basename )) ifFalse: [
StartupPreferencesLoader default executeAtomicItems: {
	StartupAction name: 'General Preferences for all Pharo versions' code: [
        FileStream stdout lf; nextPutAll: 'Setting general preferences for all Pharo versions'; lf.
        Author fullName: 'JoseSanLeandro'.
        UITheme currentSettings fastDragging: true.
        Deprecation raiseWarning: false.
        SettingBrowser open.
        FontChooser new refreshFontList.
        FreeTypeSettings updateFontsAtImageStartup: true.
        StandardFonts defaultFont: (LogicalFont familyName: 'Anonymous Pro for Powerline' pointSize: 10).
        "World submorphs do: [ :w | w delete ]."
        "(World submorphs select: [ :w | ((w model printString beginsWith: 'a GTPlayground') or: [ w model printString beginsWith: 'Transcript' ]) not ]) do: [ :w | w delete ]."
        Pharo3DarkTheme beCurrent.
        GTPlayground open.
        [ Transcript open; clear; flush ] on: Exception do: [ ].
        FileStream stdout lf; nextPutAll: 'Finished'; lf.
        SlReporter autoSubmit: false.
        Smalltalk tools debugger alwaysOpenFullDebugger: true.
        Smalltalk vm maxExternalSemaphoresSilently: 1024
    ] runOnce: true.
}].

