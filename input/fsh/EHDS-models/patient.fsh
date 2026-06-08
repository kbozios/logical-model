Logical: EHDSPatient
Title: "Patient model"
Description: """Model for information about a patient (subject of care)."""

* identifier 1..* Identifier "A stable identifier of the patient that is unique within a defined scope, the use of temporary generated identifiers is not permitted. In addition to the mandatory attributes listed below, other attributes compliant with the HL7 FHIR Identifier structure may be included."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * type 1..1 
    * ^short = "Description of the identifier."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
  * ^binding.description = "HL7 Identifier Type, extended with the following: NI (national unique identifier), HI (health identifier), HIN (health insurance number), SS (social security identifier), REGPID (regional person identifier), REGION (region identifier)"
  * ^binding.strength = #preferred
  * value 1..1 
    * ^short = "The value that is unique."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
  * system 1..1 
    * ^short = "The namespace for the Identifier.value."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
* name 1..* EHDSHumanName "Name associated with the patient."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
* dateOfBirth 0..1 dateTime "Date of birth." 
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
* deceased[x] 0..1 boolean or dateTime "Indicator stating whether the patient is deceased or date and optionally time of death."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* administrativeGender 1..1 CodeableConcept "The gender that the patient is considered to have for administration and record keeping purposes."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * ^binding.description = "HL7 Administrative Gender"
  * ^binding.strength = #preferred
* genderIdentity 0..1 CodeableConcept "The gender as declared by the patient."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* sexForClinicalUse 0..1 CodeableConcept "A summary parameter that provides guidance on how a receiver should apply settings or reference ranges that are derived from observable information such as an organ inventory, recent hormone lab tests, genetic testing, menstrual status, obstetric history, etc."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
  * ^binding.description = "HL7 Sex Parameter for Clinical Use"
  * ^binding.strength = #preferred
* address 0..* EHDSAddress "Address of the patient."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* telecom 0..* EHDSTelecom "Contact information."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
//* countryOfAffiliation 1..* CodeableConcept "Country of affiliation"
//  * ^binding.description =  "ISO 3166-1 alpha-2"
//  * ^binding.strength = #preferred