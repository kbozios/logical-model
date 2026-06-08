Logical: EHDSAttachment
//Id: EHDSattachment
Title: "Attachment model"
Description: "EHDSAttachment means a structured set of data elements describing additional content, in a format identifiable by a MIME type, including images, clinical reports, or other documents."

* contentType 0..1 CodeableConcept "Mime type of the content, with charset etc."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "BCP 13"
  * ^binding.strength = #preferred
* language 0..1 CodeableConcept "Human language of the content"
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "BCP 47"
  * ^binding.strength = #preferred
* data 0..1 base64Binary "The actual data of the attachment - a sequence of bytes, base64 encoded."
  * insert Full(#SHALL)
  * insert Basic(#SHALL)
* url 0..1 uri "A location where the data can be accessed."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* size 0..1 integer64 "The number of bytes of data that make up this attachment (before base64 encoding)."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* title 0..1 string "A label or set of text to display in place of the data."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
