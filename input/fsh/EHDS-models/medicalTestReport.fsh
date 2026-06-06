Logical: EHDSMedicalTestResultAndReport
Title: "Medical test result and report model"
Parent: EHDSDocument
Description: """Medical test result and report model."""
Characteristics: #can-be-target

* header //Obligations inherited from EHDSDocument
  * eventCategory 
    * ^binding.description = "LOINC (preferred), SNOMED CT"
    * ^binding.strength = #preferred
    * ^short = "Categorisation of the event covered by the document (e.g. medical study types etc.). Selection of such tags or labels depends on the use case and agreement between data sharing parties. This meta-data element serves primarily for searching and filtering purposes."
    * ^definition = "Categorisation of the event covered by the document (e.g. medical study types etc.). Selection of such tags or labels depends on the use case and agreement between data sharing parties. This meta-data element serves primarily for searching and filtering purposes."
  * intendedRecipient[x] 0..* EHDSPatient or EHDSRelatedPerson or EHDSHealthProfessional or EHDSOrganisation "Information recipient of the information, i.e. a person or organisation that should be notified or be aware of the content. This element is used to indicate explicit communication intent and does not represent routine storage or passive availability of information (e.g. in portals). "
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
* body 0..1 Base "Medical test result and report structured body."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * orderInformation 0..* Base "Order Information (Laboratory Result Report could respond to multiple test orders)."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
    * orderId 1..* Identifier "An identifier of the laboratory test order. Laboratory Result Report may respond to multiple orders."
      * insert Full(#SHALL)
      * insert Basic(#SHALL)
    * orderDateAndTime 0..1 dateTime "Date and time of the order placement."
      * insert Full(#SHALL)
      * insert Basic(#SHOULD)
    * orderPlacer[x] 0..1 EHDSHealthProfessional or EHDSOrganisation or EHDSPatient "The person/organisation \"authorised\" to place the order. Order placer could be either a health professional, health professional organisation or the patient himself."
      * insert Full(#SHALL)
      * insert Basic(#SHOULD)
    * orderReason[x] 0..* CodeableConcept or EHDSCondition or  EHDSObservation or string "An explanation or justification for why this service is being requested in coded form."
      * insert Full(#SHALL)
      * insert Basic(#SHALL)
      * ^binding.description = "SNOMED CT (preferred), ICD-10"
      * ^binding.strength = #preferred
    * clinicalQuestion 0..1 string "Specification of clinical question (goal of the investigation) to be answered by the laboratory investigation."
      * insert Full(#SHALL)
      * insert Basic(#SHALL)
  * supportingInformation 0..1 Base "Additional clinical information about the patient or specimen that may influence the services or their interpretations. This information includes diagnosis, clinical findings and other observations. In laboratory ordering these are typically referred to as 'ask at order entry questions (AOEs).' This includes observations explicitly requested by the producer (filler) to provide context or supporting information needed to complete the order. For example, reporting the amount of inspired oxygen for blood gas measurements."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * observation 0..* EHDSObservation "Clinical findings and other observations."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD) 
    * condition 0..* EHDSCondition "Condition that may influence the service or result interpretation."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD)
    * medicationAdministration 0..* EHDSMedicationAdministration "Medication administered before ordering the service that may influence the service or result interpretation."
      * insert Full(#SHALL)
      * insert Basic(#SHALL)
    * immunisation 0..* EHDSImmunisation "Immunisation history that may influence the service or result interpretation."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD)
    * otherSupportingInformation 0..* Resource "Any other type of relevant supporting information."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD) 
  * specimen 0..* EHDSSpecimen "Specimen information."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
//  * serviceRequest 0..* EHDSServiceRequest "Specification of requested service or services."
  * resultData 1..1 Base "Medical test result data."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
    * comment 0..1 Narrative "Narrative, potentially formatted, such as a textual interpretation or advice accompanying the result report."
      * insert Full(#SHALL)
      * insert Basic(#SHOULD)
    * medicalTestResult[x] 0..* EHDSObservation or EHDSLaboratoryObservation "Observation details. The content of this element is expected to be the main result data of the report, such as blood glucose level, haemoglobin value, etc. In some cases, it may also include other types of observations that are relevant for the interpretation of the results, such as blood pressure or body temperature at the time of specimen collection."
      * insert Full(#SHALL)
      * insert Basic(#SHOULD)
* attachments 0..* EHDSAttachment "Report attachments."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)

