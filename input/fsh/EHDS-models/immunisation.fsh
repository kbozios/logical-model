Logical: EHDSImmunisation
Parent: EHDSDataSet
Title: "Immunisation model"
Description: "EHDSImmunisation means a structured set of data elements describing the administration of a vaccine or immunoglobulin, but excluding natural immunity, immunisation outcomes, refusals, and administration planning."

* header // Obligations derived from EHDSDataSet
  * identifier
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * author[x]
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^definition = "The author of the immunisation statement."
  * date
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * status 
    * ^short = "Status of the immunisation event (completed, not-done)."
    * ^definition = "Status of the immunisation event (completed, not-done)."
    * ^binding.description = "HL7 Immunization Status Codes"
    * ^binding.strength = #preferred

* diseaseOrAgentTargeted 0..* CodeableConcept "Disease or agent that the vaccination provides protection against." "Disease or agent that the vaccination provides protection against (e.g. 76902006 Tetanus)."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED CT (preferred), ICD-10"
  * ^binding.strength = #preferred

* vaccine 1..1 CodeableConcept "Type of immunisation." "Type of immunisation, e.g. J07AM01 Tetanus toxoid; or 871803007 Hepatitis A and Hepatitis B virus antigens only vaccine product."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * ^binding.description = "ATC (preferred), SNOMED CT"
  * ^binding.strength = #preferred

* administeredProduct 0..1 EHDSMedication "Administered medicinal product, including batch/lot details when necessary." "Administered medicinal product (e.g. TETAVAX suspension for injection), including batch/lot details when necessary."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* administrationTime 1..1 dateTime "The date and optionally the exact time when the vaccination was administered."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
* administeringCentre 0..1 EHDSOrganisation "Administering centre or a health authority responsible for the vaccination event"
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* administrator 0..1 EHDSHealthProfessional "Health professional responsible for administering the immunisation product."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* note 0..1 string "Free text notes by the health professional."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)