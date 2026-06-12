Logical: EHDSOrganisation
Title: "Organisation model"
Description: "EHDSOrganisation means a structured set of data elements describing an organisation."

* identifier 0..* Identifier "Organisation identifier."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* type 0..* CodeableConcept "Kind of organisation."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "HL7 Organisation Type"
  * ^binding.strength = #required
* name 0..1 string "Organisation name."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* address 0..* EHDSAddress "Mailing or office address."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* telecom 0..* EHDSTelecom "Telecommunication contact information (address) associated with the organisation, such as phone number, email, or messaging service."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* partOf 0..1 EHDSOrganisation "The organisation of which this organisation forms a part."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
