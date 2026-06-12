Logical: EHDSPatientSummary
Title: "Patient summary model"
Parent: EHDSDocument
Description: "The model is a structured document designed to provide an overview of a patient’s most important health information. The model aims to be compatible with the ISO International Patient Summary standard."


* header
  * ^short = "Patient summary header."
  * ^definition = "Patient summary header."
  * period 0..0
  * documentType
    * ^short = "Type of document (e.g. 60591-5 Patient summary document)."
    * ^definition = "Type of document (e.g. 60591-5 Patient summary document)."
  * documentTitle
    * ^short = "Human readable document title that can be displayed in search results, etc. This can be documentType's display name, or it can be assembled from multiple elements. Example: 'Patient Summary of Jane Green 10.12.2024'."
    * ^definition = "Human readable document title that can be displayed in search results, etc. This can be documentType's display name, or it can be assembled from multiple elements. Example: 'Patient Summary of Jane Green 10.12.2024'."
  * eventCategory
    * ^short = "Categorisation of the event covered by the document (e.g. in case of a partial patient summary related to a specific context). Selection of such tags or labels depends on the use case and agreement between data sharing parties. This meta-data element serves primarily for searching and filtering purposes."
    * ^definition = "Categorisation of the event covered by the document (e.g. in case of a partial patient summary related to a specific context). Selection of such tags or labels depends on the use case and agreement between data sharing parties. This meta-data element serves primarily for searching and filtering purposes."
    * ^binding.description = "SNOMED CT (preferred), LOINC."
    * ^binding.strength = #required

* alerts 0..1 Base "Section: Alerts." "Substantial alerts or warnings that health professionals should be aware of."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * generatedNarrative 0..1 Narrative "Narrative, potentially formatted, content of the whole section."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
  * medicalAlert 0..* EHDSAlert "Medical alerts." "Any clinical information that is imperative to know so that the life or health of the patient does not come under threat."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  // * note 0..1 string "Free text notes by the health professional."

* allergiesAndIntolerances 1..1 Base "Section: Allergies and intolerances."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * generatedNarrative 0..1 Narrative "Narrative, potentially formatted, content of the whole section."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
  * allergyIntolerance 0..* EHDSAllergyIntolerance "Allergies and intolerances."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * emptyReason 0..1 CodeableConcept "Reason for absence of data. The field shall be present when no allergy or intolerance entries are present."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
    * ^comment = "Indicates whether the person is known to have no allergies or the data is considered incomplete."
    * ^binding.description = "HL Data Absent Reason"
    * ^binding.strength = #required
  // * note 0..1 string "Free text notes by the health professional."

* problems 1..1 Base "Section: Medical problems." """Conditions and symptoms affecting the health of the patient."""
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * generatedNarrative 0..1 Narrative "Narrative, potentially formatted, content of the whole section."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
  * emptyReason 0..1 CodeableConcept "Reason for absence of data. The field shall be present when no problem entries are present."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
    * ^binding.description = "HL Data Absent Reason"
    * ^binding.strength = #required
  * currentProblem 0..* EHDSCondition "Active health conditions affecting the health of the patient."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * pastProblem 0..* EHDSCondition "Relevant past conditions the patient has suffered from that are no longer under currentProblem."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  // * note 0..1 string "Free text notes by the health professional."

* medicationSummary 1..1 Base "Section: Medication summary." "Current and relevant past medications."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * generatedNarrative 0..1 Narrative "Narrative, potentially formatted, content of the whole section."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
  * emptyReason 0..1 CodeableConcept "Reason for absence of data. The field shall be present when no medication entries are present." 
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
    * ^binding.description = "HL Data Absent Reason"
    * ^binding.strength = #required
  * medicationUse 0..* EHDSMedicationUse "Use of medicinal product relevant for this patient summary. Typically, medicinal products whose period of time indicated for the treatment has not yet expired whether it has been dispensed or not."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  // * note 0..1 string "Free text notes by the health professional."

* medicalDevicesAndImplants 1..1 Base "Section: Medical devices and implants." "The devices that are implanted in the patient and external medical devices and equipment that the health status depends on (e.g. cardiac pacemaker, implantable defibrillator, prothesis, ferromagnetic bone implant, etc.)."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * generatedNarrative 0..1 Narrative "Narrative, potentially formatted, content of the whole section."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * emptyReason 0..1 CodeableConcept "Reason for absence of data. The field shall be present when no medical devices or implant entries are present." 
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
    * ^binding.description = "HL Data Absent Reason"
    * ^binding.strength = #required 
  * deviceUse 0..* EHDSDeviceUse "Implanted and external medical devices and equipment."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  // * note 0..1 string "Free text notes by the health professional."

* procedures 1..1 Base "Section: Procedures." "Significant clinical procedures performed on the patient." 
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * generatedNarrative 0..1 Narrative "Narrative, potentially formatted, content of the whole section."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * emptyReason 0..1 CodeableConcept "Reason for absence of data. The field shall be present when no procedure entries are present."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
    * ^binding.description = "HL Data Absent Reason"
    * ^binding.strength = #required
  * procedure 0..* EHDSProcedure "List of procedures" 
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  // * note 0..1 string "Free text notes by the health professional."

* immunisations 1..1 Base "Section: Immunisations." """A patient's immunisation status (vaccination and other prophylaxis). The section should include current immunisation status and may contain the entire history that is relevant to the period of time being summarised. Adverse reactions against vaccines should be documented in the allergy section."""
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * generatedNarrative 0..1 Narrative "Narrative, potentially formatted, content of the whole section."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * emptyReason 0..1 CodeableConcept "Reason for absence of data. The field shall be present when no immunisation entries are present."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
    * ^binding.description = "HL Data Absent Reason"
    * ^binding.strength = #required
  * immunisation 0..* EHDSImmunisation "Immunisations." "Immunisations given to the patient and their status at the point of care."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  // * note 0..1 string "Free text notes by the health professional."

* functionalStatus 0..1 Base "Section: Functional status." "An individual's ability to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * generatedNarrative 0..1 Narrative "Narrative, potentially formatted, content of the whole section."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * condition 0..* EHDSCondition "Last assessment results recorded regarding conditions describing the patient's functional status or disability."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * assessment 0..* EHDSObservation "Last assessment results regarding functional status."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  // * note 0..1 string "Free text notes by the health professional."

* socialHistory 0..1 Base "Section: Social history." """Observations on social factors such as alcohol consumption or smoking. From the healthcare perspective, life-style factors relate to well-being but can also provide a source of risk factors."""
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * generatedNarrative 0..1 Narrative "Narrative, potentially formatted, content of the whole section."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * observation 0..* EHDSObservation "Health related lifestyle factors or lifestyle observations and social determinants of health (e.g. cigarette smoker, alcohol consumption)."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  // * note 0..1 string "Free text notes by the health professional."

* pregnancyHistory 0..1 Base "Section: Pregnancy history." """To present the current health state of the patient with respect to pregnancy and to provide chronological and outcome information about past pregnancies. """
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * generatedNarrative 0..1 Narrative "Narrative, potentially formatted, content of the whole section."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * currentPregnancyStatus 0..1 EHDSCurrentPregnancyStatus "Current pregnancy status." """Current state of the pregnancy at the date the observation was made, e.g. pregnant, not pregnant, unknown."""
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * previousPregnancies 0..* EHDSPregnancyHistory "History of previous pregnancies." """Information about previous pregnancies, including outcomes and number of children/fetuses in each pregnancy."""
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  // * note 0..1 string "Free text notes by the health professional."

* travelHistory 0..1 Base "Section: Travel history." "Captures relevant information about the patient's recent travel history that may be of clinical relevance — particularly in relation to exposure to infectious diseases, epidemiological risks, or environmental factors. The intent is to support clinical decision-making and risk assessment, especially in contexts such as outbreaks or endemic disease regions."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * generatedNarrative 0..1 Narrative "Narrative, potentially formatted, content of the whole section."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * travelHistory 0..* EHDSTravelHistory "Travel history for one country."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  // * note 0..1 string "Free text notes by the health professional."

* patientStory 0..1 Base "Section: Patient story. A concise narrative from the patient’s perspective about their present health state. This is a record of things that a person feels are important to communicate about their needs, strengths, values, concerns and preferences to others providing support and care."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * generatedNarrative 0..1 Narrative "Narrative, potentially formatted, content of the whole section."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
  // * note 0..1 string "Free text notes by the health professional."

* advanceDirectives 0..1 Base "Section: Advance Directives." """Provision for healthcare decisions if, in the future, a person is unable to make those decisions."""
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * generatedNarrative 0..1 Narrative "Narrative, potentially formatted, content of the whole section."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * advanceDirective 0..* EHDSAdvanceDirective "Provision for healthcare decisions if, in the future, a person is unable to make those decisions."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  // * note 0..1 string "Free text notes by the health professional."

* observationResults 0..1 Base "Section: Observation results." """Relevant observation results obtained on the patient. These may be measurements, laboratory results, anatomic pathology results, radiology results or other imaging or clinical results."""
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * generatedNarrative 0..1 Narrative "Narrative, potentially formatted, content of the whole section."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * result 0..* EHDSObservation "Observation results pertaining to the patient's health conditions."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  // * note 0..1 string "Free text notes by the health professional."

* carePlans 0..1 Base "Section: Care plans." """Therapeutic recommendations that do not include pharmacologic treatments, such as diet, physical exercise, planned surgeries"""
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * generatedNarrative 0..1 Narrative "Narrative, potentially formatted, content of the whole section."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * carePlan 0..* EHDSCarePlan "Describes the intention of how one or more practitioners intend to deliver care for the patient for a period of time, possibly limited to care for a specific condition or set of conditions."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  // * note 0..1 string "Free text notes by the health professional."
