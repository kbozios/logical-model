Logical: EHDSPatient
Title: "Patient model"
Description: """Model for information about a patient (subject of care)."""

* identifier 1..* Identifier "An identifier of the patient that is unique within a defined scope (typically a national patient identifier, but it can also be a temporary identifier issued by the EHR)."
//TODO the additions regarding Identifier.type are not included, no code system for the proposed bindings.
* name 0..* EHDSHumanName "Name associated with the patient."
* dateOfBirth 0..1 dateTime "Date of birth." 
* deceased[x] 0..1 boolean or dateTime "Indicator stating whether the patient is deceased or date of death."
* administrativeGender 1..1 CodeableConcept "The gender that the patient is considered to have for administration and record keeping purposes."
  * ^binding.description = "HL7 Administrative Gender"
  * ^binding.strength = #preferred
* gender 0..1 CodeableConcept "The gender as declared by the patient."
* sexForClinicalUse 0..1 CodeableConcept "A summary parameter that provides guidance on how a receiver should apply settings or reference ranges that are derived from observable information such as an organ inventory, recent hormone lab tests, genetic testing, menstrual status, obstetric history, etc."
  * ^binding.description = "HL7 Administrative Gender" //TODO wouldn't it be better to use HL7 Sex for Clinical Use?
  * ^binding.strength = #preferred
* address 0..* EHDSAddress "Address of the patient."
* telecom 0..* EHDSTelecom "Contact information."
* countryOfAffiliation 1..* CodeableConcept "Country of affiliation"
  * ^binding.description =  "ISO 3166-1 alpha-2"
  * ^binding.strength = #preferred