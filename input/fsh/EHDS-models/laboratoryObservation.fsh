Logical: EHDSLaboratoryObservation
Parent: EHDSObservation
Title: "Laboratory observation model"
Description: """Model for observation performed by laboratory"""


/** type
  * ^binding.description = "SNOMED CT (preferred), LOINC, NPU"
  * ^binding.strength = #preferred
* component
  * code
    * ^binding.description = "SNOMED CT (preferred), LOINC, NPU"
    * ^binding.strength = #preferred
*/
* triggeredBy[x] 0..* EHDSLaboratoryObservation or EHDSObservation "References to the observation(s) that triggered the performance of this observation."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* testKit 0..1 EHDSDevice "Laboratory test kit used during measurement."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* calibrator 0..1 Identifier "Information about which reference material or calibrator of higher order the laboratory has been used for the measurement to indicate the metrological traceability chain."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* accreditationStatus 0..1 boolean "Accreditation status of the laboratory for the observation."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* previousResults 0..* EHDSLaboratoryObservation "Previous results of the same observation."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* pointOfCareTest 0..1 boolean "Examination performed near or at the site of a patient."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)