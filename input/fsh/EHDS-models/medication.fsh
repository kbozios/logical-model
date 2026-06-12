Logical: EHDSMedication
Title: "Medication model"
Description: "EHDSMedication means a structured set of data elements describing a medicinal product."

* identifyingCode[x] 0..* CodeableConcept or Identifier "An identifier or a code for the product (virtual product, branded product, or package). If several identifiers are specified, they shall not have conflicting meanings or very different granularities. An identifier might not exist e.g. for substance-based prescriptions."
  * insert Full(#SHALL)
  * insert Basic(#SHOULD)
  * ^binding.description = "SNOMED CT, EMA SPOR PMS, or a national coding system or register."
  * ^binding.strength = #required
* classification 0..* CodeableConcept "Anatomical therapeutic chemical classification or another classification (e.g. narcotic/psychotropic; orphan drug)."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "WHO ATC, non-binding code-systems for other classifications"
  * ^binding.strength = #required
* productName 0..1 string "Current trade name (authorised name) of the product. When medication is specified by a CodeableConcept, the name may be omitted when available as the display name of the concept."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* marketingAuthorisationHolder 0..1 Base "Marketing authorisation holder of the medicinal product. Relevant for identifying the exact product. If the product does not have a marketing authorisation, the manufacturer information may be used."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * organisationName 0..1 string "Name of the organisation holding the authorisation for marketing/manufacturing."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * organisationIdentifier 0..* Identifier "Identifier of the organisation and/or its physical location."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
* doseForm 0..1 CodeableConcept "Dose form at the package level (e.g. authorised dose form), corresponding to IDMP Combined Pharmaceutical Dose Form (this includes terms from EDQM Combination Pack or Combined Dose Form lists). Dose form for a single package item is defined in item.doseForm."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * ^binding.description = "EDQM Standard Terms"
  * ^binding.strength = #required
* description 0..1 string "Textual description of the product, e.g. including package description."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
* item 0..* Base "A medication item. For combination packs, this can be multiple manufactured items with each item having its own dose form and ingredients+strengths defined."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * doseForm 0..1 CodeableConcept "Administrable or manufactured item dose form, depending on the type of medication definition. This should not include combined dose forms."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^binding.description = "EDQM Standard Terms"
    * ^binding.strength = #required
  * ingredient 0..* Base "Ingredients."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * isActive 0..1 boolean "Marks whether the ingredient is considered an active ingredient. Excipients are typically not needed, and by default only active ingredients are expected."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD)
    * substance 1..1 CodeableConcept "Substance."
      * insert Full(#SHALL)
      * insert Basic(#SHOULD)
      * ^binding.description = "EMA SPOR SMS"
      * ^binding.strength = #required
    * strengthInfo 0..1 Base "Strength of the product - amount of substance per unit."
      * insert Full(#SHOULD)
      * insert Basic(#SHOULD)
      * strength[x] 1..1 Ratio or string "Concentration or presentation strength, e.g '100 mg/1 ml' or '500 mg per 1 tablet'."
        * insert Full(#SHALL)
        * insert Basic(#SHOULD)
      * basisOfStrengthSubstance 0..1 CodeableConcept "Substance that the strength refers to, especially when different from .item.strength.substance."
        * insert Full(#SHOULD)
        * insert Basic(#SHOULD)
        * ^binding.description = "EMA SPOR SMS"
        * ^binding.strength = #required
  * unitOfPresentation 0..1 CodeableConcept "Unit of presentation for the manufactured item (tablet, vial, tube). Typically, the smallest countable object in the package."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^binding.description = "EDQM Standard Terms"
    * ^binding.strength = #required
  * containedQuantity 0..1 Ratio "Manufactured item quantity per one item (3 ml / 1 vial)."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^binding.description = "UCUM for units of measure. EDQM Standard Terms for units of presentation."
    * ^binding.strength = #required
  * amount 0..1 Quantity "Number of such items in this product (5 vials). The combined amount of all items will be considered to be the total package size."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^binding.description = "UCUM for units of measure. EDQM Standard Terms for units of presentation."
    * ^binding.strength = #required
  * packageType 0..1 CodeableConcept "Type of package of the medication item."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^binding.description = "EDQM Standard Terms for packaging."
    * ^binding.strength = #required
* device 0..* Base "Administration device included in the product. Devices that are not inside the medication package are excluded."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * deviceQuantity 1..1 Quantity "Number of devices."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
  * device[x] 1..1 CodeableConcept or EHDSDevice "Device coded."
    * insert Full(#SHALL)
    * insert Basic(#SHOULD)
    * ^binding.description = "EDQM Standard Terms"
    * ^binding.strength = #required
* characteristic 0..* Base "Additional features of the product (e.g. reimbursable, sugar-free, easy-open cap, score-lined). It is expected that implementers will define a valueset supporting their use cases."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * type 1..1 CodeableConcept "A code expressing the type of characteristic."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^binding.description = "Not defined"
    * ^binding.strength = #required
  * value[x] 0..1 boolean or CodeableConcept or string or Quantity or dateTime or integer or decimal or Ratio "Description of the characteristic value."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
    * ^binding.description = "UCUM for units of measure"
    * ^binding.strength = #required
* batch 0..1 Base "Batch information of a medicinal product. Typically recorded during dispense or administration, rarely known or relevant for a prescription/request."
  * insert Full(#SHOULD)
  * insert Basic(#SHOULD)
  * lotNumber 0..1 string "Batch identifier of the medicinal product."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
  * expirationDate 0..1 dateTime "Batch expiration date of the medicinal product."
    * insert Full(#SHOULD)
    * insert Basic(#SHOULD)
