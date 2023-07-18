"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestPrometheus,
	#superclass : #PackageManifest,
	#category : #'Prometheus-Manifest'
}

{ #category : #'code-critics' }
ManifestPrometheus class >> ruleSearchingLiteralRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#'PromDesc class' #isValidMetricName: #true)) #'2023-07-18T15:23:56.485682+02:00') )
]

{ #category : #'code-critics' }
ManifestPrometheus class >> ruleUnoptimizedAndOrRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#'PromDesc class' #isValidMetricName: #true)) #'2023-07-18T15:23:48.398516+02:00') )
]
