Logical: EHDSRelatedPerson
Title: "Related person model"
Description: "EHDSRelatedPerson means a structured set of data elements describing a person related to the patient, such as a guardian, next of kin, or other related person."

* identifier 0..* Identifier "A stable identifier of the patient that is unique within a defined scope, the use of temporary generated identifiers is not permitted. In addition to the mandatory attributes listed below, other attributes compliant with the HL7 FHIR Identifier structure may be included."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * type 1..1 
    * ^short = "Description of the identifier."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
  * ^binding.description = "HL7 Identifier Type, extended with the following: NI (national unique identifier), HI (health identifier), HIN (health insurance number), SS (social security identifier), REGPID (regional person identifier), REGION (region identifier)"
  * ^binding.strength = #required
  * value 1..1 
    * ^short = "The value that is unique."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
  * system 1..1 
    * ^short = "The namespace for the Identifier.value."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
* name 1..* EHDSHumanName "Name associated with the person."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
* subject 1..1 EHDSPatient "The patient in relation to whom the related person is defined."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
* relationship 0..1 CodeableConcept "Relationship between a patient and a contact person for that patient. This includes relatives, guardians, caring persons etc."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)  
  * ^binding.description = "HL7 Patient Relationship Type"
  * ^binding.strength = #required
* address 0..* EHDSAddress "Address of the person."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* telecom 0..* EHDSTelecom "Telecommunication contact information of the person."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
