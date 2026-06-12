Logical: EHDSLocation
//Id: EHDSlocation
Title: "Location model"
Description: "EHDSLocation means a structured set of data elements describing a place where health services are provided or resources and participants are accommodated."


* identifier 0..* Identifier "Location identifier."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* name 0..1 string "Human-readable name of the location."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* description 0..1 string "Additional details about the location that could be displayed as further information to identify the location beyond its name."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* address 0..1 EHDSAddress "Physical location address."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* managingOrganisation 0..1 EHDSOrganisation "The organisation responsible for the provisioning and upkeep of the location."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)

