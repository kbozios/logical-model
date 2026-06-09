Logical: EHDSCarePlan
Parent: EHDSDataSet
Title: "Care plan model"
Description: "EHDSCarePlan means a structured set of data elements describing the intended management of a patient's health conditions but excluding pharmacological treatment plans that are represented through medication model."

* header //Obligations from EHDSDataSet
  * identifier 
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^short = "Identifier for the care plan."
    * ^definition = "Identifier for the care plan."
  * subject 
    * ^short = "The patient whose intended care is described in the plan."
    * ^definition = "The patient whose intended care is described in the plan."
  * author[x]
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * date
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * status //TODO not in the table, but inherited with obligations from EHDSDataSet anyway.
    * ^definition = "Indicates whether the plan is currently being acted upon, represents future intentions, or is now a historical record."
    * ^binding.description = "HL7 Request Status"
    * ^binding.strength = #required
* title 0..1 string "Human-friendly name for the care plan."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* description 0..1 string "A description of the scope and nature of the plan."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* period 0..1 Period "Indicates when the plan did (or is intended to) come into effect and end."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* conditionAddresses[x] 0..* CodeableConcept or EHDSCondition "Conditions/problems/concerns/diagnoses/etc whose management and/or mitigation are handled by this plan."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED CT (preferred), ICD-10, Orphacode"
  * ^binding.strength = #required
* activity 0..* Base "The details of the proposed activity represented in a specific resource."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * description[x] 0..1 CodeableConcept or string "A code or text that identifies the activity type."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #required
* goal 0..* Base "Describes the intended objective(s) of carrying out the care plan."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * description[x] 1..1 CodeableConcept or string "A code or text describing the goal."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
    * ^binding.description = "Not defined"
    * ^binding.strength = #required

// TODO activity and goal modelled differently from the table, because the Backbone element (Base) cannot have [x]. Tried to keep the Base element (requested by the FHIR groups) and model the [x] below it.