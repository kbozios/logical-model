Logical: EHDSDeviceUse
Parent: EHDSDataSet
Title: "Device use model"
Description: "EHDSDeviceUse means a structured set of data elements describing the use of a medical device."

* header
  * identifier
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * author[x]
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^definition = "The author of the device usage statement."
  * date
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * status 
    * ^binding.description = "HL7 Device Use Statement Status"
    * ^binding.strength = #required
    * ^short = "Current status of the device usage (e.g. active, completed, etc)."
    * ^definition = "Current status of the device usage (e.g. active, completed, etc)."
// TODO Note that R5 and R6 have a different binding

* periodOfUse 0..1 Period "The period of time during which the device was implanted in the patient or the external device was in use."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* device[x] 1..1 CodeableConcept or EHDSDevice "The details of the device used."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * ^binding.description = "SNOMED CT (preferred), EMDN"
  * ^binding.strength = #required
* bodySite 0..1 EHDSBodyStructure "Anatomical location of the device. May include laterality."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* reason[x] 0..* CodeableConcept or EHDSCondition or EHDSObservation or EHDSProcedure "Reason or justification for the use of the device."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED CT (preferred), ICD-10, Orphacode"
  * ^binding.strength = #required
* note 0..1 string "Free text notes by the health professional."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)


