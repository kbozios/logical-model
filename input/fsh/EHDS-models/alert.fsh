Logical: EHDSAlert
Parent: EHDSDataSet
Title: "Alert model"
Description: """EHDSAlert means a structured set of data elements describing a clinically relevant fact about a patient that requires attention during a healthcare encounter in order to ensure patient safety or prevent adverse outcomes, including, but not limited to, intolerances, rare diseases requiring special management, implanted devices, ongoing special treatments, transplanted organs, or participation in a clinical trial."""

* header
  * identifier
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * author[x]
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^definition = "The author of the alert statement, i.e. the setter of the alert."
  * date
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * status
  * ^binding.description = "HL7 Flag Status"
  * ^binding.strength = #required
  * ^short = "Current status of the alert."
  * ^definition = """Current status of the alert, indicates whether this alert is active and needs to be displayed to a user, or whether it is no longer needed."""

* code 0..1 CodeableConcept "A coded representation of the alert."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED GPS"
  * ^binding.strength = #required
* description 0..1 Narrative "Narrative representation of the alert."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD) 
* priority 0..1 CodeableConcept "A code that identifies the priority of the alert."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "HL7 Flag Priority Code"
  * ^binding.strength = #required
* period 0..1 Period "Time period when alert is active. The period of time from the activation of the alert to inactivation of the alert. If the alert is active, the end of the period should be unspecified."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* sourceReference 0..* Resource "A reference to the resource the alert is about."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
