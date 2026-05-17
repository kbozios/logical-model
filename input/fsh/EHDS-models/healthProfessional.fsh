Logical: EHDSHealthProfessional
//Id: EHDShealthProfessional
Title: "Health professional model"
Description: """Model for information about a health professional."""

* identifier 0..* Identifier "An identifier of the health professional that is unique within a defined scope. Example: National health professional ID. Multiple identifiers could be provided."
* name 0..1 EHDSHumanName "Name of the health professional."
* address 0..* EHDSAddress "Address of the health professional."
* telecom 0..* EHDSTelecom "Telecommunication contact information (address) associated with the health professional, such as phone number, email, or messaging service."
* professionalRole 0..* Base "Professional role that the health professional is practicing at a given organisation."
  * role 0..* CodeableConcept "Health professional role."
    * ^binding.description = "ISCO-08, SNOMED CT"
    * ^binding.strength = #preferred
  * organisation 0..1 EHDSOrganisation "The organisation where this role is available."
  * specialty 0..* CodeableConcept "The specialty of the health professional they are practicing in the given organisation."
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred