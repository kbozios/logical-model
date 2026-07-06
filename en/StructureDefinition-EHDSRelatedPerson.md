# Related person model - EHDS Logical Information Models v0.1.0

## Logical Model: Related person model 

 
EHDSRelatedPerson means a structured set of data elements describing a person related to the patient, such as a guardian, next of kin, or other related person. 

**Usages:**

* Use this Logical Model: [DataSet model](StructureDefinition-EHDSDataSet.md), [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Imaging report model](StructureDefinition-EHDSImagingReport.md), [Medical test result and report model](StructureDefinition-EHDSMedicalTestResultAndReport.md)... Show 3 more, [Medication dispense model](StructureDefinition-EHDSMedicationDispense.md), [Observation model](StructureDefinition-EHDSObservation.md) and [Specimen model](StructureDefinition-EHDSSpecimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/eu.ehds.models|current/StructureDefinition/StructureDefinition-EHDSRelatedPerson.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-EHDSRelatedPerson.csv), [Excel](../StructureDefinition-EHDSRelatedPerson.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSRelatedPerson",
  "url" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSRelatedPerson",
  "version" : "0.1.0",
  "name" : "EHDSRelatedPerson",
  "title" : "Related person model",
  "status" : "draft",
  "date" : "2026-07-06T14:20:00+00:00",
  "publisher" : "EC",
  "contact" : [{
    "name" : "EC",
    "telecom" : [{
      "system" : "url",
      "value" : "http://commission.europa.eu/"
    }]
  }],
  "description" : "EHDSRelatedPerson means a structured set of data elements describing a person related to the patient, such as a guardian, next of kin, or other related person.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSRelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "EHDSRelatedPerson",
      "path" : "EHDSRelatedPerson",
      "short" : "Related person model",
      "definition" : "EHDSRelatedPerson means a structured set of data elements describing a person related to the patient, such as a guardian, next of kin, or other related person."
    },
    {
      "id" : "EHDSRelatedPerson.identifier",
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
      "path" : "EHDSRelatedPerson.identifier",
      "short" : "A stable identifier of the patient that is unique within a defined scope, the use of temporary generated identifiers is not permitted. In addition to the mandatory attributes listed below, other attributes compliant with the HL7 FHIR Identifier structure may be included.",
      "definition" : "A stable identifier of the patient that is unique within a defined scope, the use of temporary generated identifiers is not permitted. In addition to the mandatory attributes listed below, other attributes compliant with the HL7 FHIR Identifier structure may be included.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "HL7 Identifier Type, extended with the following: NI (national unique identifier), HI (health identifier), HIN (health insurance number), SS (social security identifier), REGPID (regional person identifier), REGION (region identifier)"
      }
    },
    {
      "id" : "EHDSRelatedPerson.identifier.type",
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
          "valueCode" : "SHOULD:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://ehds.eu/specifications/fhir/actor-basic"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSRelatedPerson.identifier.type",
      "short" : "Description of the identifier.",
      "min" : 1
    },
    {
      "id" : "EHDSRelatedPerson.identifier.system",
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
          "valueCode" : "SHOULD:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://ehds.eu/specifications/fhir/actor-basic"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSRelatedPerson.identifier.system",
      "short" : "The namespace for the Identifier.value.",
      "min" : 1
    },
    {
      "id" : "EHDSRelatedPerson.identifier.value",
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
          "valueCode" : "SHOULD:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://ehds.eu/specifications/fhir/actor-basic"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSRelatedPerson.identifier.value",
      "short" : "The value that is unique.",
      "min" : 1
    },
    {
      "id" : "EHDSRelatedPerson.name",
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
          "valueCode" : "SHOULD:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://ehds.eu/specifications/fhir/actor-basic"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSRelatedPerson.name",
      "short" : "Name associated with the person.",
      "definition" : "Name associated with the person.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSHumanName"
      }]
    },
    {
      "id" : "EHDSRelatedPerson.subject",
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
          "valueCode" : "SHOULD:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://ehds.eu/specifications/fhir/actor-basic"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSRelatedPerson.subject",
      "short" : "The patient in relation to whom the related person is defined.",
      "definition" : "The patient in relation to whom the related person is defined.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSPatient"
      }]
    },
    {
      "id" : "EHDSRelatedPerson.relationship",
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
          "valueCode" : "SHOULD:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://ehds.eu/specifications/fhir/actor-basic"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSRelatedPerson.relationship",
      "short" : "Relationship between a patient and a contact person for that patient. This includes relatives, guardians, caring persons etc.",
      "definition" : "Relationship between a patient and a contact person for that patient. This includes relatives, guardians, caring persons etc.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "HL7 Patient Relationship Type"
      }
    },
    {
      "id" : "EHDSRelatedPerson.address",
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
      "path" : "EHDSRelatedPerson.address",
      "short" : "Address of the person.",
      "definition" : "Address of the person.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSAddress"
      }]
    },
    {
      "id" : "EHDSRelatedPerson.telecom",
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
      "path" : "EHDSRelatedPerson.telecom",
      "short" : "Telecommunication contact information of the person.",
      "definition" : "Telecommunication contact information of the person.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSTelecom"
      }]
    }]
  }
}

```
