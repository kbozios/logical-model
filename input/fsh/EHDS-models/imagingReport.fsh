Logical: EHDSImagingReport
Title: "Imaging report model"
Parent: EHDSDocument
Description: """Imaging report reflects the observations and interpretations of one or more imaging studies, contains elements such as the reason why the study is requested, relevant contextual medical information, the modality used to acquire images and its settings, procedures and body localisations that were used, a description of the observations and findings, exposure information, conclusion and advice."""

* header ^short = "Imaging report header."
  * status //TODO the binding in the table is wrong, not changed
  * documentType
    * ^short = "Type of document (e.g. 18748-4 Diagnostic imaging study)."
    * ^definition = "Type of document (e.g. 18748-4 Diagnostic imaging study)."
  * documentTitle
    * ^short = "Human readable document title that can be displayed in search results, etc. This can be documentType's display name, or it can contain further information."
    * ^definition = "Human readable document title that can be displayed in search results, etc. This can be documentType's display name, or it can contain further information."
  * eventCategory
    * ^short = "Categorisation of the event covered by the document (e.g. imaging study types, body regions, modality, etc.). Selection of such tags or labels depends on the use case and agreement between data sharing parties. This meta-data element serves primarily for searching and filtering purposes."
    * ^definition = "Categorisation of the event covered by the document (e.g. imaging study types, body regions, modality, etc.). Selection of such tags or labels depends on the use case and agreement between data sharing parties. This meta-data element serves primarily for searching and filtering purposes."
      * ^binding.description = "DICOM CID 33 Modality (preferred), SNOMED CT"
      * ^binding.strength = #required
  * accessionNumber 0..* Identifier "Accession number - an identifier, managed by the RIS at the local level, which usually uniquely identifies an imaging procedure request, and links it to imaging study and related imaging report."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * intendedRecipient[x] 0..* EHDSPatient or EHDSRelatedPerson or EHDSHealthProfessional or EHDSOrganisation "Information recipient (intended recipient of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
* body 0..1 Base "Imaging report structured body."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD) //TODO This is SHALL for other reports.
  * orderInformation 0..* Base "Order to which this imaging report is linked."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * orderId 1..* Identifier "Identifier of the imaging service order."
      * insert Full(#SHALL)
      * insert Basic(#SHALL)
    * orderDateAndTime 0..1 dateTime "Date and time of the order placement."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD)
    * orderPlacer[x] 0..1 EHDSHealthProfessional or EHDSOrganisation or EHDSPatient "The person/organisation authorised to place the order."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD)
    * orderReason[x] 0..* CodeableConcept or EHDSCondition or EHDSObservation or string "An explanation or justification for why this service is being requested."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD)
      * ^binding.description = "SNOMED CT (preferred), ICD-10"
      * ^binding.strength = #required
    * clinicalQuestion 0..1 string "Specification of clinical question (goal of the investigation) to be answered by the imaging investigation."
      * insert Full(#SHALL)
      * insert Basic(#SHOULD)
  * supportingInformation 0..1 Base "Additional clinical information about the patient or specimen that may affect service delivery or interpretation (additional types of information may be allowed in implementations)." """This information includes diagnosis, clinical findings and other observations. This includes observations explicitly requested by the producer (filler) to provide context or supporting information needed to complete the order. For example, reporting the metal implants present in patient's body."""
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * observation 0..* EHDSObservation "Clinical findings and other observations (e.g., height and weight of the patient)."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD)
    * condition 0..* EHDSCondition "Condition that may influence the service or result interpretation."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD)
    * priorMedicationAdministration 0..* EHDSMedicationUse "Medication administered before ordering the service that may influence the service or result interpretation."
      * insert Full(#SHOULD)
    * device 0..* EHDSDeviceUse "List of implants or devices that affect the course of the examination or its interpretation (e.g. metal implants)."
      * insert Full(#SHOULD)
    * pregnancyStatus 0..1 EHDSCurrentPregnancyStatus "Pregnancy status when the imaging examination was performed (e.g., pregnant, not pregnant, unknown)."
      * insert Full(#SHOULD)
  * specimen 0..* EHDSSpecimen "Specimen information."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^comment = "A specimen (not attached to a body) can be used for diagnostic, forensic and medical research purposes."
  * exposureInformation 0..1 Base "Information on total exposure during the imaging investigation to ionising radiation."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^comment = "This information is required by regulations in several EU countries."
    * summary 0..1 string "Summary information about the exposure to ionising radiation."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD)
    * structuredDose 0..* Base "Structured representation of the exposure."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD)
      * doseQuantity 0..1 Quantity "Ionised radiation received during the imaging investigation."
        * insert Full(#SHOULD)
        * insert Basic(#SHOULD)
      * doseModality 0..1 CodeableConcept "Imaging modality used during imaging investigation (DICOM CID029)."
        * insert Full(#SHOULD)
        * insert Basic(#SHOULD)
        * ^binding.description = "DICOM Modality"
        * ^binding.strength = #required
      * bodySite 0..1 EHDSBodyStructure "Body part investigated."
        * insert Full(#SHOULD)
        * insert Basic(#SHOULD)
      * numberOfSeries 0..1 integer "Number of series in the study."
        * insert Full(#SHOULD)
        * insert Basic(#SHOULD)
  * examinationReport 1..1 Base "Examination report content."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
    * modality 1..* CodeableConcept "Imaging modality used during imaging investigation (DICOM CID029)."
      * insert Full(#SHALL)
      * insert Basic(#SHOULD)
      * ^binding.description = "DICOM Modality"
      * ^binding.strength = #required
    * bodySite 0..* EHDSBodyStructure "Body part investigated."
      * insert Full(#SHALL)
      * insert Basic(#SHOULD)
    * imagingProcedure 0..* EHDSProcedure "Imaging procedure performed during imaging study."
      * insert Full(#SHALL)
      * insert Basic(#SHOULD)
    * medicationAdministration 0..* EHDSMedicationAdministration "Information about medications administered (contrast, sedation, stress agents, etc) to enable the imaging investigation or during it."
      * insert Full(#SHALL)
      * insert Basic(#SHOULD)
    * adverseReaction 0..* EHDSAllergyIntolerance "Adverse reaction manifested during imaging investigation."
      * insert Full(#SHALL)
      * insert Basic(#SHOULD)
    * result[x] 0..* EHDSObservation or string "Imaging report result data."
      * insert Full(#SHALL)
      * insert Basic(#SHOULD)
    * conclusion 0..1 Base "A concise and clinically contextualised summary including interpretation/impression of the diagnostic report."
      * insert Full(#SHALL)
      * insert Basic(#SHOULD)
      * impression 1..1 string "Narrative description of the clinical conclusion (impression)."
        * insert Full(#SHALL)
        * insert Basic(#SHOULD)
      * conditionOrFinding[x] 0..* EHDSCondition or EHDSObservation "Condition or finding from imaging investigation."
        * insert Full(#SHALL)
        * insert Basic(#SHOULD)
  * recommendation 0..1 Base "Recommendation section for additional imaging investigations or other actions."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * description 1..1 string "Narrative description of the recommended activities including additional investigation, medication etc."
      * insert Full(#SHALL)
      * insert Basic(#SHOULD)
    * carePlan 0..* EHDSCarePlan "A complex and structured information about recommended goals, activities and objectives in the form of one or more formal care plan."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD)
  * comparisonStudy 0..* EHDSImagingReport "Documentation (reference) of a prior Imaging Report to which the current images were compared."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
* dicomStudyMetadata 0..* EHDSImagingStudy "Metadata of the DICOM study. A study comprises a set of series, each of which includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a common context. A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of different modalities."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* attachments 0..* EHDSAttachment "Report attachments"
  * insert Full(#SHALL)
  * insert Basic(#SHALL)