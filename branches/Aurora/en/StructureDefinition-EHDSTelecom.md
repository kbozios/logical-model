# Telecom model - EHDS Logical Information Models v0.1.0

## Logical Model: Telecom model 

 
EHDSTelecom means a structured set of data elements describing a telecommunication contact point. 

**Usages:**

* Use this Logical Model: [Health professional model](StructureDefinition-EHDSHealthProfessional.md), [Organisation model](StructureDefinition-EHDSOrganisation.md), [Patient model](StructureDefinition-EHDSPatient.md) and [Related person model](StructureDefinition-EHDSRelatedPerson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/eu.ehds.models|current/StructureDefinition/StructureDefinition-EHDSTelecom.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-EHDSTelecom.csv), [Excel](../StructureDefinition-EHDSTelecom.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSTelecom",
  "url" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSTelecom",
  "version" : "0.1.0",
  "name" : "EHDSTelecom",
  "title" : "Telecom model",
  "status" : "draft",
  "date" : "2026-06-15T10:04:57+00:00",
  "publisher" : "EC",
  "contact" : [{
    "name" : "EC",
    "telecom" : [{
      "system" : "url",
      "value" : "http://commission.europa.eu/"
    }]
  }],
  "description" : "EHDSTelecom means a structured set of data elements describing a telecommunication contact point.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSTelecom",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "EHDSTelecom",
      "path" : "EHDSTelecom",
      "short" : "Telecom model",
      "definition" : "EHDSTelecom means a structured set of data elements describing a telecommunication contact point."
    },
    {
      "id" : "EHDSTelecom.use",
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
      "path" : "EHDSTelecom.use",
      "short" : "Purpose of the contact point (e.g. home, work).",
      "definition" : "Purpose of the contact point (e.g. home, work).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "EHDSTelecom.type",
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
      "path" : "EHDSTelecom.type",
      "short" : "Type of communication form (e.g. phone, fax, email).",
      "definition" : "Type of communication form (e.g. phone, fax, email).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "EHDSTelecom.value",
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
      "path" : "EHDSTelecom.value",
      "short" : "The actual contact point details (i.e. phone number or email address).",
      "definition" : "The actual contact point details (i.e. phone number or email address).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
