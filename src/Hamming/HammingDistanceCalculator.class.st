"
I represent a hamming distance calculator. Currently, I take two DNA strands (as strings) that is the same size and count the differences in each index of the strings.



- HammingDistanceCalculator new; calculateHDBetween: 'abcde' and: 'bbede'
	>> 2  


    Instance Variables
	hammingDistance:		<Object>
	stringOne:		<Object>
	stringTwo:		<Object>



"
Class {
	#name : #HammingDistanceCalculator,
	#superclass : #Object,
	#instVars : [
		'stringOne',
		'stringTwo',
		'hammingDistance'
	],
	#category : #Hamming
}

{ #category : #initialization }
HammingDistanceCalculator >> calculateHDBetween: string1 and: string2 [
	| distance |
	string1 size ~= string2
		ifTrue: [ ^ self error: 'two strings must have the same length' ].
	distance := 0.
	string1
		with: string2
		do: [ :char1 :char2 | 
			char1 ~= char2
				ifTrue: [ distance := distance + 1 ] ].
	^ distance
]

{ #category : #initialization }
HammingDistanceCalculator >> checkStringsAreSameSize [

	stringOne size = stringTwo size 
		ifFalse: [ ErrorDialogWindow error: 'strings need to be the same size' ] 
]

{ #category : #initialization }
HammingDistanceCalculator >> hammingDistance [
	^ hammingDistance 
]

{ #category : #initialization }
HammingDistanceCalculator >> hammingDistance: integer [
	hammingDistance := integer
]

{ #category : #initialization }
HammingDistanceCalculator >> initialize [
	hammingDistance := 0.
	
]
