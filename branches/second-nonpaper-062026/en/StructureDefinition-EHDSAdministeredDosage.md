# Administered dosage model. - EHDS Logical Information Models v0.1.0

## Logical Model: Administered dosage model. 

 
EHDSAdministeredDosage means the structured set of data elements describing a single instance of medication administration, including the dose given, the route and method of administration, and the time of administration. 

**Usages:**

* Use this Logical Model: [Medication administration model](StructureDefinition-EHDSMedicationAdministration.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/eu.ehds.models|current/StructureDefinition/StructureDefinition-EHDSAdministeredDosage.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-EHDSAdministeredDosage.csv), [Excel](../StructureDefinition-EHDSAdministeredDosage.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSAdministeredDosage",
  "url" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSAdministeredDosage",
  "version" : "0.1.0",
  "name" : "EHDSAdministeredDosage",
  "title" : "Administered dosage model.",
  "status" : "draft",
  "date" : "2026-07-03T07:47:09+00:00",
  "publisher" : "EC",
  "contact" : [{
    "name" : "EC",
    "telecom" : [{
      "system" : "url",
      "value" : "http://commission.europa.eu/"
    }]
  }],
  "description" : "EHDSAdministeredDosage means the structured set of data elements describing a single instance of medication administration, including the dose given, the route and method of administration, and the time of administration.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSAdministeredDosage",
  "baseDefinition" : "http://ehds.eu/fhir/models/StructureDefinition/EHDSDosage",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "EHDSAdministeredDosage",
      "path" : "EHDSAdministeredDosage",
      "short" : "Administered dosage model.",
      "definition" : "EHDSAdministeredDosage means the structured set of data elements describing a single instance of medication administration, including the dose given, the route and method of administration, and the time of administration."
    },
    {
      "id" : "EHDSAdministeredDosage.dosageDetails",
      "path" : "EHDSAdministeredDosage.dosageDetails",
      "max" : "1"
    },
    {
      "id" : "EHDSAdministeredDosage.dosageDetails.sequence",
      "path" : "EHDSAdministeredDosage.dosageDetails.sequence",
      "max" : "0"
    },
    {
      "id" : "EHDSAdministeredDosage.dosageDetails.repeat",
      "path" : "EHDSAdministeredDosage.dosageDetails.repeat",
      "max" : "0"
    },
    {
      "id" : "EHDSAdministeredDosage.dosageDetails.asNeeded",
      "path" : "EHDSAdministeredDosage.dosageDetails.asNeeded",
      "max" : "0"
    }]
  }
}

```
