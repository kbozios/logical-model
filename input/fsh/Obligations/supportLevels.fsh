//Support levels are defined as actors in the HL7 FHIR Obligtions framework.

Alias: $actor-full = https://ehds.eu/specifications/fhir/actor-full
Alias: $actor-basic = https://ehds.eu/specifications/fhir/actor-basic

Instance: actor-full
InstanceOf: ActorDefinition
Title: "Full"
Description: """Support that enables the exchange of personal electronic health data with the focus on unstructured content representation while providing limited support for detailed underlying data structures."""
Usage: #example
* url = $actor-full
* name = "Full"
* status = #active
* type = #system

Instance: actor-basic
InstanceOf: ActorDefinition
Title: "Basic"
Description: """Support that enables the exchange of personal electronic health data with the focus on structured content representation."""
Usage: #example
* url = $actor-basic
* name = "Basic"
* status = #active
* type = #system
