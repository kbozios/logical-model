Logical: EHDSObservation
Parent: EHDSDataSet
Title: "Observation model"
Description: """Model for information about an oservation and its results."""

* header.status
  * ^binding.description = "HL7 Observation status"
  * ^binding.strength = #preferred
* header.subject
  * ^short = "Patient who is receiving health care. This patient might be different from the direct subject of the observation."
  * directSubject[x] 0..1 EHDSPatient or EHDSLocation or EHDSDevice or string "The direct subject of the observation if different from the patient (subject of care), e.g. an observation of an implanted device. Additional types of subject may be allowed in implementations."
* observationDate[x] 1..1 dateTime or Period "Clinically relevant time or time period for the observation"
* type 1..1 CodeableConcept "Observation type."
  * ^binding.description = "LOINC, SNOMED CT"
  * ^binding.strength = #preferred
* originalName 0..1 string "Original (conventional) name of the observation as used in the local laboratory or clinical system."
* method 0..1 CodeableConcept "Observation method" """Observation method (measurement principle) to obtain the result."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* specimen 0..1 EHDSSpecimen "Specimen used for this observation."
* order 0..1 EHDSServiceRequest "Identifies order and order placer this observation belongs to."
* performer[x] 0..* EHDSOrganisation or EHDSHealthProfessional or EHDSPatient or EHDSRelatedPerson "Performer of the observation."
* bodySite 0..1 EHDSBodyStructure "Anatomic location and laterality where the observation was performed."
* result 1..1 Base "Result of the observation including text, numeric, coded, and other types of results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation."
  * value[x] 0..1 string or Quantity or Range or Ratio or CodeableConcept "Observation result value according to the type of observation."
    * ^binding.description = "UCUM for units, SNOMED CT for coded results"
    * ^binding.strength = #preferred
  * uncertainty 0..1 Base "Measurement uncertainty information type and interval if needed."
  //TODO check the description of the element, the sentence in the table appears incomplete.
    * value 1..1 decimal "The numerical value of the measurement uncertainty."
    * type 0..1 CodeableConcept "Probability Distribution Type for uncertainty"
      * ^binding.description = "HL7 ProbabilityDistributionType"
      * ^binding.strength = #preferred
  * dataAbsentReason 0..1 CodeableConcept "Provides a reason why the expected value in the element Observation.result.value[x] is missing."
    * ^binding.description = "HL7 Data absent reason"
    * ^binding.strength = #preferred
* referenceRange 0..* Base "Reference range, multiple reference ranges of different types could be provided. Provides guide for interpretation of the result."
  * ^comment = "Reference ranges are usually implied only for a numeric scale type. Use of the same units for reference range and value is implied."
  * low 0..1 Quantity "Low limit of the reference range."
    * ^binding.description = "UCUM for units"
    * ^binding.strength = #preferred
  * high 0..1 Quantity "High limit of the reference range."
    * ^binding.description = "UCUM for units"
    * ^binding.strength = #preferred
  * normalValue 0..1 CodeableConcept "Normal value, if relevant for the reference range."
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * type 0..1 CodeableConcept "Type of reference range."
    * ^binding.description = "HL7 Observation Reference Range Meaning Codes"
    * ^binding.strength = #preferred
  * appliesTo 0..* CodeableConcept "Codes to indicate the target population this reference range applies to."
    * ^comment = "Multiple appliesTo are interpreted as an \"AND\" of the target populations."
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * age 0..1 Range "Age range to which this reference range applies if applicable."
    * ^binding.description = "UCUM for units"
    * ^binding.strength = #preferred
  * text 0..1 string "Text based reference range."
* interpretation 0..* CodeableConcept "Information about reference intervals and result interpretation."
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* note 0..1 string "Free text notes by the health professional."

* component 0..* Base "Component in case the observation consists of multiple sub-observations (e.g. blood pressure)."
  * type 1..1 CodeableConcept "Type of the component observation."
    * ^binding.description = "LOINC, SNOMED CT"
    * ^binding.strength = #preferred
  * originalName 0..1 string "Original (user-friendly) name of the observation as used in the local laboratory or clinical system."
  * result 1..1 Base "Result of the observation including text, numeric, coded, and other types of results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation."
    * value[x] 0..1 string or Quantity or Range or Ratio or CodeableConcept "Observation result value according to the type of observation."
      * ^binding.description = "UCUM for units, SNOMED CT for coded results"
      * ^binding.strength = #preferred
    * uncertainty 0..1 Base "Measurement uncertainty information type and interval if needed."
      * value 1..1 decimal "The numerical value of the measurement uncertainty."
      * type 0..1 CodeableConcept "Probability distribution type for uncertainty."
        * ^binding.description = "HL7 Probability Distribution Type"
        * ^binding.strength = #preferred
    * dataAbsentReason 0..1 CodeableConcept "Provides a reason why the expected value in the element component.result.value[x] is missing."
      * ^binding.description = "HL7 Data Absent Reason"
      * ^binding.strength = #preferred
  * referenceRange 0..* Base "Reference range, multiple reference ranges of different types could be provided. Provides guide for interpretation of the result."
    * ^comment = "Reference ranges are usually implied only for a numeric scale type. Use of the same units for reference range and value is implied."
    * low 0..1 Quantity "Low limit of the reference range."
      * ^binding.description = "UCUM for units"
      * ^binding.strength = #preferred
    * high 0..1 Quantity "High limit of the reference range."
      * ^binding.description = "UCUM for units"
      * ^binding.strength = #preferred
    * normalValue 0..1 CodeableConcept "Normal value, if relevant for the reference range."
      * ^binding.description = "SNOMED CT"
      * ^binding.strength = #preferred
    * type 0..1 CodeableConcept "Type of reference range."
      * ^binding.description = "HL7 Observation Reference Range Meaning Codes"
      * ^binding.strength = #preferred
    * appliesTo 0..* CodeableConcept "Codes to indicate the target population this reference range applies to."
      * ^comment = "Multiple appliesTo are interpreted as an \"AND\" of the target populations."
      * ^binding.description = "SNOMED CT"
      * ^binding.strength = #preferred
    * age 0..1 Range "Age range to which this reference range applies if applicable."
      * ^binding.description = "UCUM for units"
      * ^binding.strength = #preferred
    * text 0..1 string "Text based reference range."
  * interpretation 0..* CodeableConcept "Information about reference intervals and result interpretation."
    * ^binding.description = "SNOMED CT, HL7 ObservationInterpretation"
    * ^binding.strength = #preferred

* derivedFrom[x] 0..* EHDSObservation or EHDSLaboratoryObservation or EHDSImagingStudy "Reference to the related resource from which the observation has been made. For example, a calculated anion gap or a fetal measurement based on an ultrasound image."
//* triggeredBy[x] 0..* EHDSLaboratoryObservation or EHDSObservation "References to the observation(s) that triggered the performance of this observation."
* hasMember[x] 0..* EHDSLaboratoryObservation or EHDSObservation "Member of the observation group that this observation forms (e.g. in case of a battery, a panel of tests, a set of vital sign measurements)."