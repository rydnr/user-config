(#( 'Pharo.image' 'blank.image' ) includes: ( Smalltalk imageFile fullPath basename )) ifFalse: [
StartupPreferencesLoader default executeAtomicItems: {
	StartupAction name: 'Nautilus' code: [
        FileStream stdout lf; nextPutAll: 'Executing Nautilus related stuff'; lf.
        Nautilus pluginClasses add: { AnnotationPanePlugin. #middle }.
        Nautilus pluginClasses add: { PackageTasksPlugin. #top }.
        BIConfigurableFormatter formatAsYouReadPolicy: true.
        FileStream stdout lf; nextPutAll: 'Finished'; lf
    ] runOnce: true.
}]

