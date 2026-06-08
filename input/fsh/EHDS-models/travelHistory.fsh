Logical: EHDSTravelHistory
Parent: EHDSDataSet
Title: "Travel history model"
Description: "Relevant information about the patient's recent travel history, for one visit."

* header // Obligations derived from EHDSDataSet
  * identifier
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * author[x]
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * date
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
* country 1..1 CodeableConcept "Country visited."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * ^binding.description = "ISO 3166"
  * ^binding.strength = #preferred
  * ^requirements = "eHN PS Guideline"
* period 0..1 Period "The period during which the patient visited the country."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
