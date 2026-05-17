Logical: EHDSMedicationAdministration
Parent: EHDSDataSet
Title: "Medication administration model"
Description: "The model covers details about single medication administrations within the scope of imaging and laboratory procedures."
Characteristics: #can-be-target


* header.status ^definition = "Status of the administration (e.g. completed, on-hold)."
  * ^binding.description = "HL7 MedicationAdministration Status Codes"
  * ^binding.strength = #preferred
* header.author[x] ^definition = "Responsible person for recording the administration (this may be the performer)."
* medication 1..1 EHDSMedication "Administered medication."
* occurrence[x] 1..1 dateTime or Period "Specific date/time or interval of time during which the administration took place (or did not take place)."
* reason[x] 0..* CodeableConcept or EHDSCondition or EHDSObservation "Condition or observation that supports why the medication was administered."
  * ^binding.description = "ICD-10, SNOMED CT, Orphacode"
  * ^binding.strength = #preferred
//TODO ICD-10 was removed and then added back, but not here. Check if it should be included or not.
* dosage 0..1 EHDSAdministeredDosage "Details of how medication was taken/administered."
* note 0..1 string "Textual information about the administration."
