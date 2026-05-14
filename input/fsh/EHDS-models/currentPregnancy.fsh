Logical: EHDSCurrentPregnancyStatus
Parent: EHDSDataSet
Title: "Current pregnancy status model"
Description: "Current pregnancy status"

* header.status 
  * ^short = "Status of this observation."
  * ^definition = "Status of this observation."

// TODO - check the description and binding
* header.author[x] 
//  * ^short = "Author of this observation"
  * ^definition = "Author of this observation."
* currentPregnancyStatus 1..1 CodeableConcept "Pregnancy status of the patient, e.g. pregnant, not pregnant, possible pregnancy."
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
  * ^requirements = "eHN PS Guideline, ISO IPS"
* dateOfStatus 0..1 dateTime "Effective date of the current pregnancy status."
  * ^requirements = "eHN PS Guideline, ISO IPS"
* expectedDateOfDelivery 0..1 date "Date in which the woman is due to give birth. Year, day and month are required."
  * ^requirements = "eHN PS Guideline, ISO IPS"
* gestationalAge 0..1 Quantity "Duration of the pregnancy at this day" "Gestational age - duration of the pregnancy on the day on which the patient was asked or at the delivery. The duration can be given in weeks and/or days."
  * ^binding.description = "UCUM"
  * ^binding.strength = #preferred
* note 0..1 string "Free text notes by the health professional."
  * ^requirements = "eHN PS Guideline, ISO IPS"
