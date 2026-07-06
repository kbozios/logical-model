# Device use model - EHDS Logical Information Models v0.1.0

## Logical Model: Device use model 

 
EHDSDeviceUse means a structured set of data elements describing the use of a medical device. 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Imaging report model](StructureDefinition-EHDSImagingReport.md) and [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/eu.ehds.models|current/StructureDefinition/StructureDefinition-EHDSDeviceUse.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-EHDSDeviceUse.csv), [Excel](../StructureDefinition-EHDSDeviceUse.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSDeviceUse",
  "url" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSDeviceUse",
  "version" : "0.1.0",
  "name" : "EHDSDeviceUse",
  "title" : "Device use model",
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
  "description" : "EHDSDeviceUse means a structured set of data elements describing the use of a medical device.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSDeviceUse",
  "baseDefinition" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "EHDSDeviceUse",
      "path" : "EHDSDeviceUse",
      "short" : "Device use model",
      "definition" : "EHDSDeviceUse means a structured set of data elements describing the use of a medical device."
    },
    {
      "id" : "EHDSDeviceUse.header.identifier",
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
      "path" : "EHDSDeviceUse.header.identifier"
    },
    {
      "id" : "EHDSDeviceUse.header.author[x]",
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
      "path" : "EHDSDeviceUse.header.author[x]",
      "definition" : "The author of the device usage statement."
    },
    {
      "id" : "EHDSDeviceUse.header.date",
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
      "path" : "EHDSDeviceUse.header.date"
    },
    {
      "id" : "EHDSDeviceUse.header.status",
      "path" : "EHDSDeviceUse.header.status",
      "short" : "Current status of the device usage (e.g. active, completed, etc).",
      "definition" : "Current status of the device usage (e.g. active, completed, etc).",
      "binding" : {
        "strength" : "required",
        "description" : "HL7 Device Use Statement Status"
      }
    },
    {
      "id" : "EHDSDeviceUse.periodOfUse",
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
      "path" : "EHDSDeviceUse.periodOfUse",
      "short" : "The period of time during which the device was implanted in the patient or the external device was in use.",
      "definition" : "The period of time during which the device was implanted in the patient or the external device was in use.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "EHDSDeviceUse.device[x]",
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
      "path" : "EHDSDeviceUse.device[x]",
      "short" : "The details of the device used.",
      "definition" : "The details of the device used.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSDevice"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "SNOMED CT (preferred), EMDN"
      }
    },
    {
      "id" : "EHDSDeviceUse.bodySite",
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
      "path" : "EHDSDeviceUse.bodySite",
      "short" : "Anatomical location of the device. May include laterality.",
      "definition" : "Anatomical location of the device. May include laterality.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSBodyStructure"
      }]
    },
    {
      "id" : "EHDSDeviceUse.reason[x]",
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
      "path" : "EHDSDeviceUse.reason[x]",
      "short" : "Reason or justification for the use of the device.",
      "definition" : "Reason or justification for the use of the device.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSCondition"
      },
      {
        "code" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSObservation"
      },
      {
        "code" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSProcedure"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "SNOMED CT (preferred), ICD-10, Orphacode"
      }
    },
    {
      "id" : "EHDSDeviceUse.note",
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
      "path" : "EHDSDeviceUse.note",
      "short" : "Free text notes by the health professional.",
      "definition" : "Free text notes by the health professional.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
