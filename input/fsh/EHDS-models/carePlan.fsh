Logical: EHDSCarePlan
Parent: EHDSDataSet
Title: "Care plan model"
Description: "Simplified model for care plan. The model includes minimal information and is not designed to cover the full functionality of care plans. The model is applicable to different domains."

* header.identifier 
  * ^short = "Identifier for the care plan"
  * ^definition = "Identifier for the care plan"
* header.subject 
  * ^short = "The patient whose intended care is described in the plan."
  * ^definition = "The patient whose intended care is described in the plan."
* header.author[x]
  * ^short = "The responsible party (custodian) for the care plan."
  * ^definition = "The responsible party (custodian) for the care plan."
* header.status 
//  * ^short = "Indicates whether the plan is currently being acted upon, represents future intentions, or is now a historical record."
  * ^definition = "Indicates whether the plan is currently being acted upon, represents future intentions, or is now a historical record."
  * ^binding.description = "HL7 Request Status"
  * ^binding.strength = #preferred
* title 0..1 string "Human-friendly name for the care plan"
* description 0..1 string "A description of the scope and nature of the plan."
* period 0..1 Period "Indicates when the plan did (or is intended to) come into effect and end."
* addresses[x] 0..* CodeableConcept or EHDSCondition "Conditions/problems/concerns/diagnoses/etc whose management and/or mitigation are handled by this plan."
  * ^binding.description = "ICD-10, SNOMED CT, Orphacode"
  * ^binding.strength = #preferred
* activity 0..* string "The details of the proposed activity represented in a specific resource."
* goal 0..* string "Describes the intended objective(s) of carrying out the care plan."

// TODO activity and goal as a backbone? status has been asked to be removed, but mandatory in FHIR