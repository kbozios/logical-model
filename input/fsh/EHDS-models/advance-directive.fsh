Logical: EHDSAdvanceDirective
Parent: EHDSDataSet
Title: "Advance directive model"
Description: """TO BE REMOVED. Healthcare directives concerning life or after life wishes of the patient"""

//TODO Additional authors
* header
//  * author[x] ^short = "Author of the advance directive."
  * author[x] ^definition = "Author of the advance directive."
* status
  * ^binding.description = "HL7 Consent State"
  * ^binding.strength = #preferred
* patientInsertedData 0..1 boolean "Indicator that states, when included with value ‘true’, that the contents of this resource represent information inserted by the natural person or their representative. In this case, the contents shall not be considered as verified by a health professional or a healthcare provider, even if digitally signed by them as part of a bigger data set. Details of the person who inserted the information may be provided in the author[x] element."
* category 0..* CodeableConcept "Categories of directives related to decisions prior and after death, such as life support, resuscitation or organ donation."
  * ^requirements = "ISO IPS"
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* note 0..1 string "Textual description of the directive."
  * ^requirements = "eHN PS and HDR Guidelines, MyHealth@EU, ISO IPS"
* attachment 0..1 EHDSAttachment "Source document, such as a PDF, with the living will and the patient's signature."
  * ^requirements = "eHN HDR Guideline, ISO IPS"