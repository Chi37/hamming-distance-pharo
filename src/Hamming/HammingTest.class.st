Class {
	#name : #HammingTest,
	#superclass : #TestCase,
	#category : #Hamming
}

{ #category : #tests }
HammingTest >> testRaiseStringLenError [
	| string1 string2 |
	string1 := 'abd'.
	string2 := 'asbs'.
	self
		should: string1 size = string2 size
		raise: (Error error signal: 'inputs need to be the same length')

	"string1 size = string2 size
		ifFalse: [ Transcript show: 'string sizes aren''t the same' ]."
]
