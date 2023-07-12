Class {
	#name : #BaselineOfPrometheus,
	#superclass : #BaselineOf,
	#category : #BaselineOfPrometheus
}

{ #category : #baselines }
BaselineOfPrometheus >> baseline: spec [
	<baseline>
	spec for: #common do: [ 
		spec package: 'Prometheus';
		package: 'Prometheus-Tests' with: [ spec requires: #('Prometheus') ] ]
]
