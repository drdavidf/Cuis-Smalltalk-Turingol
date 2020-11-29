'From Cuis 5.0 [latest update: #4360] on 27 November 2020 at 10:29:52 pm'!
'Description '!
!provides: 'Turingol' 1 4!
!requires: 'X-ray' 1 859 nil!
SystemOrganization addCategory: #Turingol!


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

!classDefinition: #InnerTableMorph category: #Turingol!
InnerListMorph subclass: #InnerTableMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'InnerTableMorph class' category: #Turingol!
InnerTableMorph class
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

!classDefinition: #Tape category: #Turingol!
Object subclass: #Tape
	instanceVariableNames: 'blank activePositive activeNegative'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'Tape class' category: #Turingol!
Tape class
	instanceVariableNames: ''!

!classDefinition: #TuringMachine category: #Turingol!
Object subclass: #TuringMachine
	instanceVariableNames: 'alphabet state head blank start halt program'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'TuringMachine class' category: #Turingol!
TuringMachine class
	instanceVariableNames: ''!

!classDefinition: #TuringMachineModel category: #Turingol!
Object subclass: #TuringMachineModel
	instanceVariableNames: 'text tm tape selectedCell currentConfiguration'
	classVariableNames: 'TuringolParser'
	poolDictionaries: ''
	category: 'Turingol'!
!classDefinition: 'TuringMachineModel class' category: #Turingol!
TuringMachineModel class
	instanceVariableNames: ''!


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

!TuringMachineWindow methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 21:04:30'!
buildMorphicWindow

	| b1 b2 b3 b4 buttons col programTextMorph tapeMorph row programColumn programTableMorph |
	
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
	
	col _ LayoutMorph newColumn.

	col   addMorph: tapeMorph proportionalHeight:0.8 ; 
		addMorph:	 buttons proportionalHeight: 0.2.
	
	row _ LayoutMorph newRow.
	
	row 	addMorph: programColumn proportionalWidth: 0.7; 
		addAdjusterAndMorph: col proportionalWidth: 0.3.
	
	self layoutMorph addMorph: row.
	! !

!TuringMachineWindow methodsFor: 'as yet unclassified' stamp: 'DF 11/27/2020 20:16:38'!
initialize

	super initialize.
	
	stepCounter := 100.! !

!TuringMachineWindow methodsFor: 'as yet unclassified' stamp: 'DF 11/27/2020 20:26:21'!
isRunOn

	^stepCounter > 0 and: [ model tmHalted not ]! !

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

!InnerTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 17:40:30'!
widthToDisplayItem: item
	^ (item collect:[:each | self font widthOfStringOrText: each]) sum
	! !

!SequenceGenerator methodsFor: 'as yet unclassified' stamp: 'DF 11/21/2020 21:26:15'!
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

!Tape methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 21:14:47'!
initialize

	activePositive := OrderedCollection new.

	activeNegative := OrderedCollection new.
	
	blank := 'blank'.! !

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

!TuringMachine methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 10:33:09'!
alphabet
	^alphabet
	! !

!TuringMachine methodsFor: 'as yet unclassified' stamp: 'DF 11/21/2020 17:54:02'!
alphabet: aSet

	alphabet := aSet
	! !

!TuringMachine methodsFor: 'as yet unclassified' stamp: 'DF 11/21/2020 17:57:03'!
halt: anInteger

	halt := anInteger! !

!TuringMachine methodsFor: 'as yet unclassified' stamp: 'DF 11/21/2020 17:55:59'!
head
	^head
	! !

!TuringMachine methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 21:03:52'!
initialize

	blank := 'blank'.
	
	head := 1.
	! !

!TuringMachine methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 19:55:30'!
instruction: aTape

	^ program at: { state . (aTape at: head) }! !

!TuringMachine methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 21:46:24'!
moveLeft

	head := head - 1.
	! !

!TuringMachine methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 21:46:28'!
moveRight

	head := head + 1.
	! !

!TuringMachine methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 15:56:46'!
program
	^program! !

!TuringMachine methodsFor: 'as yet unclassified' stamp: 'DF 11/21/2020 17:57:26'!
program: aBinaryFunction

	program := aBinaryFunction
	! !

!TuringMachine methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 21:46:48'!
reset

	state := start.
	
	head := 1.
	! !

!TuringMachine methodsFor: 'as yet unclassified' stamp: 'DF 11/21/2020 17:56:56'!
start: anInteger
	start := anInteger! !

!TuringMachine methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 22:01:15'!
step: aTape

	| instruction |
	
	state = halt ifTrue:[^self].
	
	instruction := program at: { state . (aTape at: head) }.
	
	aTape at: head put: instruction first.
	
	(instruction second = -1) ifTrue:[self moveLeft].
	
	(instruction second = 1) ifTrue:[self moveRight].
	
	state := instruction third.
	! !

!TuringMachine methodsFor: 'accessing' stamp: 'DF 11/26/2020 10:18:16'!
head: aSmallInteger 
	head _ aSmallInteger! !

!TuringMachine methodsFor: 'accessing' stamp: 'DF 11/26/2020 19:59:15'!
state
	^state! !

!TuringMachine methodsFor: 'testing' stamp: 'DF 11/26/2020 20:03:11'!
halted
	^state = halt! !

!TuringMachine class methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 22:00:30'!
new: anXraySymbol

	| aTuringMachine |
	
	aTuringMachine := self new.
	
	aTuringMachine alphabet: #alphabet @ anXraySymbol ; start: #q0 @ anXraySymbol ; halt: #qe @ anXraySymbol ; program: (#transitions @ anXraySymbol) asDictionary; reset.
	
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

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 22:14:16'!
initialize

	tape := Tape new.
	
	tape at: -20 put: 'blank'; at:20 put: 'blank'. "give us some blank entries so we'll have something to show"

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

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 10:18:00'!
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

!TuringMachineModel methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 10:45:05'!
write: aSymbol

	tape at: (tape transform: selectedCell) put: aSymbol.
	
	self changed: #tape.! !

!TuringMachineModel class methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 20:56:58'!
initialize

	"self initialize"
	
	TuringolParser := Language parserFor:'Turingol'.
	! !
TuringMachineModel initialize!
