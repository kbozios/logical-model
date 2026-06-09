Logical: EHDSMedicationAdministration
Parent: EHDSDataSet
Title: "Medication administration model"
Description: "EHDSMedicationAdministration means a structured set of data elements describing a single instance of the administration of a medicinal product in the context of an imaging or laboratory procedure."
Characteristics: #can-be-target

* header // Obligations derived from EHDSDataSet
  * identifier
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * author[x]
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^definition = "Responsible person for recording the administration (this may be the performer)."
  * date
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * status 
    * ^binding.description = "HL7 MedicationAdministration Status Codes"
    * ^binding.strength = #required
    * ^definition = "Status of the administration (e.g. completed, on-hold)."

* medication 1..1 EHDSMedication "Administered medication."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
* occurrence[x] 1..1 dateTime or Period "Specific date/time or interval of time during which the administration took place (or did not take place)."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
* reason[x] 0..* CodeableConcept or EHDSCondition or EHDSObservation "Condition or observation that supports why the medication was administered."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED CT (preferred), ICD-10, Orphacode"
  * ^binding.strength = #required
* dosage 0..1 EHDSAdministeredDosage "Details of how medication was taken/administered."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* note 0..1 string "Textual information about the administration."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
