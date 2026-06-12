Logical: EHDSProcedure
Parent: EHDSDataSet
Title: "Procedure model"
Description: "EHDSProcedure means a structured set of data elements describing a procedure performed on or for a patient, including surgical, therapeutic, and diagnostic procedures and specimen collection, but excluding procedures in the planning stage."

* header // Obligations derived from EHDSDataSet
  * identifier
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * author[x]
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^definition = "The author of this observation."
  * date
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * status 
    * ^short = "Status of the procedure (e.g. completed, on hold, stopped)."
    * ^definition = "Status of the procedure (e.g. completed, on hold, stopped)."
    * ^binding.description = "HL7 Event Status"
    * ^binding.strength = #required

* code 1..1 CodeableConcept "Concept code and display name identifying the type of procedure."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #required
* procedureDate[x] 0..1 dateTime or Period "Date and time of the procedure or interval of its performance."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* performer 0..* EHDSHealthProfessional "Actors who performed the procedure (only main responsible actors expected)."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* bodySite 0..* EHDSBodyStructure "Target body site of the procedure."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* reason[x] 0..* CodeableConcept or EHDSCondition or EHDSObservation or EHDSProcedure "The reason the procedure was performed. This may be a concept from a terminology or a reference to a specific instance that describes the reason."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED CT (preferred), ICD-10, Orphacode"
  * ^binding.strength = #required
* outcome 0..1 CodeableConcept "The immediate result of the procedure (e.g. successful, unsuccessful). This does not include assessment over a longer period of time."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #required
* complication 0..* CodeableConcept "Complication that occurred during the procedure, or in the immediate post-procedure period."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED CT (preferred), ICD-10"
  * ^binding.strength = #required
* deviceUsed 0..* EHDSDevice "Device used to perform the procedure."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* focalDevice 0..* EHDSDevice "Device that is implanted, removed, or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* note 0..1 string "Free text notes by the health professional."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
