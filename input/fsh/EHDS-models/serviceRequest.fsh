Logical: EHDSServiceRequest
Parent: EHDSDataSet
Title: "Service request model"
Description: "EHDSServiceRequest means a structured set of data elements describing one or more requested services."

* header // Obligations derived from EHDSDataSet
  * identifier
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * author[x]
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * date
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * status
    * ^binding.description = "HL7 Request Status"
    * ^binding.strength = #required
* description 0..1 string "Textual description of the requested service."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* code 0..1 CodeableConcept "A code and name that identifies a particular service (i.e., procedure, diagnostic investigation, or panel of investigations) that has been requested."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "LOINC, SNOMED CT"
  * ^binding.strength = #required
* quantity 0..1 Quantity "Number of requested services of the same type."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* bodySite 0..* EHDSBodyStructure "Anatomic location and laterality where the procedure should be performed. This is the target site."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* reason[x] 0..* EHDSObservation or EHDSCondition or EHDSMedication or string "Reason why this service is being requested."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* priority 0..1 CodeableConcept "Indicates how quickly the request should be addressed with respect to other requests."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)  
  * ^binding.description = "HL7 Request Priority"
  * ^binding.strength = #required
* supportingInformation[x] 0..* EHDSObservation or EHDSCondition or EHDSProcedure or EHDSMedicationAdministration "Health conditions relevant for the results interpretation."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* specimen 0..* EHDSSpecimen "Specimen to be used by the laboratory procedure."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* encounter 0..1 EHDSEncounter "The encounter that provides additional information about the healthcare context in which this request is made."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* occurrence[x] 0..1 dateTime or Period "Expected time of the service."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* patientInstructions 0..1 string "Patient or consumer-oriented instructions."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)

