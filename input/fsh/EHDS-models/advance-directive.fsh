Logical: EHDSAdvanceDirective
Parent: EHDSDataSet
Title: "Advance directive model."
Description: "EHDSAdvanceDirective means a documented expression of a patient's wishes, preferences or instructions regarding their healthcare, including, but not limited to, decisions concerning life-sustaining treatment or arrangements to take effect after death."

* header // Obligations derived from EHDSDataSet. TODO subject Basic-level obligation is SHOULD in this table but SHALL in EHDSDataSet.
  * author[x] ^definition = "Author of the advance directive."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * status
    * ^binding.description = "HL7 Consent State"
    * ^binding.strength = #required
  * identifier
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^short = "Business identifier for the object, unique within its system. Supporting disambiguation between different contexts (systems/countries)."
    * ^definition = "Business identifier for the object, unique within its system. Supporting disambiguation between different contexts (systems/countries)."
  * date
    * insert Full(#SHALL)
    * insert Basic(#SHALL) 
// TODO patientInsertedData has Basic-SHOULD here, but SHALL in DataSet
* category 0..* CodeableConcept "Categories of directives related to decisions prior and after death, such as life support, resuscitation or organ donation."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED GPS"
  * ^binding.strength = #required
* directiveType 0..* CodeableConcept "The type of advance directive, indicating whether it applies before or after death."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED GPS"
  * ^binding.strength = #required
* note 0..1 string "Textual description of the directive."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD) 
* attachment 0..1 EHDSAttachment "Source document, such as a PDF, with the living will and the patient's signature."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)