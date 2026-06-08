Logical: EHDSImagingStudy
Parent: EHDSDataSet
Title: "Imaging study model"
Description: "EHDSImagingStudy means the structured set of data elements for facilitating the exchange of imaging studies. Its goal is to enable the exchange of imaging studies regardless of whether the corresponding imaging report is available. It contains metadata that includes the endpoint where the imaging study is located. EHDSImagingStudy may be represented using DICOM KOS and/or HL7 FHIR, depending on the implementation guide."

* header //Obligation inherited from EHDSDataSet
  * identifier 1..*
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
    * ^definition = "Identifiers for the imaging study such as DICOM Study Instance UID. If one or more series elements are present in the imaging study, then there shall be one DICOM Study UID identifier."
  * date 1..1  
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
  * status // Obligation inherited from EHDSDataSet
    * ^binding.description = "HL7 Imaging Study Status"
    * ^binding.strength = #preferred
  * author[x] only EHDSHealthProfessional or EHDSOrganisation or EHDSDevice
  * author[x] 1..*
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
  * patientInsertedData 0..0
* presentedForm 0..* EHDSAttachment "PDF version of the imaging study to be used where DICOM version is not available."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
* modality 0..* CodeableConcept "All of the distinct values for series' modalities"
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
  * ^binding.description = "DICOM CID 33 Modality"
  * ^binding.strength = #preferred
* bodySite 0..* EHDSBodyStructure "All of the distinct values for series' examined body parts."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* encounter 0..1 EHDSEncounter "Reference to the encounter with which this imaging study is associated."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* started 0..1 dateTime "Date and time the study started."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* basedOn 0..* EHDSServiceRequest "Reference to the diagnostic request that resulted in this imaging study being performed."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* numberOfSeries 0..1 integer "Number of series in the study."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* numberOfInstances 0..1 integer "Number of service-object pair (SOP) instances in the study. This value given may be larger than the number of instance elements this resource contains due to resource availability, security, or other factors. This element should be present if any instance elements are present."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* description 0..1 string "The imaging manager description of the study. Institution-generated description or classification of the study (component) performed."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* studyCustodian 0..1 EHDSOrganisation "Organisation name, address, contact information."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* studyEndpoint 0..* EHDSEndpoint "Study endpoint describing the technical details of a location that can be connected to for the delivery/retrieval of information. Sufficient information is required to ensure that a connection can be made securely, and appropriate data transmitted as defined by the endpoint owner. These may be locally hosted services, regional services, or national service."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
* series 0..* Base "Series. Each study has one or more series of instances, but they may be absent when no series information needs to be conveyed."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
  * seriesUid 1..1 Identifier "DICOM Series Instance UID for the series."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
  * number 0..1 integer "Numeric identifier of this series."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * seriesModality 1..1 CodeableConcept "Acquisition modality used for this series."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
    * ^binding.description = "DICOM CID 29 Acquisition Modality"
    * ^binding.strength = #preferred
  * description 0..1 string "A short human readable summary of the series."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * numberOfInstances 0..1 integer "Number of series related instances."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * seriesEndpoint 0..* EHDSEndpoint "Series endpoint describing the technical details of a location that can be connected to for the delivery/retrieval of information. Sufficient information is required to ensure that a connection can be made securely, and appropriate data transmitted as defined by the endpoint owner. These may be locally hosted services, regional services, or national service."
    * insert Full(#SHALL)
    * insert Basic(#SHALL)
  * bodySite 0..1 EHDSBodyStructure "Body part examined."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * specimen 0..* EHDSSpecimen "Specimen imaged."
  * started 0..1 dateTime "Date and time when the series started."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * instanceInTheSeries 0..* Base "Instance that is part of the series."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
    * instanceTitle 0..1 string "Instance title that is the description of the instance."
      * insert Full(#SHALL)
      * insert Basic(#SHOULD)
    * instanceUid 1..1 Identifier "DICOM SOP Instance UID"
      * insert Full(#SHALL)
      * insert Basic(#SHALL)
    * sopClass 1..1 uri "SOP class - DICOM class type."
      * insert Full(#SHALL)
      * insert Basic(#SHALL)
    * instanceNumber 0..1 integer "The number of this instance in the series."
      * insert Full(#SHALL)
      * insert Basic(#SHOULD)
    * numberOfFrames 0..1 integer "The number of frames in a multiframe instance."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD)
    * keyImage 0..* Base "List of key image flags with a reason why this image is selected as a key image, and reference to the Key Image Note that flags the image as significant within the Imaging Study Manifest."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD)
      * flag 1..1 CodeableConcept "Reason for flagging the image as significant."
        * insert Full(#SHALL)
        * insert Basic(#SHALL)
        * ^binding.description = "DICOM PS3.16"
        * ^binding.strength = #preferred
      * reason 0..1 string "Textual reason for flagging the image as significant."
        * insert Full(#SHOULD)
        * insert Basic(#SHOULD)
      * seriesUID 1..* Identifier "Series instance UID for the series that contains the instances flagged as significant."
        * insert Full(#SHALL)
        * insert Basic(#SHALL)
      * instanceUID 1..* Identifier "SOP Instance UID for the instances flagged as significant by the Key Image Note object (DICOM KOS) that flags this image."
        * insert Full(#SHALL)
        * insert Basic(#SHALL)
