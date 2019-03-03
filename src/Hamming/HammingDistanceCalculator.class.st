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

	stringOne := string1.
	stringTwo := string2.
	self checkStringsAreSameSize.
	self hammingDistance: 0.
	1 to: stringOne size do: [ :i | 
		(stringOne at: i) = (stringTwo at: i)
			ifFalse: [ hammingDistance := hammingDistance + 1 ] ].
	^ hammingDistance




	" ORIGINAL CODE:"
	"matchingChar := stringOne howManyMatch: stringTwo.
	hammingDist := stringOne size - matchingChar.
	hammingDistance := hammingDist.
	^ hammingDistance"
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
