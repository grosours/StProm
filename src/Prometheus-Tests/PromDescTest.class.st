Class {
	#name : #PromDescTest,
	#superclass : #TestCase,
	#category : #'Prometheus-Tests'
}

{ #category : #tests }
PromDescTest >> testFullyQualifiedName [

	| cases |
	cases := Dictionary new
		         at: PromDesc new put: '';
		         at: (PromDesc new name: '') put: '';
		         at: (PromDesc new
				          name: 'a';
				          subsystem: '')
		         put: 'a';
		         at: (PromDesc new
				          name: 'a';
				          namespace: '')
		         put: 'a';
		         at: (PromDesc new name: 'a') put: 'a';
		         at: (PromDesc new
				          name: 'a';
				          subsystem: 'b')
		         put: 'b_a';
		         at: (PromDesc new subsystem: 'a') put: '';
		         at: (PromDesc new namespace: 'a') put: '';
		         at: (PromDesc new
				          namespace: 'a';
				          subsystem: 'b';
				          name: 'c')
		         put: 'a_b_c';
		         yourself.

	cases keysAndValuesDo: [ :k :v |
		self assert: k fullyQualifiedName equals: v ]
]

{ #category : #tests }
PromDescTest >> testIsValidMetricName [

	| cases |
	cases := Dictionary new
		         at: 'Avalid_23name' put: true;
		         at: '_Avalid_23name' put: true;
		         at: '1valid_23name' put: false;
		         at: 'avalid_23name' put: true;
		         at: 'Ava:lid_23name' put: true;
		         at: 'a lid_23name' put: false;
		         at: ':leading_colon' put: true;
		         at: 'colon:in:the:middle' put: true;
		         at: '' put: false;
		         yourself.
	cases keysAndValuesDo: [ :name :isValid |
		self assert: (PromDesc isValidMetricName: name) equals: isValid ]
]

{ #category : #tests }
PromDescTest >> testName [

	| desc |
	desc := PromDesc new name: 'aString'.
	self assert: desc name equals: 'aString'
]

{ #category : #tests }
PromDescTest >> testNamespace [

	| desc |
	desc := PromDesc new namespace: 'aString'.
	self assert: desc namespace equals: 'aString'
]

{ #category : #tests }
PromDescTest >> testSubsystem [

	| desc |
	desc := PromDesc new subsystem: 'aString'.
	self assert: desc subsystem equals: 'aString'
]
