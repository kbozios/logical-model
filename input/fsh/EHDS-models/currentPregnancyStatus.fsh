Logical: EHDSCurrentPregnancyStatus
Parent: EHDSDataSet
Title: "Current pregnancy status model"
Description: "EHDSCurrentPregnancyStatus means a structured set of data elements describing a patient's pregnancy status at a given point in time."

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
    * ^binding.strength = #required

* currentPregnancyStatus 1..1 CodeableConcept "Pregnancy status of the patient, e.g. pregnant, not pregnant, possible pregnancy."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #required
* dateOfStatus 0..1 dateTime "Effective date of the current pregnancy status."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* expectedDateOfDelivery 0..1 date "Date in which the woman is due to give birth. Year, day and month are required."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* gestationalAge 0..1 Quantity "Duration of the pregnancy (weeks and/or days) at the time of the observation."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "UCUM"
  * ^binding.strength = #required
* note 0..1 string "Free text notes by the health professional."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
