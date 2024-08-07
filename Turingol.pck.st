'From Cuis6.3 [latest update: #6349] on 9 July 2024 at 6:35:14 pm'!
'Description '!
!provides: 'Turingol' 1 49!
!requires: 'Kleene' 1 10 nil!
!requires: 'Xray' 1 10 nil!
!requires: 'Automata' 1 8 nil!
SystemOrganization addCategory: #Turingol!


!classDefinition: #MissingDefinition category: #Turingol!
Error subclass: #MissingDefinition
	instanceVariableNames: 'message'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'MissingDefinition class' category: #Turingol!
MissingDefinition class
	instanceVariableNames: ''!

!classDefinition: #TuringolEditor category: #Turingol!
XrayEditor subclass: #TuringolEditor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'TuringolEditor class' category: #Turingol!
TuringolEditor class
	instanceVariableNames: ''!

!classDefinition: #TuringMachineStateMorph category: #Turingol!
LayoutMorph subclass: #TuringMachineStateMorph
	instanceVariableNames: 'model label'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'TuringMachineStateMorph class' category: #Turingol!
TuringMachineStateMorph class
	instanceVariableNames: ''!

!classDefinition: #InnerTableMorph category: #Turingol!
InnerListMorph subclass: #InnerTableMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'InnerTableMorph class' category: #Turingol!
InnerTableMorph class
	instanceVariableNames: ''!

!classDefinition: #AlignedLabelMorph category: #Turingol!
LabelMorph subclass: #AlignedLabelMorph
	instanceVariableNames: 'alignment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'AlignedLabelMorph class' category: #Turingol!
AlignedLabelMorph class
	instanceVariableNames: ''!

!classDefinition: #PluggableTableMorph category: #Turingol!
PluggableListMorph subclass: #PluggableTableMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'PluggableTableMorph class' category: #Turingol!
PluggableTableMorph class
	instanceVariableNames: ''!

!classDefinition: #TuringMachineWindow category: #Turingol!
SystemWindow subclass: #TuringMachineWindow
	instanceVariableNames: 'stepCounter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'TuringMachineWindow class' category: #Turingol!
TuringMachineWindow class
	instanceVariableNames: ''!

!classDefinition: #TuringolWorldMenu category: #Turingol!
TheWorldMenu subclass: #TuringolWorldMenu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'TuringolWorldMenu class' category: #Turingol!
TuringolWorldMenu class
	instanceVariableNames: ''!

!classDefinition: #TuringolManual category: #Turingol!
EruditeBook subclass: #TuringolManual
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'TuringolManual class' category: #Turingol!
TuringolManual class
	instanceVariableNames: ''!

!classDefinition: #SequenceGenerator category: #Turingol!
Object subclass: #SequenceGenerator
	instanceVariableNames: 'next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'SequenceGenerator class' category: #Turingol!
SequenceGenerator class
	instanceVariableNames: ''!

!classDefinition: #TuringMachineModel category: #Turingol!
Object subclass: #TuringMachineModel
	instanceVariableNames: 'text tm tmvm tape currentConfiguration selectedText errorNotifier program programIndex programName'
	classVariableNames: 'TuringolParser'
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'TuringMachineModel class' category: #Turingol!
TuringMachineModel class
	instanceVariableNames: ''!

!classDefinition: #TuringolProcedure category: #Turingol!
Object subclass: #TuringolProcedure
	instanceVariableNames: 'statements parameters alphabet'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'TuringolProcedure class' category: #Turingol!
TuringolProcedure class
	instanceVariableNames: ''!


!MissingDefinition methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2021 21:31:28'!
insertErrorMessageInto: aText

	| errorMessage |
	
	errorMessage _ 'Undefined ->' asText addAttribute: TextColor red.
	
	^ (aText copyFrom:1 to: message start), errorMessage , (aText copyFrom: message start to: aText size)
	
! !

!MissingDefinition methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2021 21:38:48'!
interval
	^message start to: message end.! !

!MissingDefinition methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2021 20:58:34'!
message: anXraySymbol
	message _ anXraySymbol! !

!MissingDefinition methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2021 22:11:05'!
notifyTo: aNotifier

	aNotifier notify: ('Undefined ->' asText addAttribute: TextColor red ; yourself) at: message start in: nil; redrawNeeded.
	
! !

!TuringolEditor methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2024 13:44:54'!
getMenu

	| aMenu |
	
	aMenu := super getMenu.
	
	aMenu addLine.
	
	aMenu addItemsFromDictionaries: {
			{
				#label 			-> 	'File Out ...'.
				#object 			-> 	model textProvider.
				#selector 		-> 		#fileOut.
				#balloonText 	-> 		'Save the program to a file.'.
			} asDictionary } . 
			
	^aMenu! !

!TuringMachineStateMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2021 18:33:53'!
adoptWidgetsColor: aColor
	"don't adopt any colors"
	! !

!TuringMachineStateMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 20:14:17'!
buildMorph

	| aLabelMorph |
	
	aLabelMorph _ AlignedLabelMorph new.
	
	aLabelMorph contents: '' ; align:#alignMiddle.

	self color:Color transparent.
			
	self label: aLabelMorph.	

	self addMorph: aLabelMorph fixedHeight:16.
	
	self axisEdgeWeight: #center; separation:4@4.
	
! !

!TuringMachineStateMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2021 18:30:02'!
label: aLabelMorph
	label _ aLabelMorph! !

!TuringMachineStateMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2021 18:28:53'!
model: aTuringMachineModel

	model _ aTuringMachineModel! !

!TuringMachineStateMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2021 18:45:00'!
stepAt: millisecondSinceLast

	label contents: model currentState.
	
	model tmAbsent ifTrue:[self color: Color transparent].

	model tmRunning ifTrue:[self color: Color lightGreen].
		
	model tmHalted ifTrue:[self color: Color lightRed].! !

!TuringMachineStateMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2021 18:39:56'!
stepTime
	^10! !

!TuringMachineStateMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2021 18:42:49'!
wantsSteps
	"Return true if the receiver wants to its #step or #stepAt: methods be run"

	^true! !

!InnerTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/26/2020 18:08:06'!
desiredWidth

	| maxW |

	maxW _ owner viewableWidth.
	
	listItems do: [ :each |
		each ifNotNil: [
			maxW _ maxW max: (self widthToDisplayItem: each contents)]].

	^maxW! !

!InnerTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 17:22:03'!
draw: item atRow: row atX: aNumber on: canvas
	"display the given item at row row"
	| f c |
	(item is: #Text)
		ifTrue: [
			f _ font emphasized: (item emphasisAt: 1).
			c _ (item colorAt: 1) ifNil: [Theme current text]]
		ifFalse: [ 
			f _ font.
			c _  Theme current text].
	canvas
		drawString: item
		at: aNumber @ (self drawYForRow: row)
		font: f
		color: c! !

!InnerTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 19:43:54'!
draw: item atRow: row on: canvas

	item withIndexDo:[:each :i | 
		self draw: each atRow: row atX: (extent x * (i - 1)) / item size on: canvas ].
		! !

!InnerTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 19:42:20'!
drawOn: aCanvas

	listItems size = 0 ifTrue: [ ^self ].
 
	self drawHighlightOn: aCanvas.
	self drawSelectionOn: aCanvas.

	(self topVisibleRowForCanvas: aCanvas)
		to: (self bottomVisibleRowForCanvas: aCanvas)
		do: [ :row |
			(owner itemSelectedAmongMultiple:  row) ifTrue: [
				self drawBackgroundForMulti: row on: aCanvas. ].
			self draw: (self item: row) atRow: row on: aCanvas ]! !

!InnerTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/26/2020 17:33:24'!
widthToDisplayItem: item
	
	^ (item collect:[:each | self font widthOfStringOrText: each]) sum
	! !

!AlignedLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 20:12:34'!
align: aMessage
	"could be either #alignLeft #alignMiddle or #alignRight"
	
	alignment _ aMessage! !

!AlignedLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 20:12:43'!
alignLeft
	^self morphTopLeft 	! !

!AlignedLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 20:12:47'!
alignMiddle

	^ (self morphTopLeft + self morphTopRight) / 2 - (self measureContents x / 2 @ 0)! !

!AlignedLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 20:12:51'!
alignRight

	^self morphTopRight - (self measureContents x @ 0)! !

!AlignedLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 20:19:53'!
drawOn: aCanvas
	aCanvas
		drawString: (contents ifNil: [ '' ])
		at: (self perform: alignment)
		font: self fontToUse
		color: color! !

!AlignedLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 20:17:35'!
initialize

	super initialize.
	
	alignment _ #alignLeft.! !

!AlignedLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/20/2021 19:34:00'!
morphTopRight

	^self morphTopLeft + (self morphWidth @ 0)! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 19:42:55'!
getList
	
	"Answer the list to be displayed.  Caches the returned list in the 'list' ivar"
	getListSelector
		ifNil: [^ #()].
	list _ model perform: getListSelector.
	list
		ifNil: [^ #()].
	list _ list collect: [ :item | item collect:[:each | each displayStringOrText ] ].

	^ list! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 17:27:07'!
innerMorphClass
	^InnerTableMorph! !

!TuringMachineWindow methodsFor: 'GUI building' stamp: 'DF 1/3/2021 16:55:26'!
buildBottomRow

	| col |
	
	col _ LayoutMorph newColumn.

	col addMorph: self buildTapeMorph proportionalHeight:5/13.

	col addMorph: self buildButtonsMorph proportionalHeight: 8/13.
	
	^col! !

!TuringMachineWindow methodsFor: 'GUI building' stamp: 'DF 1/9/2021 18:47:21'!
buildButtonsMorph

	| b1 b2 b3 b4 row |
	
	row := LayoutMorph newRow.

	row separation: 20@20.
	
	b1 _ (PluggableButtonMorph model: model stateGetter: #isResetOn action: #pressReset) label: 'Reset'.
	b2 _ (PluggableButtonMorph model: self stateGetter: #isRunOn action: #pressRun) label: 'Run'.
	
	b3 _ (PluggableButtonMorph model: model stateGetter: #isStepOn action: #pressStep) label: 'Step'.
	b4 _ (PluggableButtonMorph model: model stateGetter: #isPauseOn action: #pressFormat) label: 'Format'.
	
	row addMorph: (TuringMachineStateMorph newColumn model: model ; buildMorph; yourself) fixedWidth: 40.
	
	row addMorphs: { b1 . b2 . b3 . b4 }.
	
	^row
! !

!TuringMachineWindow methodsFor: 'GUI building' stamp: 'DF 1/3/2021 16:41:50'!
buildMorphicWindow
	
	| col |
	
	col _ LayoutMorph newColumn.
	
	col 	addMorph: self buildTopRow proportionalHeight: 6/8; 
		addAdjusterAndMorph: self buildBottomRow proportionalHeight: 2/8.
	
	self layoutMorph addMorph: col.
	! !

!TuringMachineWindow methodsFor: 'GUI building' stamp: 'DF 1/9/2021 18:47:42'!
buildTapeMorph

	^TapeMorph newColumn model: model; interval: (-12 to: 12); buildMorph; yourself! !

!TuringMachineWindow methodsFor: 'GUI building' stamp: 'DF 1/15/2021 21:03:01'!
buildTopRow

	| aRow programTableMorph programTextMorph |

	aRow := LayoutMorph newRow.
		
	programTextMorph _ TextModelMorph 
					textProvider: model
					textGetter: #acceptedContents 
					textSetter: #acceptContents:
					selectionGetter: #selectedText.
					
	model errorNotifier: programTextMorph.

	programTableMorph _ PluggableTableMorph 
		model: model
		listGetter: #program
		indexGetter: #currentConfiguration
		indexSetter: nil
		mainView: self
		menuGetter: #programMenu
		keystrokeAction: nil.

	aRow addMorph: programTextMorph proportionalWidth:5/8;
		addAdjusterAndMorph: programTableMorph proportionalWidth:3/8.
		
	^aRow.
	! !

!TuringMachineWindow methodsFor: 'GUI building' stamp: 'DF 1/13/2024 14:51:41'!
initialExtent

	^ RealEstateAgent standardWindowExtent 
	! !

!TuringMachineWindow methodsFor: 'initialization' stamp: 'DF 1/16/2021 17:45:11'!
initialize

	super initialize.
	
	stepCounter := 0.! !

!TuringMachineWindow methodsFor: 'menu' stamp: 'DF 1/15/2021 21:07:55'!
programMenu

	| aMenu | 

	aMenu _ MenuMorph new defaultTarget: self.
	aMenu
		addTitle: 'State Machine'.
	
	aMenu addItemsFromDictionaries: { 
		{	#label 			-> 	'show'.
			#object 			-> 	model.
			#selector 			->	#showStateDiagram				} asDictionary }.

	^aMenu ! !

!TuringMachineWindow methodsFor: 'testing' stamp: 'DF 12/5/2020 13:10:06'!
isRunOn

	^stepCounter > 0 and: [ model tmRunning ]! !

!TuringMachineWindow methodsFor: 'running' stamp: 'DF 11/27/2020 20:28:37'!
pressRun
	
	self startStepping.
	
! !

!TuringMachineWindow methodsFor: 'running' stamp: 'DF 1/9/2021 18:33:08'!
step

	((stepCounter >= 100) or: [	model tmHalted] or:[model tmAbsent]) 
		ifTrue:[self stopStepping. 	stepCounter := 0.	 ^self].

	model pressStep.
	
	stepCounter := stepCounter + 1.
	
! !

!TuringMachineWindow class methodsFor: 'as yet unclassified' stamp: 'DF 5/7/2024 19:51:36'!
becomeDeveloper

	Preferences at:#developer put: true.! !

!TuringMachineWindow class methodsFor: 'as yet unclassified' stamp: 'DF 5/7/2024 19:51:14'!
hideDeveloperMenu

Preferences at: #developer ifAbsentAddDescription: 'If set, expose the entire developer world menu, otherwise just show entries for relevant for the specific application.'
		category: #programming type: Boolean value: false.
		
	Preferences at:#developer put: false.! !

!TuringMachineWindow class methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2024 13:22:35'!
openBrowser
	| model |
	
	model := TuringMachineModel new.
	
	self open: model label: 'Turing Machine Browser: ' , model programName! !

!TuringMachineWindow class methodsFor: 'as yet unclassified' stamp: 'DF 5/7/2024 19:41:42'!
openFileListWindow

	FileList open! !

!TuringMachineWindow class methodsFor: 'as yet unclassified' stamp: 'DF 1/27/2024 22:14:57'!
openTuringolManual

	EruditeBook bookNamed: 'Turingol Manual' ifNone: [self error: 'Could not find Turingol Manual'] :: open
	 ! !

!TuringMachineWindow class methodsFor: 'as yet unclassified' stamp: 'DF 1/27/2024 21:59:05'!
worldMenuOptions

	^ `{{
			#itemGroup 		-> 		10.
			#itemOrder 		-> 		35.
			#label 			->	'Turingol IDE'.
			#object 			->	TuringMachineWindow.
			#selector 		-> 		#openBrowser.
			#icon 			-> 	#editFindReplaceIcon.
			#balloonText 	-> 		'A browser for editing compiling and running Turing machines'.
		} asDictionary.
		
		{
			#itemGroup 		-> 		20.
			#itemOrder 		-> 		40.
			#label 			->	'Hide Developer Menu'.
			#object 			->	TuringMachineWindow.
			#selector 		-> 		#hideDeveloperMenu.
			#icon 			-> 	#editFindReplaceIcon.
			#balloonText 	-> 		'Replace the world menu with a version that hides the Smalltalk development environment'.
		} asDictionary
		}`! !

!TuringolWorldMenu methodsFor: 'as yet unclassified' stamp: 'DF 5/7/2024 20:02:19'!
buildWorldMenu
	"Preferences at: #worldMenu  put: TuringolWorldMenu."

	| aMenuMorph |

	Preferences at:#developer :: ifTrue:[^super buildWorldMenu].
	
	aMenuMorph := MenuMorph entitled: 'World'.

	aMenuMorph addItemsFromDictionaries: {
	{
		#label 			->	'Turingol IDE'.
		#object 			->	TuringMachineWindow.
		#selector 		-> 		#openBrowser.
		#icon 			-> 	#editFindReplaceIcon.
		#balloonText 	-> 		'A browser for developing Turing machines'.
	} asDictionary .
	
	{
		#label 			->	'Help'.
		#object 			->	TuringMachineWindow.
		#selector 		-> 		#openTuringolManual.
		#icon 			-> 	#helpIcon.
	} asDictionary .

	{
		#label 			->	'File List'.
		#object 			->	TuringMachineWindow.
		#selector 		-> 		#openFileListWindow.
		#icon 			-> 	#systemFileManagerIcon.
	} asDictionary 
	
	}.

	aMenuMorph addLine.

	aMenuMorph addItemsFromDictionaries: {	
	{
		#label 			->	'Become Developer'.
		#object 			->	TuringMachineWindow.
		#selector 		-> 		#becomeDeveloper.
		#icon 			-> 	#debugIcon.
	} asDictionary }.

	aMenuMorph addLine.

	aMenuMorph addItemsFromDictionaries: {	
	{
		#label 			->	'Quit'.
		#object 			->	Smalltalk.
		#selector 		-> 		#saveAndQuit.
		#icon 			-> 	#saveAndQuitIcon.
	} asDictionary }.

	^ aMenuMorph		! !

!TuringolManual methodsFor: 'as yet unclassified' stamp: 'DF 1/25/2021 15:16:16'!
BasicCommands
^(EruditeBookSection basicNew title: 'Basic commands'; document: ((EruditeDocument contents: '!!!! Basic commands

**move left one square**

	Moves the head one square to the left

**move right one square**

	Moves the head one square to the right

**print "<symbol>"**

	Prints <symbol> on the tape at the current head position. <symbol> must be one of the symbols in the alphabet.

**accept**

	Halts the machine in an //accepting// final state.

**reject**

	Halts the machine in a //rejecting// final state.



') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!TuringolManual methodsFor: 'as yet unclassified' stamp: 'DF 1/25/2021 15:16:16'!
CommandCombinators
^(EruditeBookSection basicNew title: 'Command combinators'; document: ((EruditeDocument contents: '!!!! Conditionals

**if tape symbol is <expression> then <statement> **

Execute <statement> if the symbol on the tape at the current head location is equal to <expression>. Otherwise continue to the next command.

<expression> must be either a symbol literal (for example "a") or a variable (for example $x). 

!!!! Blocks

**{ <statement 1> ; ... ; <statement n> }**

Execute the commands <statement 1> up to <statement n> in the given order.

!!!! Labels

**<name> : <statement>**

Mark <statement> with the given <name>. You can jump to this statement using //go to//.

**go to <name>** 

Jump to the statement labelled with <name>.





') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!TuringolManual methodsFor: 'as yet unclassified' stamp: 'DF 1/25/2021 15:16:16'!
DefiningTheAlphabet
^(EruditeBookSection basicNew title: 'Defining the alphabet'; document: ((EruditeDocument contents: '!!!! Defining the alphabet

**tape alphabet is _ , <symbol>, ... **

Write the symbols in a list separated by commas. 

For example:

	tape alphabet is _ , 0 , 1 , + , = ;

Notice the underscore character _  at the beginning. It is the symbol for blank and must always be included.

//Note//: A symbol may consist of more than one character but this is discouraged as it will look bad on the tape.

') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!TuringolManual methodsFor: 'as yet unclassified' stamp: 'DF 1/25/2021 15:16:16'!
Procedures
^(EruditeBookSection basicNew title: 'Procedures'; document: ((EruditeDocument contents: '!!!! Procedures

!!!!!! Defining a procedure

**to <name> ... { <statement> ... }**

Define a procedure. 

The procedure''s name may consist of several components. The first component must be a symbol. The rest can be either symbols or variables. 

For example, 

  to move left until $x or $y {
    loop : 
      move left one square ;
      if tape symbol is $x then go to exit;
      if tape symbol is $y then go to exit;
      go to loop;
    exit : ;
  }

defines a procedure that takes two parameters $x and $y.

!!!!!! Calling a procedure

**<name> ... **

To call a procedure write the procedure''s name, and replace its parameters with symbols or variables. 

For example, to call the procedure we have defined earlier:

  move left until "a" or "_" 

') images: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!TuringolManual methodsFor: 'as yet unclassified' stamp: 'DF 7/9/2024 18:34:51'!
initialize
    super initialize.
    title _ 'Turingol Manual'.
        self addSection: self section_TheStructureOfATuringolProgram.
        self addSection: self section_DefiningTheAlphabet.
        self addSection: self section_BasicCommands.
        self addSection: self section_CommandCombinators.
        self addSection: self section_Procedures.
! !

!TuringolManual methodsFor: 'as yet unclassified' stamp: 'DF 7/9/2024 18:34:51'!
section_BasicCommands
^(EruditeBookSection basicNew title: 'Basic commands'; document: ((EruditeDocument contents: '!!!! Basic commands

**move left one square**

	Moves the head one square to the left

**move right one square**

	Moves the head one square to the right

**print "<symbol>"**

	Prints <symbol> on the tape at the current head position. <symbol> must be one of the symbols in the alphabet.

**accept**

	Halts the machine in an //accepting// final state.

**reject**

	Halts the machine in a //rejecting// final state.
') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!TuringolManual methodsFor: 'as yet unclassified' stamp: 'DF 7/9/2024 18:34:51'!
section_CommandCombinators
^(EruditeBookSection basicNew title: 'Command combinators'; document: ((EruditeDocument contents: '!!!! Conditionals

**if tape symbol is <expression> then <statement> **

Execute <statement> if the symbol on the tape at the current head location is equal to <expression>. Otherwise continue to the next command.

<expression> must be either a symbol literal (for example "a") or a variable (for example $x). 

!!!! Blocks

**{ <statement 1> ; ... ; <statement n> }**

Execute the commands <statement 1> up to <statement n> in the given order.

!!!! Labels

**<name> : <statement>**

Mark <statement> with the given <name>. You can jump to this statement using //go to//.

**go to <name>** 

Jump to the statement labelled with <name>.

//Note//: It is best to avoid using keywords as labels.

') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!TuringolManual methodsFor: 'as yet unclassified' stamp: 'DF 7/9/2024 18:34:51'!
section_DefiningTheAlphabet
^(EruditeBookSection basicNew title: 'Defining the alphabet'; document: ((EruditeDocument contents: '!!!! Defining the alphabet

**tape alphabet is _ , <symbol>, ... **

Write the symbols in a list separated by commas. 

For example:

	tape alphabet is _ , 0 , 1 , + , = ;

Notice the underscore character _  at the beginning. It is the symbol for blank and must always be included.

//Note//: A symbol may consist of more than one character but this is discouraged as it will look bad on the tape.

') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!TuringolManual methodsFor: 'as yet unclassified' stamp: 'DF 7/9/2024 18:34:51'!
section_Procedures
^(EruditeBookSection basicNew title: 'Procedures'; document: ((EruditeDocument contents: '!!!! Procedures

!!!!!! Defining a procedure

**to <name> ... { <statement> ... }**

Define a procedure. 

The procedure''s name may consist of several components. The first component must be a symbol. The rest can be either symbols or variables. 

For example, 

  to move left until $x or $y {
    loop : 
      move left one square ;
      if tape symbol is $x then go to exit;
      if tape symbol is $y then go to exit;
      go to loop;
    exit : ;
  }

defines a procedure that takes two parameters $x and $y.

!!!!!! Calling a procedure

**<name> ... **

To call a procedure write the procedure''s name, and replace its parameters with symbols or variables. 

For example, to call the procedure we have defined earlier:

  move left until "a" or "_" 

') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!TuringolManual methodsFor: 'as yet unclassified' stamp: 'DF 7/9/2024 18:34:51'!
section_TheStructureOfATuringolProgram
^(EruditeBookSection basicNew title: 'The structure of a Turingol program'; document: ((EruditeDocument contents: '!!!! The structure of a Turingol program

A Turingol program has the following structure:

**alphabet  ;

procedure procedure ... procedure ;

command ; command ; ... ; command . **

Note that a program always ends with a dot.

For example,

**tape alphabet is _, a, b ;

print "a" ;
move right one square ;
print "b" .
**') data: ((Dictionary new)); yourself); subsections: (OrderedCollection new yourself); yourself)! !

!SequenceGenerator methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2020 21:52:20'!
advanceBy: anInteger
	
	next := next + anInteger.
	
	^ next - 1! !

!SequenceGenerator methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2020 17:10:37'!
initialize

	next := 1.
	
! !

!SequenceGenerator methodsFor: 'as yet unclassified' stamp: 'DF 11/21/2020 21:26:22'!
next
	
	next := next + 1.
	
	^ next - 1! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 4/2/2021 21:23:04'!
currentConfiguration

	tm ifNil:[^0].
	
	tmvm isRunning ifFalse:[^0].
		
	^ programIndex at: { tmvm state . tape at: tmvm head }. ! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 4/2/2021 21:21:23'!
currentState

	tm ifNil:[^'N/A'].
	
	^tmvm state asString! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 4/2/2021 21:22:01'!
head
	tm ifNil:[^nil].
	
	^tmvm head! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 4/2/2021 21:22:05'!
head: anInteger
	tm ifNil:[^self].
	
	tmvm head: anInteger! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 1/25/2021 19:10:10'!
program

	^program 
	
	! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 5/14/2024 13:22:30'!
programName
	^programName! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 5/14/2024 13:20:29'!
programName: aString
	programName := aString! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 1/9/2021 21:51:03'!
selectedText
	^ selectedText! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 11/25/2020 21:52:41'!
tape
	^tape active! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 1/3/2021 10:14:11'!
tapeAt: anIndex
	^ tape at: anIndex! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 1/3/2021 10:15:19'!
tapeAt: anIndex put: aString
	^ tape at: anIndex put: aString! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 1/9/2021 18:32:58'!
tmAbsent

	^tm isNil
! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 4/2/2021 21:13:40'!
tmHalted

	tm ifNil:[^false].
	
	^tmvm isRunning not
! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 1/9/2021 18:32:28'!
tmPresent

	^tm notNil
! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 4/2/2021 21:23:58'!
tmRunning

	tm ifNil:[^false].
	
	^tmvm isRunning
! !

!TuringMachineModel methodsFor: 'menu' stamp: 'DF 1/3/2021 10:16:50'!
alphabet

	tm ifNil:[^{'_'}].
	
	^tm alphabet! !

!TuringMachineModel methodsFor: 'menu' stamp: 'DF 1/13/2024 17:49:37'!
showStateDiagram

	tm ifNil:[^self].
	
	tm asStateDiagram open! !

!TuringMachineModel methodsFor: 'initialization' stamp: 'DF 5/14/2024 13:19:10'!
initialize

	programName := 'Unnamed'.
	
	tape := Tape new.
	
	tape at: -20 put: tape blank; at:20 put: tape blank. "give us some blank entries so we'll have something to show"
		
	selectedText := 1 to:0.
	
	text := '' asText.
	
	tm := nil.
	
	tmvm := TMVM new.
	
	tmvm tape: tape. 
	
! !

!TuringMachineModel methodsFor: 'testing' stamp: 'DF 11/26/2020 20:20:07'!
isPauseOn
	^false! !

!TuringMachineModel methodsFor: 'testing' stamp: 'DF 11/26/2020 10:22:43'!
isResetOn
	^false! !

!TuringMachineModel methodsFor: 'testing' stamp: 'DF 11/25/2020 20:46:48'!
isStepOn
	^false! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 7/9/2024 15:52:36'!
acceptContents: aText

	[ | outcome |

		text := aText asText.
		text removeAttributes: { TextColor red } from: 1 to: text size.
		
		outcome := TuringolParser parse: aText asString asByteString.

		outcome second 
			ifEmpty:[ 
				tm := TuringMachine new: outcome first second. self refreshProgram. ]
			ifNotEmpty:[
				tm := nil. program := nil.
				text addAttribute: TextColor red from: outcome second first start + 1 to: text size ].
		
	] 
	on: XraySyntaxError do:[:anXraySyntaxError | 
		tm := nil. program := nil.
		text addAttribute: TextColor red from: anXraySyntaxError position + 1 to: text size ]
	on: MissingDefinition do:[: aMissingDefinition | 
		tm := nil. program := nil.
		aMissingDefinition notifyTo: errorNotifier.		^false.]. 

	self changed: #program.
	
	^true! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 21:01:39'!
acceptedContents
	^text! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2024 13:43:29'!
editorClassFor: aMessage

	^TuringolEditor! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2021 22:01:13'!
errorNotifier: aNotifier
	errorNotifier _ aNotifier! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2024 13:34:22'!
fileOut


	StringRequestMorph
		request: 'Enter file name'
		initialAnswer: programName
		do: [:aString| | aFileEntry | 
			
				programName := aString.
				
				aFileEntry := FileEntry withPathName: aString , '.tgl'.

				aFileEntry fileContents: text asString ].
! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 16:51:47'!
pressFormat

	tape format.
	
	self changed: #tape.! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 20:47:12'!
pressPause! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 4/2/2021 21:18:20'!
pressReset

	tm ifNil:[^self].
	
	tmvm reset.
	
	self changed: #tape; changed: #currentConfiguation; changed: #program! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 4/2/2021 21:13:05'!
pressStep

	tm ifNil:[^self].
	
	tmvm step.
	
	self changed: #tape; changed: #currentConfiguration! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 4/2/2021 21:17:41'!
refreshProgram

	| tuples | 
	
	tmvm automaton: tm. tmvm reset.
	
	tuples := tm program asSet asArray.
	
	program _ tuples sort: [:x :y | x first <= y first ].
	
	programIndex _ Dictionary new.
	
	program withIndexDo: [:each :i | programIndex at: { each first . each second } put: i ].
! !

!TuringMachineModel class methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2024 13:20:45'!
fileIn: aFileEntry

	| aString contents model |
	
	aString := aFileEntry baseName.
	
	contents := aFileEntry fileContents.
	
	model := self new.
	model programName: aString.
	
	model acceptContents: contents.
	
	TuringMachineWindow open: model label: 'Turing Machine Browser: ' ,  aString
	
! !

!TuringMachineModel class methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2024 21:25:51'!
fileReaderServicesForFileEntry: filename suffix: suffix

	"FileList buttons that file in a language and add it to the language catalog."

	(#('tgl') includes: suffix) ifTrue: [
		^ { self serviceFileInLanguage} ].
	
	^#()! !

!TuringMachineModel class methodsFor: 'as yet unclassified' stamp: 'DF 1/24/2021 18:55:41'!
initialize

	"self initialize"
	
	(Language includes: 'Turingol') ifFalse: [
		
		| aPackage |
		
		aPackage := CodePackage packageOfClass: self 
			ifNone:[self error: 'Could not find the Turingol package'].

		Language fileIn: aPackage fullFileName asFileEntry parent // 'Turingol.xray'.
	].

	TuringolParser := Language parserFor:'Turingol'.
	! !

!TuringMachineModel class methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2024 13:47:00'!
serviceFileInLanguage

	"Answer the service of filing-in a language"

	^ (SimpleServiceEntry
		provider: self 
		label: 'file in Turingol program'
		selector: #fileIn:
		description: 'open this file in a Turingol Browser'
		buttonLabel: 'code'
		icon: #editFindReplaceIcon)
			sortOrder: 10! !

!TuringolProcedure methodsFor: 'accessing' stamp: 'DF 12/30/2020 11:32:38'!
alphabet: aSet
	alphabet _ aSet! !

!TuringolProcedure methodsFor: 'accessing' stamp: 'DF 12/30/2020 11:33:12'!
parameters: anOrderedCollection
	parameters _ anOrderedCollection ! !

!TuringolProcedure methodsFor: 'accessing' stamp: 'DF 12/30/2020 11:33:35'!
statements: anXraySymbol
	statements _ anXraySymbol ! !

!TuringolProcedure methodsFor: 'as yet unclassified' stamp: 'DF 12/31/2020 09:53:21'!
applyTo: arguments procedures: aDictionary start: aState generator: aSequeneceGenerator

	| env |

	env _ (parameters with: arguments collect:[:param :arg | param -> arg ]) asDictionary.
	
	statements parent: nil. 

	statements at:#procedures put: aDictionary.
	
	statements at:#env put: env.
	
	statements at:#alphabet put: alphabet. 
	
	statements at: #generator put: aSequeneceGenerator.
	
	statements at: #start put: aState.
	
	statements semantics.
	
	^ { #transitions -> (statements at: #transitions) . #follow -> (statements at:#follow) } asDictionary.
	
	! !

!Set methodsFor: '*Turingol' stamp: 'DF 5/7/2024 19:32:25'!
addConnectionsTo: aStateDiagram alphabet: aSetOfSymbols

	" if all transitions are of the form c/0/c for every c in the alphabet then it's a skip "
	
	| x isTotal labels syms |

	isTotal := aSetOfSymbols allSatisfy:[:each | self anySatisfy: [:t | t readSymbol = each ] ].
	
	(isTotal and: [self allSatisfy:[:each | each isReadTransition ] ]) 
		ifTrue: [ self anyOne addConnectionTo: aStateDiagram withLabel: 'skip'. ^self ].

	" if all transitions are of the form c/1/c for every c in the alphabet then it's a move right "
	(isTotal and: [ self allSatisfy:[:each | each isMoveRightTransition ] ]) 
		ifTrue: [ self anyOne addConnectionTo: aStateDiagram withLabel: '→'. ^self ].

	" if all transitions are of the form c/-1/c for every c in the alphabet then it's a move left "
	(isTotal and: [self allSatisfy:[:each | each isMoveLeftTransition ] ]) 
		ifTrue: [ self anyOne addConnectionTo: aStateDiagram withLabel: (Character codePoint: 28 :: asString). ^self ].
	
	" if all transitions are of the form c/0/x for every c in the alphabet then it's a write x "
	
	x := self anyOne writeSymbol.
	 
	(isTotal and: [ self allSatisfy:[:each | each writeSymbol = x and:[ each headDirection = 0] ] ]) 
		ifTrue: [ self anyOne addConnectionTo: aStateDiagram withLabel: 'write ', x. ^self ].
	
	" otherwise, if all the transitions differ only in the input and the inputs cover all the alphabet but c, then use a single ~c transition. "
	
	syms := aSetOfSymbols asSet.
	
	syms removeAll: (self collect:[:each | each readSymbol]).
	
	syms size = 1
		ifTrue:[self anyOne addConnectionTo: aStateDiagram withLabel: 'read ¬', syms anyOne. ^self ].
	
	" otherwise, if all the transitions differ only in the input (read) symbol, use only that in the label".
	
	(self allSatisfy:[:each | each readSymbol = each writeSymbol and:[ each headDirection = 0] ])
		ifTrue: [ self do:[:each | each addConnectionTo: aStateDiagram withLabel: 'read ', each readSymbol]. ^self] .
	 
	" otherwise, combine the labels of all the transitions into a single label "
	
	labels := self collect:[:each | each readSymbol, '/', each headDirection asString, '/', each writeSymbol, String lf ].
	
	self anyOne addConnectionTo: aStateDiagram withLabel: (labels fold:[:a :b | a,';',b ]).
	! !

!TransitionFunction methodsFor: '*Turingol' stamp: 'DF 4/2/2021 19:23:52'!
asSet

	| aSet |
	
	aSet := Set new.
	
	tuples do:[:eachDictionary | aSet addAll: (eachDictionary collect: [:each | each asTuple ]) ].
	
	^aSet
	! !
TuringMachineModel initialize!
