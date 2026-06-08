Logical: EHDSMedicationUse
Parent: EHDSDataSet
Title: "Medication use model"
Description: "EHDSMedicationUse means a structured set of data elements describing a use of a single medicinal product as part of a medication summary."

* header // Obligations derived from EHDSDataSet
  * identifier
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * author[x]
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^definition = "The author of the medication use statement."
  * date
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * status
    * ^short = "Status of the medication use statement (e.g. recorded)."
    * ^definition = "Status of the medication use statement (e.g. recorded)."
    * ^binding.description = "HL7 Medication Status Codes"
    * ^binding.strength = #preferred
    * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"

//* treatmentStatus 0..1 CodeableConcept "The current status of taking the medicine (e.g. taking, on-hold, stopped)."
//* changeType 0..* CodeableConcept "Medication use's change type in a medication summary (e.g. 'added', 'removed', 'altered'). Relevant at the time of discharge or other alteration of the active medications' list."
* medication 1..1 EHDSMedication "Describes the medicinal product."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
* reason[x] 0..* CodeableConcept or string "Reason for the use of the medication (typically diagnosis, or a procedure)."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED CT (preferred), ICD-10, Orphacode"
  * ^binding.strength = #preferred
* dosageInstructions 1..1 EHDSDosage "Details of how medication is/was taken or should be taken."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* dateAsserted 0..1 dateTime "Date and optionally time when the medication use statemenet was asserted."  //TODO This is the same as header.date - the descriptions don't allow differentiation.
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* periodOfUse 0..1 Period "Period when the patient took, is taking or is expected to take the medication."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* derivedFrom[x] 0..* EHDSMedicationPrescription or EHDSMedicationDispense or EHDSMedicationAdministration "Prescriptions, dispenses or administrations that are the basis of this medication use statement."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* note 0..1 string "Additional information about the medication use statement."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)

