Logical: EHDSHumanName
Title: "Human name model"
Description: "EHDSHumanName means a structured set of data elements describing the name of a person."

* use 0..1 CodeableConcept "The purpose of this name."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "HL7 Name Use"
  * ^binding.strength = #required
* text 0..1 string "The entire name as it should be displayed e.g. on an application UI."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* family 0..* string "The family name/surname/last name."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* given 0..* string "The given name/first name."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* prefix 0..* string "Name part that appears at the start of the name. Prefixes shall appear in the correct order for presenting the name."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* suffix 0..* string "Name part that appears at the end of the name. Suffixes shall appear in the correct order for presenting the name."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
