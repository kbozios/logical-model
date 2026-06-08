Logical: EHDSTelecom
Title: "Telecom model"
Description: "EHDSTelecom means a structured set of data elements describing a telecommunication contact point."

* use 0..1 CodeableConcept "Purpose of the contact point (e.g. home, work)."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* type 0..1 CodeableConcept "Type of communication form (e.g. phone, fax, email)."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* value 1..1 string "The actual contact point details (i.e. phone number or email address)."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
