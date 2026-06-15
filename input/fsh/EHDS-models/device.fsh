Logical: EHDSDevice
Title: "Device or implant model."
Description: "EHDSDevice means a structured set of data elements describing a medical device or implant."

* instanceIdentifier 0..* Identifier "Identifier of the device instance."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* udiCarrier 0..* Identifier "Unique Device Identifier (UDI) value."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* manufacturer 0..1 string "Name of device manufacturer. If the manufacturer code is included in an identifier, manufacturer must correspond to that code."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* manufactureDate 0..1 dateTime "The date and time when the device was manufactured."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* expiryDate 0..1 dateTime "The date and time beyond which this device is no longer valid or should not be used (if applicable)."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* lotNumber 0..1 string "Lot number of device. May be omitted if included in an identifier."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* serialNumber 0..1 string "Serial number assigned by the manufacturer. May be omitted if included in an identifier."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* name 0..* Base "The name and name type of the device."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * value 1..1 string "The name of the device as known to e.g. the manufacturer and/or patient."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * type 1..1 CodeableConcept "The type of name, e.g. UDI Label name, user friendly name."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
* modelNumber 0..1 string "The manufacturer's model number for the device."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* version 1..* string "The actual design of the device and/or software version running on the device."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
* type 0..* CodeableConcept "Device type."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED GPS (preferred), EMDN"
  * ^binding.strength = #required
* note 0..1 string "Device note and/or comment."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
