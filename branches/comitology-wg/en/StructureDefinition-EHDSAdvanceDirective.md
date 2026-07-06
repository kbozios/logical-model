# Advance directive model - EHDS Logical Information Models v0.1.0

## Logical Model: Advance directive model 

 
EHDSAdvanceDirective means a documented expression of a patient's wishes, preferences or instructions regarding their healthcare, including, but not limited to, decisions concerning life-sustaining treatment or arrangements to take effect after death. 

**Usages:**

* Use this Logical Model: [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/eu.ehds.models|current/StructureDefinition/StructureDefinition-EHDSAdvanceDirective.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-EHDSAdvanceDirective.csv), [Excel](../StructureDefinition-EHDSAdvanceDirective.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSAdvanceDirective",
  "url" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSAdvanceDirective",
  "version" : "0.1.0",
  "name" : "EHDSAdvanceDirective",
  "title" : "Advance directive model",
  "status" : "draft",
  "date" : "2026-06-14T20:46:18+00:00",
  "publisher" : "EC",
  "contact" : [{
    "name" : "EC",
    "telecom" : [{
      "system" : "url",
      "value" : "http://commission.europa.eu/"
    }]
  }],
  "description" : "EHDSAdvanceDirective means a documented expression of a patient's wishes, preferences or instructions regarding their healthcare, including, but not limited to, decisions concerning life-sustaining treatment or arrangements to take effect after death.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSAdvanceDirective",
  "baseDefinition" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "EHDSAdvanceDirective",
      "path" : "EHDSAdvanceDirective",
      "short" : "Advance directive model",
      "definition" : "EHDSAdvanceDirective means a documented expression of a patient's wishes, preferences or instructions regarding their healthcare, including, but not limited to, decisions concerning life-sustaining treatment or arrangements to take effect after death."
    },
    {
      "id" : "EHDSAdvanceDirective.header.identifier",
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
      "path" : "EHDSAdvanceDirective.header.identifier"
    },
    {
      "id" : "EHDSAdvanceDirective.header.author[x]",
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
      "path" : "EHDSAdvanceDirective.header.author[x]",
      "definition" : "Author of the advance directive."
    },
    {
      "id" : "EHDSAdvanceDirective.header.date",
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
      "path" : "EHDSAdvanceDirective.header.date"
    },
    {
      "id" : "EHDSAdvanceDirective.header.status",
      "path" : "EHDSAdvanceDirective.header.status",
      "binding" : {
        "strength" : "required",
        "description" : "HL7 Consent State"
      }
    },
    {
      "id" : "EHDSAdvanceDirective.category",
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
      "path" : "EHDSAdvanceDirective.category",
      "short" : "Categories of directives related to decisions prior and after death, such as life support, resuscitation or organ donation.",
      "definition" : "Categories of directives related to decisions prior and after death, such as life support, resuscitation or organ donation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "SNOMED CT"
      }
    },
    {
      "id" : "EHDSAdvanceDirective.directiveType",
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
      "path" : "EHDSAdvanceDirective.directiveType",
      "short" : "The type of advance directive, indicating whether it applies before or after death.",
      "definition" : "The type of advance directive, indicating whether it applies before or after death.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "SNOMED CT"
      }
    },
    {
      "id" : "EHDSAdvanceDirective.note",
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
      "path" : "EHDSAdvanceDirective.note",
      "short" : "Textual description of the directive.",
      "definition" : "Textual description of the directive.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EHDSAdvanceDirective.attachment",
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
      "path" : "EHDSAdvanceDirective.attachment",
      "short" : "Source document, such as a PDF, with the living will and the patient's signature.",
      "definition" : "Source document, such as a PDF, with the living will and the patient's signature.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSAttachment"
      }]
    }]
  }
}

```
