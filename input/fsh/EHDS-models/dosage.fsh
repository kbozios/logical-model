Logical: EHDSDosage
Title: "Dosage model"
Description: "EHDSDosage means a structured set of data elements describing the instructions for administering a medicinal product."
* renderedDosageInstruction 0..1 string "Full dosage information as human-readable text covering all dosage steps. Generating the text follows local rules and should include all locally implemented dosage data even when such elements are not present in this model."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* dosageDetails 0..* Base "Details of single dosage scheme step."
  * insert Full(#SHOULD) // TODO is it meant to be SHOULD, so none of the SHALLs are actually SHALLs?
  * insert Basic(#SHOULD)
  * sequence 0..1 integer "Order of the dosage instruction, in case one treatment consists of several dosage steps. When two schemes share the same sequence number, they are meant to be running in parallel."  
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * note 0..1 string "Patient oriented instructions as free text for this dosage step."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * doseAndRate 0..* Base "Amount of medication administered per one dose (= one timing)."
    * insert Full(#SHALL) // TODO This is SHOULD in the tables, but it looks like a technical error, since repeat SHALL would have no point if this was SHOULD
    * insert Basic(#SHOULD)
    * dose[x] 0..1 Quantity or Range "Amount of medication per one dose (1 tablet, 2-3 tablets, 20ml)."
      * insert Full(#SHALL)
      * insert Basic(#SHOULD)
      * ^binding.description = "UCUM (units of measurement), EDQM Standard Terms (units of presentation)"
      * ^binding.strength = #preferred
    * rate[x] 0..1 Quantity or Ratio "Amount of medication per time period (e.g. 100mg per 1 hour). When rate is provided per 1 time unit, Quantity data type can be used with a suitable unit (e.g. mg/h, ug/min)."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD)
      * ^binding.description = "UCUM (units of measurement), EDQM Standard Terms (units of presentation)"
      * ^binding.strength = #preferred
  * repeat 0..1 Base "Repetition of the administration."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
    * bounds[x] 0..1 Quantity or Period "Time bounds for the treatment (current dosage scheme), Quantity contains a number of time units (e.g 10 days), Period contains start and end date (e.g. 05.08.2023 - 10.08.2023)."
      * insert Full(#SHALL)
      * insert Basic(#SHOULD)
      * ^binding.description = "UCUM"
      * ^binding.strength = #preferred
    * duration 0..1 Quantity "Duration of administration (e.g. '5 minutes', '1 hour')."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD)
      * ^binding.description = "UCUM"
      * ^binding.strength = #preferred
    * frequency 0..1 Base "Frequency of intake/administration."
      * insert Full(#SHALL)
      * insert Basic(#SHOULD)
      * numberOfTimes 1..1 integer "Number of times per period (e.g. '3 times')."
        * insert Full(#SHALL)
        * insert Basic(#SHOULD)
      * period 1..1 Quantity "Duration to which the frequency applies (e.g. '... / 1 day')."
        * insert Full(#SHALL)
        * insert Basic(#SHOULD)
        * ^binding.description = "UCUM"
        * ^binding.strength = #preferred
    * dayOfWeek 0..* CodeableConcept "The day of the week of administration, e.g Mon, Tue, etc."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD)
    * timeOfDay 0..* time "Exact time of day of administration (e.g. '10:00')."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD)
    * eventTime 0..* CodeableConcept "Time period or event when the administration should happen ('before meal', 'immediately', 'morning')."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD)
      * ^binding.description = "HL7 Event Timing"
      * ^binding.strength = #preferred
  * asNeeded 0..1 boolean "Take as needed."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * bodySite 0..1 EHDSBodyStructure "Body site of administration."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * routeOfAdministration 0..1 CodeableConcept "Route of administration."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^binding.description = "EDQM Standard Terms"
    * ^binding.strength = #preferred