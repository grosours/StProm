"
I represent a metric descriptor for Prometheus

I allow Prometheus clients to name and tag its metrics / Collectors.
I make sure that the descriptions are valid
I implement equality between Desc

"
Class {
	#name : #PromDesc,
	#superclass : #Object,
	#instVars : [
		'name',
		'subsystem',
		'namespace'
	],
	#category : #Prometheus
}

{ #category : #testing }
PromDesc class >> isValidComponent: aComponent [

	^ aComponent isNotNil and: [ aComponent isNotEmpty ]
]

{ #category : #internal }
PromDesc >> fullyQualifiedName [

	(name isNil or: [ name isEmpty ]) ifTrue: [ ^ '' ].
	^ ({
		   namespace.
		   subsystem.
		   name } select: [ :each | self class isValidComponent: each ])
		  joinUsing: '_'
]

{ #category : #accessing }
PromDesc >> name [

	^ name
]

{ #category : #accessing }
PromDesc >> name: anObject [

	name := anObject
]

{ #category : #accessing }
PromDesc >> namespace [

	^ namespace
]

{ #category : #accessing }
PromDesc >> namespace: anObject [

	namespace := anObject
]

{ #category : #accessing }
PromDesc >> subsystem [

	^ subsystem
]

{ #category : #accessing }
PromDesc >> subsystem: anObject [

	subsystem := anObject
]
