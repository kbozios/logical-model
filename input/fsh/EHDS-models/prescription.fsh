Logical: EHDSMedicationPrescription
Title: "Medication prescription model"
Parent: EHDSDataSet
Description: "Logical model for medication prescription. A prescription contains one or more prescription items (medications)."

* header 
  * ^short = "Prescription header" 
  * ^definition = """Prescription header"""
  * subject 
    * ^short = "The person for whom the medicinal product is prescribed/ordered."
    * ^definition = "The person for whom the medicinal product is prescribed/ordered."  
  * identifier 1..*
    * ^short = "Business identifier(s) for the prescription."
    * ^definition = "Business identifier(s) for the prescription."  
  * author[x] 1..*
//    * ^short = "The prescriber, the person who made the prescription, and who takes the responsibility for the treatment."
    * ^definition = "The prescriber, the person who made the prescription, and who takes the responsibility for the treatment."
  * author[x] only EHDSHealthProfessional or EHDSOrganisation 
  * date 1..1
    * ^short = "Time of issuing (signing) the prescription by health care professional."
    * ^definition = "Time of issuing (signing) the prescription by health care professional."  
  * status 
    * ^short = "Status of authorisation for dispensing the prescription items. This should not be the status of treatment. For a multiple-item prescription, this conveys the aggregate status of the entire prescription. In case of a single-item prescription, prescriptionItem.status shall be the same as EHDSMedicationPrescription.header.status."
    * ^definition = "Status of authorisation for dispensing the prescription items. For a multiple-item prescription, this conveys the aggregate status of the entire prescription. In case of a single-item prescription, prescriptionItem.status shall be the same as EHDSMedicationPrescription.header.status."
    * ^binding.description = "HL7 Medication Request Status"
    * ^binding.strength = #preferred
//  * source 0..0
  * statusReason[x] 0..1 CodeableConcept or string "Reason for the current status of prescription, for example the reason why the prescription was cancelled or changed from a previous state."
    * ^binding.description = "HL7 Medication Request Status Reason Codes"
    * ^binding.strength = #preferred
// TODO this is example binding in FHIR

* presentedForm 0..* EHDSAttachment "A narrative easy-to-read representation of the full data set, e.g. PDF-version of a document."

* prescriptionItem 1..* Base "Prescription line for one medication. In case multiple medications are prescribed on one prescription, all items need to be authored together."
  * identifier 1..* Identifier "Identifier for a single item on the prescription. In case of a single-item prescription, this identifier is typically the same as prescription identifier."
//  * category 0..* CodeableConcept "Category or categories of prescription. For example type of reimbursement, or type of prescription (e.g. hospital, private, etc)."
  * status 1..1 CodeableConcept "Status of a single item on prescription. In case of a single-item prescription, the status of the prescription has the same meaning as the status of the item."
    * ^binding.description = "HL7 Medication Request Status"
    * ^binding.strength = #preferred
  * statusReason[x] 0..1 CodeableConcept or string "Reason for the current status of prescription, for example the reason why the prescription was cancelled or why the prescription was changed from previous."
    * ^binding.description = "HL7 Medication Request Status Reason Codes"
    * ^binding.strength = #preferred
// TODO this is example binding in FHIR

  * medication 1..1 EHDSMedication "Prescribed medicinal product." "Prescribed medicinal product, which could be branded, generic, virtual, extemporal, etc."
  * indication[x] 0..* CodeableConcept or string "Reason for the prescription (typically diagnosis, or a procedure)."
    * ^binding.description = "ICD-10, SNOMED CT, Orphacode"
    * ^binding.strength = #preferred
  * intendedUseType 0..1 CodeableConcept "Intent of the prescription - prophylaxis, treatment, anesthesia, etc."
  * periodOfUse 0..1 Period "Period over which the medication is to be taken (in case of multiple dosage schemes, this shall be the overall period of all dosages)."
  * quantityPrescribed 0..1 Quantity "Overall quantity of prescribed product (e.g number of packages or number of tablets)."
    * ^binding.description = "UCUM, EDQM Standard Terms"
    * ^binding.strength = #preferred
  * dosageInstructions 1..1 EHDSDosage "Dosage and administration instructions."
  * validityPeriod 0..1 Period "The period over which the prescription is considered valid and dispensable. validityPeriod.start is, if missing, assumed to be the date of issuing the prescription."
  * substitution 0..1 Base "Whether and which type of substitution is allowed for this prescription. The legislation in the country of dispense applies."
    * allowed[x] 0..1 boolean or CodeableConcept "Whether and to what extent substitution is allowed."
      * ^binding.description = "SNOMED CT"
      * ^binding.strength = #preferred
    * reason[x] 0..1 CodeableConcept or string "Reason for the substitution requirement (e.g. Biological product, Patient allergic to an excipient in alternative products, etc)."
      * ^binding.description = "HL7 Substance Admin Substitution"
      * ^binding.strength = #preferred
    // TODO this is example binding in FHIR

  * numberOfRepeats 0..1 integer "Number of refills authorised - how many times the prescription item can be dispensed in addition to the original dispense. The default value is 0 (no repeats)."
  * minimumDispenseInterval 0..1 Quantity "Minimum dispense interval. If a prescription allows for repeated dispensations, the interval between dispensations shall be stated here."
  * offLabel 0..1 Base "Indicates that the prescriber has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the product information of the medicinal product." 
    * isOffLabelUse 1..1 boolean "Indicates off-label use. Must be 'true' when .reason is provided."
    * reason 0..1 string "Reason or related clarification for off-label use."
  //  * reason[x] 0..* CodeableConcept or string "Reason or related clarification for off-label use"
  * note 0..1 string "Additional information or comments, e.g. message to the dispenser."
