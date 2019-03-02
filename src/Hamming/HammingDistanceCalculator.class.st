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

{ #category : #operations }
HammingDistanceCalculator class >> calculateHD [
	self shouldBeImplemented.
]

{ #category : #initialization }
HammingDistanceCalculator >> calculateHDBetween: string1 and: string2 [
	| hd |
	stringOne := string1.
	stringTwo := string2.
	self checkStringsAreSameSize.
	hd := 0.
	1 to: stringOne size do: [ :i | 
		(stringOne at: i) = (stringTwo at: i)
			ifFalse: [ hd := hd + 1 ] ].
	hammingDistance := hd.
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
HammingDistanceCalculator >> initialize [
	hammingDistance := 0.
	
]
