Logical: EHDSTelecom
Title: "Telecom model"
Description: """Model for communication contact information."""

* use 0..1 CodeableConcept "Purpose of the contact point (e.g. home, work)."
* type 0..1 CodeableConcept "Type of communication form (e.g. phone, fax, email)."
* value 1..1 string "The actual contact point details (i.e. phone number or email address)."
