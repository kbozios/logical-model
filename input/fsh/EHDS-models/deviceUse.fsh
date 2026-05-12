Logical: EHDSDeviceUse
Parent: EHDSDataSet
Title: "Device use model"
Description: """Model for information about the use of a device in the care of patient."""

* header.status 
  * ^short = "Current status of the device usage (e.g. active, completed, etc)."
  * ^definition = "Current status of the device usage (e.g. active, completed, etc)."
  * ^binding.description = "HL7 Device Use Statement Status"
  * ^binding.strength = #preferred
// TODO Note that R5 and R6 have a different binding

* header.author[x] 
//  * ^short = "The author of the device usage statement."
  * ^definition = "The author of the device usage statement."

* periodOfUse 0..1 Period "The period of time during which the device was implanted in the patient or the external device was in use."
  * ^requirements = "eHN PS Guideline, ISO IPS."
* device[x] 1..1 CodeableConcept or EHDSDevice "The details of the device used."
  * ^requirements = "eHN PS Guideline, ISO IPS."
  * ^binding.description = "SNOMED CT, EMDN"
  * ^binding.strength = #preferred

* bodySite 0..1 EHDSBodyStructure "Anatomical location of the device. May include laterality."
  * ^requirements = "eHN PS Guideline, ISO IPS."
* reason[x] 0..* CodeableConcept or EHDSCondition or EHDSObservation or EHDSProcedure "Reason or justification for the use of the device."
  * ^requirements = "eHN PS Guideline, ISO IPS."
  * ^binding.description = "ICD-10, SNOMED CT, Orphacode"
  * ^binding.strength = #preferred
* note 0..1 string "Free text notes by the health professional."


