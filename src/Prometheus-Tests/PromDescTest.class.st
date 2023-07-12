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
