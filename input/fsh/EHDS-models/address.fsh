Logical: EHDSAddress
Title: "Address model"
Description: """EHDSAddress means the structured set of data elements identifying a geographical or postal location."""

* use 0..1 CodeableConcept "Purpose of the address. If this attribute is not present, the address is assumed to be the default address useful for any purpose."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "HL7 Address Use"
  * ^binding.strength = #preferred
* type 0..1 CodeableConcept "Distinguishes between physical addresses (those that can be visited) and mailing addresses. Most addresses are both."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "HL7 Address Type"
  * ^binding.strength = #preferred
* text 0..1 string "Text representation of the address."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* street 0..1 string "Name of the street."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* houseNumber 0..1 string "House number."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* postBox 0..1 string "Post box."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* city 0..1 string "City."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* postalCode 0..1 string "Postal code."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* country 0..1 CodeableConcept "Country name and country code."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
  * ^binding.description =  "ISO 3166-1 alpha-2"
  * ^binding.strength = #preferred
