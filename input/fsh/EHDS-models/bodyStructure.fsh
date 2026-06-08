Logical: EHDSBodyStructure
//Id: EHDSbodyStructure
Title: "Body structure model"
Description: "EHDSBodyStructure means a structured set of data elements describing an anatomical structure of a patient."

* morphology 0..1 CodeableConcept "The kind of structure being represented by the body structure at BodyStructure.location. This can define both normal and abnormal morphologies."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* location 0..1 CodeableConcept "Body site"
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* locationQualifier 0..* CodeableConcept "Additional qualifier of the body structure (e.g. upper, lower, distal, proximal)."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* laterality 0..1 CodeableConcept "Body structure laterality (e.g. left, right)."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* description 0..1 string "Textual description of the body structure"
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)