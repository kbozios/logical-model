Logical: EHDSEncounter
Parent: EHDSDataSet
Title: "Encounter model"
Description: "The model provides a structured way to capture information about a patient’s interaction with a healthcare service. It enables recording details related to individual encounters and supports linking closely related encounters when needed. Tracking broader or longer episodes of care that extend beyond individual encounters is outside the scope of this model."
* header
  * status 
    * ^short = "Status of the encounter (e.g. discharged, discontinued, completed)."
    * ^definition = "Status of the encounter (e.g. discharged, discontinued, completed)."
  * author[x]
//    * ^short = "Author (typically a health professional) who is responsible for this encounter"
    * ^definition = "Author (typically a health professional) who is responsible for this encounter." 
* priority 0..1 CodeableConcept "Indicates the urgency of the encounter (e.g. urgent, routine)."
  * ^binding.description = "HL7 Act Priority"
  * ^binding.strength = #preferred
* class 1..1 CodeableConcept "Class of the encounter (inpatient, ambulatory, virtual)."
  * ^binding.description = "HL7 Act Encounter Code"
  * ^binding.strength = #preferred
* period 1..1 Period "The actual start and end time of the encounter."
* serviceProvider 0..1 EHDSOrganisation "The organisation (facility) responsible for this encounter."
* referringProfessional 0..1 EHDSHealthProfessional "Referring healthcare professional."
* basedOn[x] 0..* EHDSCarePlan or EHDSServiceRequest "Reference to the request that initiated this encounter."
* reason[x] 0..* CodeableConcept or EHDSCondition or EHDSProcedure or EHDSObservation or string "Reason for admission, e.g. problem, procedure or finding."
  * ^binding.description = "ICD-10, SNOMED CT, Orphacode"
  * ^binding.strength = #preferred
* admission 0..1 Base "Details about the admission to a healthcare service."
  * admitter 0..1 EHDSHealthProfessional "Admitting healthcare professional."
  * admitSource 0..1 CodeableConcept "The type of admission indicating where the patient came from (e.g. vorn in hospital, from nursing home, physician referral, transferred from another hospital)."
    * ^binding.description = "HL7 Admit Source"
    * ^binding.strength = #preferred
* dischargeDiagnosis[x] 0..* CodeableConcept or EHDSCondition "The diagnoses at the time of discharge."
  * ^binding.description = "ICD-10, SNOMED CT, Orphacode" 
  * ^binding.strength = #preferred
* dischargeDestination 0..1 Base "Location or organisation to which the patient is going after discharge."
  * type 0..1 CodeableConcept "Type of location (e.g. home, hospital, nursing home, etc.)."
    * ^binding.description = "HL7 Discharge Disposition" 
    * ^binding.strength = #preferred
    // TODO This is example level binding in FHIR, will we keep those?
  * location[x] 0..1 EHDSOrganisation or string "The location or organisation (including contact details)."
* serviceLocation 0..* Base "List of locations where the patient was present during this encounter."
  * period 0..1 Period "Time period during which the patient was present at the organisation."
  * organisation 1..1 EHDSOrganisation "Organisation or part of an organisation (e.g. department) where the patient was present during the encounter."
* subEncounter 0..* EHDSEncounter "Reference to encounters that are considered parts of this encounter."
* note 0..1 string "Free text notes by the health professional."