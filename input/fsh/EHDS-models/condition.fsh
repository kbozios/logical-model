Logical: EHDSCondition
Parent: EHDSDataSet
Title: "Condition model"
Description: "EHDSCondition means a structured set of data elements describing a clinical condition, problem, or diagnosis."


* header // Obligations derived from EHDSDataSet
  * identifier
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * author[x]
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^definition = "The author of the condition information."
  * date
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * status 
    * ^short = "Status of the condition/problem (e.g. active, resolved, inactive, etc)."
    * ^definition = "Status of the condition/problem (e.g. active, resolved, inactive, etc)."
    * ^binding.description = "HL7 Condition Clinical Status Codes"
    * ^binding.strength = #required

* code 1..1 CodeableConcept "Code identifying the condition, problem or diagnosis."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED CT (preferred), ICD-10, ICD-O, Orphacode"
  * ^binding.strength = #required
* onsetDate 0..1 dateTime "Estimated or actual date the problem/condition began."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* endDate 0..1 dateTime "The date or estimated date that the condition resolved or went into remission."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* category 0..* CodeableConcept "Category of the problem (e.g. POA - present on admission, HAC - hospital acquired condition, and other categorisations)."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #required
* resolutionCircumstances 0..1 string "Describes the reason for which the status of the problem changed from current to inactive (e.g. surgical procedure, medical treatment, etc.)."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* severity 0..1 CodeableConcept "A subjective assessment of the severity of the condition."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #required
* bodySite 0..* EHDSBodyStructure "The anatomical location including laterality where this condition manifests itself."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* stage 0..* CodeableConcept "Stage/grade usually assessed formally using a specific staging/grading system. Multiple assessment systems could be used."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "Not defined"
  * ^binding.strength = #required
* diagnosisAssertionStatus 0..1 CodeableConcept "Assertion about the certainty associated with a diagnosis. Diagnostic and/or clinical evidence of condition."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "HL7 Condition Verification Status"
  * ^binding.strength = #required
* specialistContact 0..* EHDSHealthProfessional "Health Professional who may be specifically related to the problem, as a preferred contact."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* externalResource 0..* uri "External resource which may be specifically related to the problem, for example a link to a guideline on a specific rare disease problem."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD) 
* note 0..1 string "Free text note by the health professional."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
