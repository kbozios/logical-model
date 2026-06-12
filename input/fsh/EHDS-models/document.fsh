Logical: EHDSDocument
Title: "Document model"
Parent: EHDSDataSet
Description: "Structured set of data elements common for all health documents."

* header ^short = "Document header." //Obligation inherited from EHDSDataSet
  * identifier 1..*
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
    * ^short = "Unique identifier of the document."
    * ^definition = "Unique identifier of the document."
  * status // TODO if EHDSDataSet status goes to SHOULD, this here should be changed to SHALL
    * ^short = "Status of the document."
    * ^definition = "Status of the document."
    * ^binding.description = "HL7 Composition Status"
    * ^binding.strength = #required
  * author[x] 1..* 
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
    * ^short = "Author of the document."
    * ^definition = "Author of the document."
  * date 1..1
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
    * ^short = "Date of finalising/issuing the document."
    * ^definition = "Date of finalising/issuing the document."
  * language // Obligation inherited from EHDSDataSet
    * ^short = "Language in which the document is written. Language is expressed by the IETF language tag."
    * ^definition = "Language in which the document is written. Language is expressed by the IETF language tag."
    * ^binding.description = "BCP 47"
    * ^binding.strength = #required
  * documentType 1..1 CodeableConcept "Type of document (e.g. 60591-5 Patient summary document)."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
    * ^binding.description = "LOINC"
    * ^binding.strength = #required
  * documentTitle 1..1 string "Human readable document title that can be displayed in search results, etc. This can be documentType's display name, or it can be assembled from multiple elements. Examples: 'Laboratory Result Report', 'Patient Summary of Jane Green 10.12.2024'."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
  * period 0..1 Period "Time of service that is being documented."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * version 1..1 string "Version of the document."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
  * attestation 0..* Base "Document attestation details."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * attester[x] 1..1 EHDSHealthProfessional or EHDSDevice  "Attester who validated the document."
      * insert Full(#SHALL)
      * insert Basic(#SHALL)
    * dateTime 1..1 dateTime "Date and time of the approval of the document by the attester."
      * insert Full(#SHALL)
      * insert Basic(#SHALL)
  * legalAuthentication 0..* Base "Document legal authentication details."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
    * legalAuthenticator[x] 1..1 EHDSHealthProfessional or EHDSOrganisation "The person or organisation taking responsibility for the content of the document."
      * insert Full(#SHALL)
      * insert Basic(#SHALL)
    * dateTime 1..1 dateTime "Date and time when the document was authenticated."
      * insert Full(#SHALL)
      * insert Basic(#SHALL)
  * eventCategory 0..* CodeableConcept "Categorisation of the event covered by the document (e.g. laboratory study types, imaging study types including modality, etc.). Selection of such tags or labels depends on the use case and agreement between data sharing parties. This meta-data element serves primarily for searching and filtering purposes."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^binding.description = "LOINC, SNOMED CT, DICOM-CID 33 Modality"
    * ^binding.strength = #required
  * serviceSpecialty 0..* CodeableConcept "Additional details about where the content was created (e.g. clinical specialty)."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #required
  * custodian 0..1 EHDSOrganisation "Organisation that is in charge of maintaining the document."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * countryOfOrigin 0..1 CodeableConcept "Country of origin of the document."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^binding.description = "ISO 3166-1 alpha-2"
    * ^binding.strength = #required
* presentedForm 0..* EHDSAttachment "A narrative easy-to-read representation of the full data set, e.g. PDF-version of a document."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)