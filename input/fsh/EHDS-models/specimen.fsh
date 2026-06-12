Logical: EHDSSpecimen
Title: "Specimen model"
Description: "EHDSSpecimen means a structured set of data elements describing a sample collected."

* identifier 1..* Identifier "An identifier of the specimen which is unique within in a defined scope. Example: identifier assigned by ordering system, identifier assigned by laboratory etc. Multiple identifiers can be used."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* status 0..1 CodeableConcept "Availability of the specimen."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
  * ^binding.description = "HL7 Specimen Status"
  * ^binding.strength = #required
* type 0..1 CodeableConcept "The kind of material that forms the specimen."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #required
* specimenSource[x] 0..1 EHDSPatient or EHDSLocation or EHDSDevice "The source where the specimen came from. This may be from a patient, from a location (e.g., the source of an environmental sample), or from a device."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* parentSpecimen 0..* EHDSSpecimen "Specimen from which this specimen originated."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* request 0..* EHDSServiceRequest "Service request based on which the specimen was collected."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
//* combined 0..1 CodeableConcept "This element signifies if the specimen is part of a group or pooled."
//  * ^binding.description = "HL7 specimen-combined"
//  * ^binding.strength = #required
* collection 0..* Base "Collection details."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
  * performer[x] 0..1 EHDSHealthProfessional or EHDSOrganisation or EHDSPatient or EHDSRelatedPerson "Person or organisation who collected the specimen."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * collected[x] 1..1 Period or dateTime "The period or date and time of specimen collection."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * quantity 0..1 Quantity "The quantity of specimen collected."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  //* procedure 0..1 EHDSProcedure "The procedure that collects the specimen. If procedure information will be provided, then procedure details must match information in the speciment.collection structure, e.g. performer, time of collection etc.."
  * method 0..1 CodeableConcept "If relevant for the results, the method of obtaining the specimen."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #required
  * device 0..1 EHDSDevice "Device used to perform specimen collection."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * bodySite 0..1 EHDSBodyStructure "Anatomic location where the material is collected."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
* receivedDate 0..1 dateTime "Date and time when specimen is received by the testing laboratory."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* container 0..* Base "The container holding the specimen."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * specimenQuantity 0..1 Quantity "Quantity of specimen within container."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * containerDevice 1..1 EHDSDevice "The device resource for the the container holding the specimen."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
* condition 0..* CodeableConcept "State of the specimen. State of the speeimen should be alligned with dataAbsentReason element of the Observatiom model."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
  * ^binding.description = "HL7 Specimen Condition"
  * ^binding.strength = #required
* note 0..1 string "Any details or issues about the specimen or during the specimen collection. (for example: broken vial, sent with patient, frozen)."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)