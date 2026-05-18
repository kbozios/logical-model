Logical: EHDSSpecimen
//Id: EHDSspecimen
Title: "Specimen model"
Description: """Model for a specimen to be used for analysis"""

* identifier 1..* Identifier "An identifier of the specimen which is unique within in a defined scope. Example: identifier assigned by ordering system, identifier assigned by laboratory etc. Multiple identifiers can be used."
* status 0..1 CodeableConcept "Availability of the specimen."
  * ^binding.description = "HL7 Specimen Status"
  * ^binding.strength = #preferred
* type 0..1 CodeableConcept "The kind of material that forms the specimen."
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* specimenSource[x] 0..1 EHDSPatient or EHDSLocation or EHDSDevice "The source where the specimen came from. This may be from a patient, from a location (e.g., the source of an environmental sample), or from a device."
* parentSpecimen 0..* EHDSSpecimen "Specimen from which this specimen originated."
* request 0..* EHDSServiceRequest "Service request based on which the specimen was collected."
//* combined 0..1 CodeableConcept "This element signifies if the specimen is part of a group or pooled."
//  * ^binding.description = "HL7 specimen-combined"
//  * ^binding.strength = #preferred
* collection 0..* Base "Collection details."
  * performer[x] 0..1 EHDSHealthProfessional or EHDSOrganisation or EHDSPatient or EHDSRelatedPerson "Person or organisation who collected the specimen."
  * collected[x] 1..1 Period or dateTime "The period or date and time of specimen collection."
  * quantity 0..1 Quantity "The quantity of specimen collected."
  //* procedure 0..1 EHDSProcedure "The procedure that collects the specimen. If procedure information will be provided, then procedure details must match information in the speciment.collection structure, e.g. performer, time of collection etc.."
  * method 0..1 CodeableConcept "If relevant for the results, the method of obtaining the specimen."
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * device 0..1 EHDSDevice "Device used to perform specimen collection."
  * bodySite 0..1 EHDSBodyStructure "Anatomic location where the material is collected."
* receivedDate 0..1 dateTime "Date and time when specimen is received by the testing laboratory."
* container 0..* Base "The container holding the specimen."
  * specimenQuantity 0..1 Quantity "Quantity of specimen within container."
  * containerDevice 1..1 EHDSDevice "The device resource for the the container holding the specimen."
* condition 0..* CodeableConcept "State of the specimen. State of the speeimen should be alligned with dataAbsentReason element of the Observatiom model."
  * ^binding.description = "HL7 Specimen Condition"
  * ^binding.strength = #preferred
* note 0..1 string "Any details or issues about the specimen or during the specimen collection. (for example: broken vial, sent with patient, frozen)."
