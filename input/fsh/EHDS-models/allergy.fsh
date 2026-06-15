Logical: EHDSAllergyIntolerance
Parent: EHDSDataSet
Title: "Allergy intolerance model."
Description: """EHDSAllergyIntolerance means a structured set of data elements describing a clinically identified predisposition of a patient to an adverse reaction upon exposure to a specific agent or allergen."""


* header // Obligations derived from EHDSDataSet
  * identifier
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^short = "Business identifier for the object, unique within its system. Supporting disambiguation between different contexts (systems/countries)."
    * ^definition = "Business identifier for the object, unique within its system. Supporting disambiguation between different contexts (systems/countries)."
  * date
  * author[x]
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^definition = "The author of the allergy/intolerance information."
  * date
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * status ^short = "Current status of the allergy or intolerance, for example, whether it is active, inactive, or resolved."
    * ^definition = "Current status of the allergy or intolerance, for example, whether it is active, inactive, or resolved."
    * ^binding.description = "HL7 AllergyIntolerance Clinical Status Codes"
    * ^binding.strength = #required

* agentOrAllergen 1..1 CodeableConcept "Code that identifies the allergy or intolerance." 
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
  * ^binding.description = "EMA SPOR SMS (preferred for medication), SNOMED GPS (preferred for other cases)"
  * ^binding.strength = #required
  * ^comment = "Code for an allergy or intolerance statement (either a positive or a negated/excluded statement). This may be a code for a substance or pharmaceutical product that is considered to be responsible for the adverse reaction risk (e.g., Latex), an allergy or intolerance condition (e.g., Latex allergy), or a negated/excluded code for a specific substance or class (e.g., No latex allergy). It must be clinically safe to only process the 'code' and ignore the 'reaction.substance'."

* note 0..1 string "Free text notes by the health professional."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)

* criticality 0..1 CodeableConcept "Estimate of the potential clinical harm, or seriousness, of a reaction to an identified substance."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "HL7 Allergy Intolerance Criticality"
  * ^binding.strength = #required

* certainty 0..1 CodeableConcept "Assertion about the certainty associated with a propensity, or potential risk, of a reaction to the identified substance. Diagnostic and /or clinical evidence of condition"
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "HL7 Allergy Intolerance Verification Codes"
  * ^binding.strength = #required

* onsetDate 0..1 dateTime "When allergy or intolerance was identified."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
// * onsetLifePeriod 0..1 CodeableConcept "Onset life period (childhood, adolescence, etc.)."

* endDate 0..1 dateTime "Date of resolution of the allergy or intolerance (e.g. when the clinician deemed there is no longer any need to track the underlying condition)."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
// * endDateLifePeriod 0..1 CodeableConcept "Life period of resolution of the allergy (e.g. childhood, adolescence)"

* reaction 0..* Base "Adverse reaction events linked to exposure to substance."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
/*
  * agentOrAllergen 0..1 CodeableConcept "Specific substance or pharmaceutical product considered to be responsible for event"
*/
  * manifestation 0..* CodeableConcept "Description of the clinical manifestation of the allergic reaction."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
    * ^binding.description = "SNOMED GPS"
    * ^binding.strength = #required

  * severity 0..1 CodeableConcept "Severity of the clinical manifestation of the allergic reaction."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^binding.description = "HL7 AllergyIntolerance Severity"
    * ^binding.strength = #required

  * onset 0..1 dateTime "Date and time of the onset of the reaction."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)

