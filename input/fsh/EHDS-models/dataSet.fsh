Logical: EHDSDataSet
Title: "DataSet model"
Description: "Data group that is used as a template for deriving other data groups."
* header 1..1 Base "Basic metadata for this information."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
  * subject 1..1 EHDSPatient "Patient/subject information."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
  * identifier 0..* Identifier "Business identifier assigned to the resource or document (not a patient ID and not the technical resource ID)."
//    * insert Full(#SHOULD)
//    * insert Basic(#SHOULD)
// TODO Obligation removed to not populate double-obligations downstreams
    * ^comment = "Business identifier is unique within the system that assigns them. The same entity may have different unique identifiers assigned by different systems. Therefore, the identifier is always expected to be a pair of a system and a value."
  * author[x] 0..* EHDSHealthProfessional or EHDSOrganisation or EHDSDevice or EHDSPatient or EHDSRelatedPerson "Author of the resource."
//    * insert Full(#SHOULD)
//    * insert Basic(#SHOULD)
// TODO Obligation removed to not populate double-obligations downstreams
    * ^comment = "Author(s) responsible for the provided information. The exact role of the responsible author varies across use cases and is specific to individual models."
  * patientInsertedData 0..1 boolean "Indicator that states, when included with value ‘true’, that the contents of this resource represent information inserted by the natural person or their representative. In this case, the contents shall not be considered as verified by a health professional or a healthcare provider, even if digitally signed by them as part of a bigger data set. Details of the person who inserted the information may be provided in the author[x] element."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
  * date 0..1 dateTime "Date and optionally time of authoring/issuing."
//    * insert Full(#SHOULD)
//    * insert Basic(#SHOULD)
// TODO Obligation removed to not populate double-obligations downstreams
  * status 1..1 CodeableConcept "Status of the resource."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
    * ^binding.description = "Defined in the individual data set."
    * ^binding.strength = #preferred
  * language 0..1 CodeableConcept "Language in which the resource is written. Language is expressed by the IETF language tag."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^binding.description = "BCP 47"
    * ^binding.strength = #preferred
