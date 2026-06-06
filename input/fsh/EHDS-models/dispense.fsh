Logical: EHDSMedicationDispense
Title: "Medication dispense model"
Parent: EHDSDataSet
Description: "Logical model for medication dispensation (based on a request and dispensed in a pharmacy). Implementers should take into account, if allowed and needed, the calculation of remaining dispensable product based on this information."


// search: subject, author, status, author datetime, identifier, relatedRequest
* header //Obligation inherited from EHDSDataSet
  * ^short = "Dispensation header." 
  * ^definition = """Dispensation header."""
* header.subject //Obligation inherited from EHDSDataSet
  * ^short = "Patient/subject information."
  * ^definition = "The person for whom the medication is prescribed." 
* header.identifier 1..*
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * ^short = "Business identifier for the dispensation."
  * ^definition = "Business identifier(s) for the dispense record."
* header.author[x] 1..
  * insert Full(#SHALL)
  * insert Basic(#SHOULD) // TODO SHOULD on mandatory element
* header.author[x] only EHDSHealthProfessional or EHDSOrganisation or EHDSDevice
  * ^short = "Author of the document."
  * ^definition = "The actor who issued the dispense record. Responsibility for the dispense should be traceable from this information."
* header.patientInsertedData 0..0
* header.date 1..1
  * insert Full(#SHALL)
  * insert Basic(#SHOULD) // TODO SHOULD on mandatory element
  * ^short = "Date and time of issuing the dispense record."
  * ^definition = "Date and time of issuing the dispense record."
* header.status // Obligation inherited from EHDSDataSet
  * ^short = "The status of the dispense, e.g. completed, declined, entered-in-error."
  * ^definition = "The status of the dispense, e.g. completed, declined, entered-in-error."
  * ^binding.description = "HL7 MedicationDispense Status Codes"
  * ^binding.strength = #preferred
// * header.source 0..0
* dispenseLocation 0..1 EHDSOrganisation "Location of dispense."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* receiver[x] 0..1 EHDSPatient or EHDSHealthProfessional or EHDSRelatedPerson "Identification of the person who received the dispensed medication, especially when it was not the patient. When not present, it is assumed that the patient is the receiver."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* relatedRequest 1..* Identifier "Identifier of the prescription item the dispense is related to. "
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
* medication 1..1 EHDSMedication "Exact dispensed product. If multiple medications are dispensed together, multiple dispense records should be created."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
* dispensedQuantity 1..1 Quantity "Number of dispensed packages if the package size is known, or number of smaller items/units, according to the medication dispensed. A unit shall be provided."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * ^binding.description = "UCUM (preferred), EDQM Standard Terms" //TODO in UCUM the only unit for this is "1", effectively meaning "something"
  * ^binding.strength = #preferred
//* timeOfDispensation 0..1 dateTime "Date and time when the medicinal product was handed over. When not present, the time of dispensation is assumed to be the time of issuing dispense record."
* substitutionOccurred 0..1 boolean "Whether substitution was made by the dispenser. Definition of substitution is specific to the jurisdiction."
* dosageInstructions 0..1 EHDSDosage "Dosage and administration instructions for the dispensed medicinal product. These instructions may deviate from the instructions included in the prescription."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* note 0..1 string "Additional information or comments."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)


