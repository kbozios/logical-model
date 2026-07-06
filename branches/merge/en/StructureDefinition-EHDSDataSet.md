# DataSet model - EHDS Logical Information Models v0.1.0

## Logical Model: DataSet model 

 
Data group that is used as a template for deriving other data groups. 

**Usages:**

* Derived from this Logical Model: [Advance directive model](StructureDefinition-EHDSAdvanceDirective.md), [Alert model](StructureDefinition-EHDSAlert.md), [Allergy intolerance model](StructureDefinition-EHDSAllergyIntolerance.md), [Care plan model](StructureDefinition-EHDSCarePlan.md)... Show 16 more, [Condition model](StructureDefinition-EHDSCondition.md), [Current pregnancy status model](StructureDefinition-EHDSCurrentPregnancyStatus.md), [Device use model](StructureDefinition-EHDSDeviceUse.md), [Document model](StructureDefinition-EHDSDocument.md), [Encounter model](StructureDefinition-EHDSEncounter.md), [Imaging study model](StructureDefinition-EHDSImagingStudy.md), [Immunisation model](StructureDefinition-EHDSImmunisation.md), [Medication administration model](StructureDefinition-EHDSMedicationAdministration.md), [Medication dispense model](StructureDefinition-EHDSMedicationDispense.md), [Medication prescription model](StructureDefinition-EHDSMedicationPrescription.md), [Medication use model](StructureDefinition-EHDSMedicationUse.md), [Observation model](StructureDefinition-EHDSObservation.md), [Pregnancy history model](StructureDefinition-EHDSPregnancyHistory.md), [Procedure model](StructureDefinition-EHDSProcedure.md), [Service request model](StructureDefinition-EHDSServiceRequest.md) and [Travel history model](StructureDefinition-EHDSTravelHistory.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/eu.ehds.models|current/StructureDefinition/StructureDefinition-EHDSDataSet.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-EHDSDataSet.csv), [Excel](../StructureDefinition-EHDSDataSet.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSDataSet",
  "url" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "version" : "0.1.0",
  "name" : "EHDSDataSet",
  "title" : "DataSet model",
  "status" : "draft",
  "date" : "2026-07-06T14:21:34+00:00",
  "publisher" : "EC",
  "contact" : [{
    "name" : "EC",
    "telecom" : [{
      "system" : "url",
      "value" : "http://commission.europa.eu/"
    }]
  }],
  "description" : "Data group that is used as a template for deriving other data groups.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "EHDSDataSet",
      "path" : "EHDSDataSet",
      "short" : "DataSet model",
      "definition" : "Data group that is used as a template for deriving other data groups."
    },
    {
      "id" : "EHDSDataSet.header",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://ehds.eu/specifications/fhir/actor-full"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://ehds.eu/specifications/fhir/actor-basic"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDataSet.header",
      "short" : "Basic metadata for this information.",
      "definition" : "Basic metadata for this information.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "EHDSDataSet.header.subject",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://ehds.eu/specifications/fhir/actor-full"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://ehds.eu/specifications/fhir/actor-basic"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDataSet.header.subject",
      "short" : "Patient/subject information.",
      "definition" : "Patient/subject information.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSPatient"
      }]
    },
    {
      "id" : "EHDSDataSet.header.identifier",
      "path" : "EHDSDataSet.header.identifier",
      "short" : "Business identifier assigned to the resource or document (not a patient ID and not the technical resource ID).",
      "definition" : "Business identifier assigned to the resource or document (not a patient ID and not the technical resource ID).",
      "comment" : "Business identifier is unique within the system that assigns them. The same entity may have different unique identifiers assigned by different systems. Therefore, the identifier is always expected to be a pair of a system and a value.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "EHDSDataSet.header.author[x]",
      "path" : "EHDSDataSet.header.author[x]",
      "short" : "Author of the resource.",
      "definition" : "Author of the resource.",
      "comment" : "Author(s) responsible for the provided information. The exact role of the responsible author varies across use cases and is specific to individual models.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
      },
      {
        "code" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSOrganisation"
      },
      {
        "code" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSDevice"
      },
      {
        "code" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSPatient"
      },
      {
        "code" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSRelatedPerson"
      }]
    },
    {
      "id" : "EHDSDataSet.header.patientInsertedData",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://ehds.eu/specifications/fhir/actor-full"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://ehds.eu/specifications/fhir/actor-basic"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDataSet.header.patientInsertedData",
      "short" : "Indicator that states, when included with value ‘true’, that the contents of this resource represent information inserted by the natural person or their representative. In this case, the contents shall not be considered as verified by a health professional or a healthcare provider, even if digitally signed by them as part of a bigger data set. Details of the person who inserted the information may be provided in the author[x] element.",
      "definition" : "Indicator that states, when included with value ‘true’, that the contents of this resource represent information inserted by the natural person or their representative. In this case, the contents shall not be considered as verified by a health professional or a healthcare provider, even if digitally signed by them as part of a bigger data set. Details of the person who inserted the information may be provided in the author[x] element.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "EHDSDataSet.header.date",
      "path" : "EHDSDataSet.header.date",
      "short" : "Date and optionally time of authoring/issuing.",
      "definition" : "Date and optionally time of authoring/issuing.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "EHDSDataSet.header.status",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://ehds.eu/specifications/fhir/actor-full"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://ehds.eu/specifications/fhir/actor-basic"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDataSet.header.status",
      "short" : "Status of the resource.",
      "definition" : "Status of the resource.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "Defined in the individual data set."
      }
    },
    {
      "id" : "EHDSDataSet.header.language",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://ehds.eu/specifications/fhir/actor-full"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://ehds.eu/specifications/fhir/actor-basic"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDataSet.header.language",
      "short" : "Language in which the resource is written. Language is expressed by the IETF language tag.",
      "definition" : "Language in which the resource is written. Language is expressed by the IETF language tag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "BCP 47"
      }
    }]
  }
}

```
