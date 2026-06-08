Logical: EHDSPregnancyHistory
Parent: EHDSDataSet
Title: "Pregnancy history model"
Description: "EHDSPregnancyHistory means a structured set of data elements describing a single past pregnancy."

* header // Obligations derived from EHDSDataSet
  * identifier
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * author[x]
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^definition = "The author of this observation."
  * date
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * status 
    * ^short = "Status of this observation."
    * ^definition = "Status of this observation."
    * ^binding.description = "HL7 Observation Status"
    * ^binding.strength = #preferred

* endDate 0..1 dateTime "The end date of the pregnancy."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD) 
* outcome 0..1 CodeableConcept "The outcome of the pregnancy."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* note 0..1 string "Free text notes by the health professional."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)