Logical: EHDSHumanName
Title: "Human name model"
Description: """Model for human name"""

* use 0..1 CodeableConcept "The purpose of this name."
  * ^binding.description = "HL7 Name Use"
  * ^binding.strength = #preferred
* text 0..1 string "The entire name as it should be displayed e.g. on an application UI."
* family 0..* string "The family name/surname/last name."
* given 0..* string "The given name/first name."
* prefix 0..* string "Name part that appears at the start of the name. Prefixes shall appear in the correct order for presenting the name."
* suffix 0..* string "Name part that appears at the end of the name. Suffixes shall appear in the correct order for presenting the name."
