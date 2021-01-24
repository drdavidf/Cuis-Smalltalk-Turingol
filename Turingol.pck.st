'From Cuis 5.0 [latest update: #4526] on 24 January 2021 at 6:55:49 pm'!
'Description '!
!provides: 'Turingol' 1 26!
!requires: 'Kleene' 1 10 nil!
!requires: 'X-ray' 1 859 nil!
SystemOrganization addCategory: 'Turingol'!


!classDefinition: #MissingDefinition category: 'Turingol'!
Error subclass: #MissingDefinition
	instanceVariableNames: 'message'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'MissingDefinition class' category: 'Turingol'!
MissingDefinition class
	instanceVariableNames: ''!

!classDefinition: #TapeMorph category: 'Turingol'!
LayoutMorph subclass: #TapeMorph
	instanceVariableNames: 'interval model'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'TapeMorph class' category: 'Turingol'!
TapeMorph class
	instanceVariableNames: ''!

!classDefinition: #TuringMachineStateMorph category: 'Turingol'!
LayoutMorph subclass: #TuringMachineStateMorph
	instanceVariableNames: 'model label'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'TuringMachineStateMorph class' category: 'Turingol'!
TuringMachineStateMorph class
	instanceVariableNames: ''!

!classDefinition: #InnerTableMorph category: 'Turingol'!
InnerListMorph subclass: #InnerTableMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'InnerTableMorph class' category: 'Turingol'!
InnerTableMorph class
	instanceVariableNames: ''!

!classDefinition: #CellMorph category: 'Turingol'!
UpdatingLabelMorph subclass: #CellMorph
	instanceVariableNames: 'sequence index alphabet model setter getter alphabetGetter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'CellMorph class' category: 'Turingol'!
CellMorph class
	instanceVariableNames: ''!

!classDefinition: #UpdatingAlignedLabelMorph category: 'Turingol'!
UpdatingLabelMorph subclass: #UpdatingAlignedLabelMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'UpdatingAlignedLabelMorph class' category: 'Turingol'!
UpdatingAlignedLabelMorph class
	instanceVariableNames: ''!

!classDefinition: #PointerMorph category: 'Turingol'!
UpdatingAlignedLabelMorph subclass: #PointerMorph
	instanceVariableNames: 'index setSelector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'PointerMorph class' category: 'Turingol'!
PointerMorph class
	instanceVariableNames: ''!

!classDefinition: #AlignedLabelMorph category: 'Turingol'!
LabelMorph subclass: #AlignedLabelMorph
	instanceVariableNames: 'alignment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'AlignedLabelMorph class' category: 'Turingol'!
AlignedLabelMorph class
	instanceVariableNames: ''!

!classDefinition: #PluggableTableMorph category: 'Turingol'!
PluggableListMorph subclass: #PluggableTableMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'PluggableTableMorph class' category: 'Turingol'!
PluggableTableMorph class
	instanceVariableNames: ''!

!classDefinition: #TuringMachineWindow category: 'Turingol'!
SystemWindow subclass: #TuringMachineWindow
	instanceVariableNames: 'stepCounter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'TuringMachineWindow class' category: 'Turingol'!
TuringMachineWindow class
	instanceVariableNames: ''!

!classDefinition: #SequenceGenerator category: 'Turingol'!
Object subclass: #SequenceGenerator
	instanceVariableNames: 'next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'SequenceGenerator class' category: 'Turingol'!
SequenceGenerator class
	instanceVariableNames: ''!

!classDefinition: #Tape category: 'Turingol'!
Object subclass: #Tape
	instanceVariableNames: 'blank activePositive activeNegative'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'Tape class' category: 'Turingol'!
Tape class
	instanceVariableNames: ''!

!classDefinition: #TuringMachine category: 'Turingol'!
Object subclass: #TuringMachine
	instanceVariableNames: 'alphabet allStates state head start program running halting stopState params'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'TuringMachine class' category: 'Turingol'!
TuringMachine class
	instanceVariableNames: ''!

!classDefinition: #TuringMachineModel category: 'Turingol'!
Object subclass: #TuringMachineModel
	instanceVariableNames: 'text tm tape currentConfiguration selectedText errorNotifier'
	classVariableNames: 'TuringolParser'
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'TuringMachineModel class' category: 'Turingol'!
TuringMachineModel class
	instanceVariableNames: ''!

!classDefinition: #TuringMachineTransition category: 'Turingol'!
Object subclass: #TuringMachineTransition
	instanceVariableNames: 'from to readSymbol writeSymbol headDirection'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'TuringMachineTransition class' category: 'Turingol'!
TuringMachineTransition class
	instanceVariableNames: ''!

!classDefinition: #TuringolProcedure category: 'Turingol'!
Object subclass: #TuringolProcedure
	instanceVariableNames: 'statements parameters alphabet'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'TuringolProcedure class' category: 'Turingol'!
TuringolProcedure class
	instanceVariableNames: ''!


!Tape methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 16:48:33'!
format
	activeNegative atAllPut: blank.
	activePositive atAllPut: blank.! !

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

!TapeMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 16:29:40'!
adoptWidgetsColor: aColor
	"don't adopt any colors"
	! !

!TapeMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 20:24:46'!
buildHeadMorph

	| cells aLayoutMorph |
	
	cells _ interval collect:[:each | PointerMorph new fontSize:24; color: Color black; index: each; target: model; getSelector: #head; setSelector:#head:; yourself ].

	aLayoutMorph _ LayoutMorph newRow.

	aLayoutMorph separation:4@8 ; axisEdgeWeight: #center.
	
	cells do:[:each | aLayoutMorph addMorph: each proportionalWidth: 1 / cells size ].

	^aLayoutMorph 
! !

!TapeMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 16:34:18'!
buildMorph

	self addMorph: self buildTapeMorph proportionalHeight: 5/8;
		addMorph: self buildHeadMorph proportionalHeight: 3/8.
		
! !

!TapeMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 16:36:16'!
buildTapeMorph

	| aLayoutMorph cells |
	
	cells _ interval collect:[:each | CellMorph new fontSize:36; color: Color white; model: model ; index: each; getter: #tapeAt: ; setter: #tapeAt:put: ; alphabetGetter: #alphabet; yourself ].

	aLayoutMorph _ LayoutMorph newRow.

	aLayoutMorph color: Color black.
	
	aLayoutMorph separation:16@8 ; axisEdgeWeight: #center.
	
	cells do:[:each | aLayoutMorph addMorph: each proportionalWidth: 1 / cells size ].

	^ aLayoutMorph! !

!TapeMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 11:14:45'!
interval: anInterval
	interval _ anInterval! !

!TapeMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 11:35:39'!
model: anObject
	model _ anObject! !

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

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 16:35:54'!
alphabet

	alphabetGetter ifNil:[^{}].
	
	^model perform: alphabetGetter! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 16:35:28'!
alphabetGetter: aSymbol
	alphabetGetter _ aSymbol! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 15:54:18'!
fontSize: anInteger

	self font: (FontFamily defaultFamilyPointSize: anInteger).
! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 16:36:46'!
getMenu

	| aMenu | 

	aMenu _ MenuMorph new defaultTarget: self.
	aMenu
		addTitle: 'Alphabet'.
	
	aMenu addItemsFromDictionaries: (self alphabet collect:[:each |  
		{	#label 			-> 	each.
			#object 			-> 	self.
			#selector 			->	#write: .
			#arguments     -> 	 {each}				} asDictionary ]).
		
	^aMenu ! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 10:06:30'!
getter: aMessage
	getter _ aMessage! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2021 19:52:56'!
handlesMouseDown: aMouseButtonEvent
	^ true! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2021 21:49:23'!
index: anInteger
	index _ anInteger! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 16:22:20'!
initialize

	super initialize.
	
	self contents: ''.
	
	self getSelector: #itemAtIndex ; target: self! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 10:08:58'!
itemAtIndex

	model ifNil:[^''].
	
	index ifNil:[^''].
	
	^model perform: getter with: index! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 10:06:09'!
model: anObject
	model _ anObject! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2021 19:50:01'!
mouseButton2Activity
	"Invoke the menu"
	self getMenu ifNotNil: [ :menu |
		menu popUpInWorld: self world ]! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 10:06:22'!
setter: aMessage
	setter _ aMessage! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 11:22:55'!
write: aString

	model perform: setter with: index with: aString
! !

!UpdatingAlignedLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 20:23:04'!
drawOn: aCanvas
	aCanvas
		drawString: (contents ifNil: [ '' ])
		at: self midpointAlignment 
		font: self fontToUse
		color: color! !

!UpdatingAlignedLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 20:22:57'!
midpointAlignment

	^ (self morphTopLeft + self morphTopRight) / 2 - (self measureContents x / 2 @ 0)! !

!UpdatingAlignedLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/20/2021 19:35:13'!
morphTopRight

	^self morphTopLeft + (self morphWidth @ 0)! !

!PointerMorph methodsFor: 'event handling testing' stamp: 'DF 1/3/2021 11:04:08'!
handlesMouseDown: aMouseButtonEvent
	^ true! !

!PointerMorph methodsFor: 'stepping' stamp: 'DF 1/2/2021 21:44:52'!
stepAt: millisecondSinceLast

	(target perform: getSelector) = index 
		ifTrue:[ 	self contents: '' ] ifFalse:[self contents: '' ].
! !

!PointerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 15:54:09'!
fontSize: anInteger

	self font: (FontFamily defaultFamilyPointSize: anInteger).
! !

!PointerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2021 21:41:22'!
index: anInteger
	
	index _ anInteger.! !

!PointerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 16:22:38'!
initialize

	super initialize.
	
	self contents: ''.
! !

!PointerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 11:44:11'!
mouseButton1Activity

	Transcript show:'*';cr.
	
	target perform: setSelector with: index! !

!PointerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 11:49:09'!
mouseButton1Up: anEvent localPosition: aPoint

	target perform: setSelector with: index! !

!PointerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 11:03:54'!
setSelector: aSelector
	setSelector _ aSelector! !

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

!TuringMachineWindow methodsFor: 'GUI building' stamp: 'DF 1/3/2021 16:20:06'!
initialExtent

	^`800@600` * Preferences standardCodeFont lineSpacing // 14! !

!TuringMachineWindow methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 17:45:11'!
initialize

	super initialize.
	
	stepCounter := 0.! !

!TuringMachineWindow methodsFor: 'as yet unclassified' stamp: 'DF 12/5/2020 13:10:06'!
isRunOn

	^stepCounter > 0 and: [ model tmRunning ]! !

!TuringMachineWindow methodsFor: 'as yet unclassified' stamp: 'DF 11/27/2020 20:28:37'!
pressRun
	
	self startStepping.
	
! !

!TuringMachineWindow methodsFor: 'as yet unclassified' stamp: 'DF 1/15/2021 21:07:55'!
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

!TuringMachineWindow methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2021 18:33:08'!
step

	((stepCounter >= 100) or: [	model tmHalted] or:[model tmAbsent]) 
		ifTrue:[self stopStepping. 	stepCounter := 0.	 ^self].

	model pressStep.
	
	stepCounter := stepCounter + 1.
	
! !

!TuringMachineWindow class methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 19:56:22'!
openBrowser
	self open: TuringMachineModel new label: 'Turing Machine Browser'! !

!TuringMachineWindow class methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 19:55:31'!
worldMenuForOpenGroup

	^ `{{
			#itemGroup 		-> 		10.
			#itemOrder 		-> 		35.
			#label 			->	'Turingol IDE'.
			#object 			->	TuringMachineWindow.
			#selector 		-> 		#openBrowser.
			#icon 			-> 	#editFindReplaceIcon.
			#balloonText 	-> 		'A browser for editing compiling and running Turing machines'.
		} asDictionary}`! !

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

!Tape methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 10:14:07'!
active

	^ activeNegative reverse, activePositive! !

!Tape methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 21:40:25'!
at: anInteger

	anInteger <= 0 
		ifTrue:[ | index |
		
		index := 1 - anInteger.
		
		index > activeNegative size ifTrue:[^blank].
		
		^activeNegative at: index ]
	
		ifFalse:[
			
			anInteger > activePositive size ifTrue:[^blank].
			
			^activePositive at: anInteger].
		
		
		! !

!Tape methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 21:45:19'!
at: anInteger put: aSymbol

	anInteger <= 0 
		ifTrue:[ | index |
		
		index := 1 - anInteger.
		
		index - activeNegative size timesRepeat:[activeNegative add: blank].
		
		activeNegative at: index put: aSymbol ]
	
		ifFalse:[
			
			anInteger - activePositive size timesRepeat:[activePositive add: blank].
			
			activePositive at: anInteger put: aSymbol ].
! !

!Tape methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 13:24:29'!
blank
	^blank! !

!Tape methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 13:27:58'!
initialize

	activePositive := OrderedCollection new.

	activeNegative := OrderedCollection new.
	
	blank := '_'.! !

!Tape methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 10:11:22'!
inverseTransform: anInteger
	
	"transform a position from aboslute to view relative "
	
	^ anInteger + activeNegative size
	! !

!Tape methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 22:20:03'!
transform: anInteger
	
	"transform a position from aboslute to view relative "
	
	^ anInteger - activeNegative size
	! !

!TuringMachine methodsFor: 'initialization' stamp: 'DF 12/23/2020 13:33:39'!
initialize

	head := 1.
	
	running _ false.
	
	halting _ { #yes . #no } asSet.! !

!TuringMachine methodsFor: 'computation' stamp: 'DF 11/26/2020 19:55:30'!
instruction: aTape

	^ program at: { state . (aTape at: head) }! !

!TuringMachine methodsFor: 'computation' stamp: 'DF 11/25/2020 21:46:24'!
moveLeft

	head := head - 1.
	! !

!TuringMachine methodsFor: 'computation' stamp: 'DF 11/25/2020 21:46:28'!
moveRight

	head := head + 1.
	! !

!TuringMachine methodsFor: 'computation' stamp: 'DF 1/3/2021 16:49:26'!
reset

	state := start.
	
	! !

!TuringMachine methodsFor: 'computation' stamp: 'DF 12/22/2020 19:37:21'!
step: aTape

	| instruction |
	
	(halting includes: state) ifTrue:[running _ false. ^self].
	
	running _ true.
	
	instruction := program at: { state . (aTape at: head) }.
	
	aTape at: head put: instruction first.
	
	(instruction second = -1) ifTrue:[self moveLeft].
	
	(instruction second = 1) ifTrue:[self moveRight].
	
	state := instruction third.
	! !

!TuringMachine methodsFor: 'accessing' stamp: 'DF 11/26/2020 10:33:09'!
alphabet
	^alphabet
	! !

!TuringMachine methodsFor: 'accessing' stamp: 'DF 11/21/2020 17:54:02'!
alphabet: aSet

	alphabet := aSet
	! !

!TuringMachine methodsFor: 'accessing' stamp: 'DF 12/28/2020 11:24:45'!
halting
	^halting! !

!TuringMachine methodsFor: 'accessing' stamp: 'DF 11/21/2020 17:55:59'!
head
	^head
	! !

!TuringMachine methodsFor: 'accessing' stamp: 'DF 11/26/2020 10:18:16'!
head: aSmallInteger 
	head _ aSmallInteger! !

!TuringMachine methodsFor: 'accessing' stamp: 'DF 12/28/2020 22:37:56'!
params: anOrderedCollection
	params _ anOrderedCollection! !

!TuringMachine methodsFor: 'accessing' stamp: 'DF 11/26/2020 15:56:46'!
program
	^program! !

!TuringMachine methodsFor: 'accessing' stamp: 'DF 11/21/2020 17:57:26'!
program: aBinaryFunction

	program := aBinaryFunction
	! !

!TuringMachine methodsFor: 'accessing' stamp: 'DF 12/28/2020 11:31:11'!
start
	^start! !

!TuringMachine methodsFor: 'accessing' stamp: 'DF 11/21/2020 17:56:56'!
start: anInteger
	start := anInteger! !

!TuringMachine methodsFor: 'accessing' stamp: 'DF 11/26/2020 19:59:15'!
state
	^state! !

!TuringMachine methodsFor: 'accessing' stamp: 'DF 12/28/2020 11:12:52'!
states
	^allStates! !

!TuringMachine methodsFor: 'accessing' stamp: 'DF 12/28/2020 11:12:45'!
states: aCollection
	allStates _ aCollection! !

!TuringMachine methodsFor: 'accessing' stamp: 'DF 12/28/2020 11:31:25'!
stopState
	^stopState! !

!TuringMachine methodsFor: 'accessing' stamp: 'DF 12/28/2020 11:28:54'!
stopState: anInteger

	stopState _ anInteger.
	
	halting add: anInteger! !

!TuringMachine methodsFor: 'testing' stamp: 'DF 12/22/2020 19:37:00'!
halted
	^ halting includes: state! !

!TuringMachine methodsFor: 'testing' stamp: 'DF 12/5/2020 13:09:37'!
running
	^running! !

!TuringMachine methodsFor: 'visualization' stamp: 'DF 1/16/2021 12:09:34'!
asStateDiagram

	| aStateDiagram diagramStates states transitions transitionSets |
	
	aStateDiagram _ StateDiagram new.

	states _ Set new.
	
	program 	associations do:[:each | states add: each key first. states add: each value third ].
	
	diagramStates _ Dictionary new.
	
	states do:[:each | diagramStates at: each put: (DiagramState new radius:15 ; label: each asString) ].
	
	(diagramStates at: start) initial: true.
	
	diagramStates do:[:each | aStateDiagram addState: each ].
	
	halting do:[:each | diagramStates at: each ifPresent:[:s | s accepting: true] ifAbsent:[] ].
	
	"create turing machine transition objects from the program tuples"
	
	transitions _ program associations collect:[:each | TuringMachineTransition from: each ].
	
	"replace the from/to states by their corresponding diagram states"
	
	transitions do:[:each | each from: (diagramStates at: each from) ; to: (diagramStates at: 	each to) ].
		
	"collect all the transitions between the same pair of states into a single set."
	
	transitionSets _ Dictionary new.
	
	transitions do:[:each | 
		transitionSets at: each key
		ifPresent: [ :aSet | aSet add: each ]
		ifAbsent:[ transitionSets at: each key put:{ each } asSet ] ].
	
	transitionSets do:[:each | each addConnectionsTo: aStateDiagram alphabet: alphabet ].
	
	^aStateDiagram
	! !

!TuringMachine class methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 16:49:26'!
new: anXraySymbol

	| aTuringMachine |
	
	aTuringMachine := self new.
	
	aTuringMachine alphabet: #alphabet @ anXraySymbol ; start: #q0 @ anXraySymbol ; stopState: #qe @ anXraySymbol ; program: (#transitions @ anXraySymbol) asDictionary; reset.
	
	^aTuringMachine! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 11/26/2020 20:02:17'!
currentConfiguration

	| instruction tuples |
	
	tm ifNil:[^0].
	
	tm halted ifTrue:[^0].
	
	tuples :=  self program.
	
	instruction := tm instruction: tape. 
	
	^ tuples indexOf: { tm state . (tape at: tm head) } , instruction.! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 12/22/2020 19:51:47'!
currentState

	tm ifNil:[^'N/A'].
	
	^tm state asString! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 1/3/2021 11:01:40'!
head
	tm ifNil:[^nil].
	
	^tm head! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 1/3/2021 11:13:28'!
head: anInteger
	tm ifNil:[^self].
	
	tm head: anInteger! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 1/16/2021 18:50:09'!
program

	| tuples headSymbols | 
	
	tm ifNil:[ ^{} ].

	headSymbols _ { 1 -> '' . 0 -> '' . -1 -> '' } asDictionary.
	
	tuples := tm program associations collect:[:each | { each key first . each key second . each value first . headSymbols at: each value second . each value third } ].
	
	^ tuples sort: [:x :y | x first <= y first ].
	
	! !

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

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 1/9/2021 18:32:37'!
tmHalted

	tm ifNil:[^false].
	
	^tm halted
! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 1/9/2021 18:32:28'!
tmPresent

	^tm notNil
! !

!TuringMachineModel methodsFor: 'accessing' stamp: 'DF 12/5/2020 13:09:56'!
tmRunning

	tm ifNil:[^false].
	
	^tm running
! !

!TuringMachineModel methodsFor: 'menu' stamp: 'DF 1/3/2021 10:16:50'!
alphabet

	tm ifNil:[^{'_'}].
	
	^tm alphabet! !

!TuringMachineModel methodsFor: 'menu' stamp: 'DF 1/15/2021 21:06:03'!
showStateDiagram

	tm ifNil:[^self].
	
	[tm asStateDiagram asMorph embeddedInZoomingWindowLabeled: 'State Machine Diagram'] fork! !

!TuringMachineModel methodsFor: 'initialization' stamp: 'DF 1/16/2021 17:42:16'!
initialize

	tape := Tape new.
	
	tape at: -20 put: tape blank; at:20 put: tape blank. "give us some blank entries so we'll have something to show"
		
	selectedText _ 1 to:0.
	
	text := '' asText.
	
	tm := nil.
	
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

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 18:44:52'!
acceptContents: aString

	[ | outcome |

		text removeAttributes: { TextColor red } from: 1 to: text size.
		
		outcome := TuringolParser parse: aString.

		outcome second 
			ifEmpty:[ 
				tm := TuringMachine new: outcome first second ]
			ifNotEmpty:[
				tm := nil.
				text addAttribute: TextColor red from: outcome second first start + 1 to: text size ].
		
	] 
	on: XraySyntaxError do:[:anXraySyntaxError | 
		tm := nil.
		text addAttribute: TextColor red from: anXraySyntaxError position + 1 to: text size ]
	on: MissingDefinition do:[: aMissingDefinition | 
		tm := nil.
		aMissingDefinition notifyTo: errorNotifier.		^false.]. 

	self changed: #program.
	
	^true! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 21:01:39'!
acceptedContents
	^text! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2021 22:09:35'!
editorClassFor: aMessage

	^XrayEditor! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2021 22:01:13'!
errorNotifier: aNotifier
	errorNotifier _ aNotifier! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 16:51:47'!
pressFormat

	tape format.
	
	self changed: #tape.! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 20:47:12'!
pressPause! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 17:41:51'!
pressReset

	tm ifNil:[^self].
	
	tm reset.
	
	self changed: #tape; changed: #currentConfiguation; changed: #program! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 18:45:10'!
pressStep

	tm ifNil:[^self].
	
	tm step: tape.
	
	self changed: #tape; changed: #currentConfiguration! !

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

!TuringMachineTransition methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 12:55:23'!
addConnectionTo: aStateDiagram withLabel: aString
	aStateDiagram connect: from to: to label: aString! !

!TuringMachineTransition methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 12:54:17'!
from
	^from! !

!TuringMachineTransition methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 12:40:01'!
from: aState
	from _ aState! !

!TuringMachineTransition methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 12:57:57'!
headDirection
	^headDirection! !

!TuringMachineTransition methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 12:40:31'!
headDirection: anInteger
	headDirection _ anInteger! !

!TuringMachineTransition methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 12:59:28'!
key
	^ { from . to }
	! !

!TuringMachineTransition methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 12:54:25'!
readSymbol
	^readSymbol! !

!TuringMachineTransition methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 12:40:15'!
readSymbol: aString
	readSymbol _ aString! !

!TuringMachineTransition methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 12:54:19'!
to
	^to! !

!TuringMachineTransition methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 12:40:06'!
to: aState
	to _ aState! !

!TuringMachineTransition methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 12:54:31'!
writeSymbol
	^writeSymbol! !

!TuringMachineTransition methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 12:40:22'!
writeSymbol: aString
	writeSymbol _ aString! !

!TuringMachineTransition methodsFor: 'testing' stamp: 'DF 12/23/2020 12:41:29'!
isMoveLeftTransition
	^readSymbol = writeSymbol and:[headDirection = -1]! !

!TuringMachineTransition methodsFor: 'testing' stamp: 'DF 12/23/2020 12:41:22'!
isMoveRightTransition
	^readSymbol = writeSymbol and:[headDirection = 1]! !

!TuringMachineTransition methodsFor: 'testing' stamp: 'DF 12/23/2020 12:40:58'!
isReadTransition
	^readSymbol = writeSymbol and:[headDirection = 0]! !

!TuringMachineTransition class methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 17:28:03'!
alphabet: aCollectionOfSymbols currentState: aState if: aSymbol then: thenState else: elseState

	| thenTransitions elseTransitions |
	
	thenTransitions _ { { aState . aSymbol } -> { aSymbol . 0 . thenState } }.
	
	elseTransitions _ aCollectionOfSymbols reject:[:each | each = aSymbol ] 
		thenCollect:[:each | { aState . each } -> { each . 0 .  elseState } ].
		
	^ thenTransitions, elseTransitions
	! !

!TuringMachineTransition class methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 12:44:15'!
from: anAssociation

	| aTransition |
	
	aTransition _ self new.
	
	aTransition from: anAssociation key first.
	aTransition readSymbol: anAssociation key second.
	aTransition writeSymbol: anAssociation value first.
	aTransition headDirection: anAssociation value second.
	aTransition to: anAssociation value third.
	
	^aTransition
	! !

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

!Set methodsFor: '*Turingol' stamp: 'DF 1/16/2021 19:49:58'!
addConnectionsTo: aStateDiagram alphabet: aSetOfSymbols

	" if all transitions are of the form c/0/c for every c in the alphabet then it's a skip "
	
	| x isTotal labels syms |

	isTotal _ aSetOfSymbols allSatisfy:[:each | self anySatisfy: [:t | t readSymbol = each ] ].
	
	(isTotal and: [self allSatisfy:[:each | each isReadTransition ] ]) 
		ifTrue: [ self anyOne addConnectionTo: aStateDiagram withLabel: 'skip'. ^self ].

	" if all transitions are of the form c/1/c for every c in the alphabet then it's a move right "
	(isTotal and: [ self allSatisfy:[:each | each isMoveRightTransition ] ]) 
		ifTrue: [ self anyOne addConnectionTo: aStateDiagram withLabel: ''. ^self ].

	" if all transitions are of the form c/-1/c for every c in the alphabet then it's a move left "
	(isTotal and: [self allSatisfy:[:each | each isMoveLeftTransition ] ]) 
		ifTrue: [ self anyOne addConnectionTo: aStateDiagram withLabel: ''. ^self ].
	
	" if all transitions are of the form c/0/x for every c in the alphabet then it's a write x "
	
	x _ self anyOne writeSymbol.
	 
	(isTotal and: [ self allSatisfy:[:each | each writeSymbol = x and:[ each headDirection = 0] ] ]) 
		ifTrue: [ self anyOne addConnectionTo: aStateDiagram withLabel: 'write ', x. ^self ].
	
	" otherwise, if all the transitions differ only in the input and the inputs cover all the alphabet but c, then use a single ~c transition. "
	
	syms _ aSetOfSymbols asSet.
	
	syms removeAll: (self collect:[:each | each readSymbol]).
	
	syms size = 1
		ifTrue:[self anyOne addConnectionTo: aStateDiagram withLabel: '¬', syms anyOne. ^self ].
	
	" otherwise, if all the transitions differ only in the input (read) symbol, use only that in the label".
	
	(self allSatisfy:[:each | each readSymbol = each writeSymbol and:[ each headDirection = 0] ])
		ifTrue: [ self do:[:each | each addConnectionTo: aStateDiagram withLabel: each readSymbol]. ^self] .
	 
	" otherwise, combine the labels of all the transitions into a single label "
	
	labels _ self collect:[:each | each readSymbol, '/', each headDirection asString, '/', each writeSymbol, String lf ].
	
	self anyOne addConnectionTo: aStateDiagram withLabel: (labels fold:[:a :b | a,';',b ]).
	! !
TuringMachineModel initialize!
