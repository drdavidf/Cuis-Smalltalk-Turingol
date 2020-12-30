'From Cuis 5.0 [latest update: #4426] on 30 December 2020 at 6:39:43 pm'!
'Description '!
!provides: 'Turingol' 1 15!
!requires: 'X-ray' 1 859 nil!
SystemOrganization addCategory: 'Turingol'!


!classDefinition: #InnerTableMorph category: 'Turingol'!
InnerListMorph subclass: #InnerTableMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'InnerTableMorph class' category: 'Turingol'!
InnerTableMorph class
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
	instanceVariableNames: 'text tm tape selectedCell currentConfiguration'
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

!TuringMachineWindow methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 10:33:21'!
alphabetMenu

	| aMenu |
	
	aMenu _ MenuMorph new defaultTarget: self.
	aMenu addTitle: 'Alphabet'.
	aMenu
		addItemsFromDictionaries: model alphabetMenu.

	^aMenu! !

!TuringMachineWindow methodsFor: 'as yet unclassified' stamp: 'DF 12/26/2020 18:22:08'!
buildMorphicWindow

	| b1 b2 b3 b4 buttons col programTextMorph tapeMorph row programColumn programTableMorph currentStateMorph |
	
	tapeMorph _ PluggableListMorph 
		model: model
		listGetter: #tape
		indexGetter: #selectedCell
		indexSetter: #selectedCell:
		mainView: self
		menuGetter: #alphabetMenu
		keystrokeAction: nil.
	
	programTextMorph _ TextModelMorph 
					textProvider: model
					textGetter: #acceptedContents 
					textSetter: #acceptContents:
					selectionGetter: #selectedText.

	programTableMorph _ PluggableTableMorph 
		model: model
		listGetter: #program
		indexGetter: #currentConfiguration
		indexSetter: nil
		mainView: self
		menuGetter: nil
		keystrokeAction: nil.

	programColumn := LayoutMorph newColumn.
	
	programColumn addMorph: programTextMorph proportionalHeight:0.6;
		addAdjusterAndMorph: programTableMorph proportionalHeight:0.4.
		
	buttons := LayoutMorph newRow.

	b1 _ (PluggableButtonMorph model: model stateGetter: #isResetOn action: #pressReset) label: 'Reset'.
	b2 _ (PluggableButtonMorph model: self stateGetter: #isRunOn action: #pressRun) label: 'Run'.
	b3 _ (PluggableButtonMorph model: model stateGetter: #isStepOn action: #pressStep) label: 'Step'.
	b4 _ (PluggableButtonMorph model: model stateGetter: #isPauseOn action: #pressPause) label: 'Pause'.
	
	buttons addMorphs: { b1 . b2 . b3 . b4 }.

	currentStateMorph _ LayoutMorph newColumn.
	
	currentStateMorph addMorph: (UpdatingLabelMorph new target: model ; getSelector: #currentState ; stepTime: 10; yourself) fixedHeight:16.
	
	currentStateMorph axisEdgeWeight: #center; separation:4@4.
	 	
	col _ LayoutMorph newColumn.

	col addMorph: tapeMorph proportionalHeight:0.8 ; 
		addMorph: currentStateMorph proportionalHeight:0.05;
		addMorph:	 buttons proportionalHeight: 0.15.
	
	row _ LayoutMorph newRow.
	
	row 	addMorph: programColumn proportionalWidth: 0.7; 
		addAdjusterAndMorph: col proportionalWidth: 0.3.
	
	self layoutMorph addMorph: row.
	! !

!TuringMachineWindow methodsFor: 'as yet unclassified' stamp: 'DF 11/27/2020 20:16:38'!
initialize

	super initialize.
	
	stepCounter := 100.! !

!TuringMachineWindow methodsFor: 'as yet unclassified' stamp: 'DF 12/5/2020 13:10:06'!
isRunOn

	^stepCounter > 0 and: [ model tmRunning ]! !

!TuringMachineWindow methodsFor: 'as yet unclassified' stamp: 'DF 11/27/2020 20:28:37'!
pressRun
	
	self startStepping.
	
! !

!TuringMachineWindow methodsFor: 'as yet unclassified' stamp: 'DF 11/27/2020 20:29:35'!
step

	((stepCounter >= 100) or: [	model tmHalted]) 
		ifTrue:[self stopStepping. 	stepCounter := 0.	 ^self].

	model pressStep.
	
	stepCounter := stepCounter + 1.
	
! !

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

!TuringMachine methodsFor: 'computation' stamp: 'DF 12/26/2020 16:57:03'!
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

!TuringMachine methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2020 09:44:03'!
relocateAt: anInteger 

	| aTuringMachine transitions |
	
	aTuringMachine _ TuringMachine new.
	
	aTuringMachine alphabet: self alphabet.
	
	aTuringMachine start: start + anInteger.
	
	aTuringMachine stopState: stopState + anInteger.
	
	aTuringMachine states: (self states collect:[:each | each + anInteger ]).
	
	transitions _ program collect:[:each | { each key first + anInteger . each key second } -> { each value first . each value second . each value third + anInteger } ].
	
	aTuringMachine program: transitions.
	
	^aTuringMachine
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

!TuringMachine methodsFor: 'visualization' stamp: 'DF 12/23/2020 13:11:19'!
asStateDiagram

	| aStateDiagram diagramStates states transitions transitionSets |
	
	aStateDiagram _ StateDiagram new.

	states _ Set new.
	
	program 	associations do:[:each | states add: each key first. states add: each value third ].
	
	diagramStates _ Dictionary new.
	
	states do:[:each | diagramStates at: each put: (DiagramState new radius:15 ; label: each asString) ].
	
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

!TuringMachine class methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2020 11:28:16'!
new: anXraySymbol

	| aTuringMachine |
	
	aTuringMachine := self new.
	
	aTuringMachine alphabet: #alphabet @ anXraySymbol ; start: #q0 @ anXraySymbol ; stopState: #qe @ anXraySymbol ; program: (#transitions @ anXraySymbol) asDictionary; reset.
	
	^aTuringMachine! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/27/2020 20:15:56'!
acceptContents: aString

	[ | outcome |

		text removeAttributes: { TextColor red } from: 1 to: text size.
		
		outcome := TuringolParser parse: aString.

		outcome second 
			ifEmpty:[ 
				tm := TuringMachine new: outcome first second. 
				selectedCell := tape inverseTransform: tm head ]
			ifNotEmpty:[
				tm := nil.
				text addAttribute: TextColor red from: outcome second first start + 1 to: text size ].
		
	] 
	on: XraySyntaxError do:[:anXraySyntaxError | 
		tm := nil.
		text addAttribute: TextColor red from: anXraySyntaxError position + 1 to: text size ].

	self changed: #selectedCell; changed: #program.
	
	^true! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 21:01:39'!
acceptedContents
	^text! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 10:44:40'!
alphabetMenu

	tm ifNil:[^{}].
	
	^ tm alphabet collect:[:each | 
			 
			{	#label 			-> 	each.
				#object 			-> 	#model.
				#selector 			->	#write: .
				#arguments     -> 	 {each}				} asDictionary ].
! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 20:02:17'!
currentConfiguration

	| instruction tuples |
	
	tm ifNil:[^0].
	
	tm halted ifTrue:[^0].
	
	tuples :=  self program.
	
	instruction := tm instruction: tape. 
	
	^ tuples indexOf: { tm state . (tape at: tm head) } , instruction.! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 12/22/2020 19:51:47'!
currentState

	tm ifNil:[^'N/A'].
	
	^tm state asString! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 13:24:54'!
initialize

	tape := Tape new.
	
	tape at: -20 put: tape blank; at:20 put: tape blank. "give us some blank entries so we'll have something to show"

	selectedCell := 1.
		
	text := '' asText.
	
	tm := nil.
	
! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 20:20:07'!
isPauseOn
	^false! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 10:22:43'!
isResetOn
	^false! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 20:46:48'!
isStepOn
	^false! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 20:47:12'!
pressPause! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 20:04:26'!
pressReset

	tm ifNil:[^self].
	
	tm reset.
	
	self changed: #tape; changed: #selectedCell; changed: #currentConfiguation; changed: #program! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 19:59:55'!
pressStep

	tm ifNil:[^self].
	
	tm step: tape.
	
	selectedCell := tape inverseTransform: tm head. 
	
	self changed: #tape; changed: #selectedCell ; changed: #currentConfiguration! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 17:27:41'!
program

	| tuples | 
	
	tm ifNil:[ ^{} ].

	tuples := tm program associations collect:[:each | { each key first . each key second . each value first . each value second . each value third } ].
	
	^ tuples sort: [:x :y | x first <= y first ].
	
	! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 22:14:32'!
selectedCell
	
	^selectedCell! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 10:07:10'!
selectedCell: aSmallInteger 
	
	selectedCell _ aSmallInteger.
	
	tm ifNil:[^self].
	
	tm head: (tape transform: selectedCell).! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 20:46:28'!
selectedText
	^1 to:0! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 21:52:41'!
tape
	^tape active! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/27/2020 20:14:08'!
tmHalted

	tm ifNil:[^true].
	
	^tm halted
! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 12/5/2020 13:09:56'!
tmRunning

	tm ifNil:[^false].
	
	^tm running
! !

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 10:45:05'!
write: aSymbol

	tape at: (tape transform: selectedCell) put: aSymbol.
	
	self changed: #tape.! !

!TuringMachineModel class methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 20:56:58'!
initialize

	"self initialize"
	
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

!TuringolProcedure methodsFor: 'as yet unclassified' stamp: 'DF 12/30/2020 12:50:03'!
applyTo: arguments start: aState generator: aSequeneceGenerator

	| env |

	env _ (parameters with: arguments collect:[:param :arg | param -> arg ]) asDictionary.
	
	statements parent: nil. 
	
	statements at:#env put: env.
	
	statements at:#alphabet put: alphabet. 
	
	statements at: #generator put: aSequeneceGenerator.
	
	statements at: #start put: aState.
	
	statements semantics.
	
	^statements.
	
	! !

!Set methodsFor: '*Turingol' stamp: 'DF 12/23/2020 15:29:28'!
addConnectionsTo: aStateDiagram alphabet: aSetOfSymbols

	" if all transitions are of the form c/0/c for every c in the alphabet then it's a skip "
	
	| x isTotal labels |

	isTotal _ aSetOfSymbols allSatisfy:[:each | self anySatisfy: [:t | t readSymbol = each ] ].
	
	(isTotal and: [self allSatisfy:[:each | each isReadTransition ] ]) 
		ifTrue: [ self anyOne addConnectionTo: aStateDiagram withLabel: 'skip'. ^self ].

	" if all transitions are of the form c/1/c for every c in the alphabet then it's a move right "
	(isTotal and: [ self allSatisfy:[:each | each isMoveRightTransition ] ]) 
		ifTrue: [ self anyOne addConnectionTo: aStateDiagram withLabel: 'right'. ^self ].

	" if all transitions are of the form c/-1/c for every c in the alphabet then it's a move left "
	(isTotal and: [self allSatisfy:[:each | each isMoveLeftTransition ] ]) 
		ifTrue: [ self anyOne addConnectionTo: aStateDiagram withLabel: 'left'. ^self ].
	
	" if all transitions are of the form c/0/x for every c in the alphabet then it's a write x "
	
	x _ self anyOne writeSymbol.
	 
	(isTotal and: [ self allSatisfy:[:each | each writeSymbol = x and:[ each headDirection = 0] ] ]) 
		ifTrue: [ self anyOne addConnectionTo: aStateDiagram withLabel: 'write ', x. ^self ].
	
	" otherwise, if all the transitions differ only in the input (read) symbol, use only that in the label".
	
	(self allSatisfy:[:each | each readSymbol = each writeSymbol and:[ each headDirection = 0] ])
		ifTrue: [ self do:[:each | each addConnectionTo: aStateDiagram withLabel: each readSymbol]. ^self] .
	 
	" otherwise, combine the labels of all the transitions into a single label "
	
	labels _ self collect:[:each | each readSymbol, '/', each headDirection asString, '/', each writeSymbol, String lf ].
	
	self anyOne addConnectionTo: aStateDiagram withLabel: (labels fold:[:a :b | a,';',b ]).
	! !
TuringMachineModel initialize!
