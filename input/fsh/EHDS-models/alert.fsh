Logical: EHDSAlert
Parent: EHDSDataSet
Title: "Alert model"
// add medical or non-medical alert
Description: """A statement higlighting a fact about the patient that requires clinical attention to ensure safety and prevent adverse outcomes."""

* header.author[x]
//  * ^short = "The author of the alert statement, i.e. the setter of the alert."
  * ^definition = "The author of the alert statement, i.e. the setter of the alert."
* header.status ^short = "Current status of the alert, indicates whether this alert is active and needs to be displayed to a user, or whether it is no longer needed or was entered in error."
  * ^binding.description = "HL7 Flag Status"
  * ^binding.strength = #preferred
  * ^definition = """Current status of the alert, indicates whether this alert is active and needs to be displayed to a user, or whether it is no longer needed or was entered in error."""

* code 0..1 CodeableConcept "A coded representation of the alert."
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* description 0..1 string "Narrative representation of the alert." 
* priority 0..1 CodeableConcept "A code that identifies the priority of the alert."
  * ^binding.description = "HL7 Flag Priority Code"
  * ^binding.strength = #preferred
* period 0..1 Period "Time period when alert is active. The period of time from the activation of the alert to inactivation of the alert. If the alert is active, the end of the period should be unspecified."
* sourceReference 0..* Resource "A reference to the resource the alert is about."
