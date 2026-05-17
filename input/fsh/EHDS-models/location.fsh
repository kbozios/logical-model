Logical: EHDSLocation
//Id: EHDSlocation
Title: "Location model"
Description: """Model for details and position information for a place where services are provided and resources and participants may be stored, found, contained, or accommodated."""

//TODO
* identifier 0..* Identifier "Location identifier"
* name 0..1 string "Human-readable name of the location."
* description 0..1 string "Additional details about the location that could be displayed as further information to identify the location beyond its name."
//* type 0..* CodeableConcept "Type of function performed at the location"
//  * ^binding.description = "HL7 ServiceDeliveryLocationRoleType"
//  * ^binding.strength = #preferred
* address 0..1 EHDSAddress "Physical location address."
* managingOrganisation 0..1 EHDSOrganisation "The organisation responsible for the provisioning and upkeep of the location"
* partOf 0..1 EHDSOrganisation "Another location of which this location is physically a part of."
//TODO can't understand if it's deleted or not
