### Support levels and obligations
 

| **Support level name** | **Support level description** |
|---|---|
| Basic | Support that enables the exchange of personal electronic health data with the focus on unstructured content representation, while providing limited support for detailed underlying data structures. |
| Full | Support that enables the exchange of personal electronic health data with the focus on structured content representation. |
{:.table-bordered .table-striped .thead-light} 


| **Obligation name** | **Obligation description** |
|---|---|
| SHOULD | It is recommended that an EHR system claiming compliance with the EEHRxF implements support for the element. |
| SHALL | An EHR system claiming compliance with the EEHRxF shall implement support for the element unless the element is out of scope of the EHR system as evidenced by a clear, explicit, and verifiable justification. |
{:.table-bordered .table-striped .thead-light} 

### Classification of EHR systems and corresponding support levels

| **Class identifier** | **EHR systems included in the class** | **Required level of support** |
|---|---|---|
| EHR-Store | EHR systems that perform the ‘store’ data operation. | Full |
| EHR-ExportAPI | EHR systems that perform the ‘export through API’ data operation. | Full |
| EHR-ExportDownload | EHR systems that perform the ‘export through download’ data operation. | Full |
| EHR-ImportAPI | EHR systems that perform the ‘import through API’ data operation. | Basic |
| EHR-ImportUpload | EHR systems that perform the ‘import through upload’ data operation. | Basic |
| EHR-Intermediate | EHR systems that perform the ‘intermediate’ data operation. | N/A – The EHR system shall transfer personal electronic health data without introducing any modifications. |
| EHR-Convert | EHR systems that perform the ‘convert’ operation. | Full |
| EHR-Edit | EHR systems that perform the ‘edit’ operation. | Full |
| EHR-Display | EHR systems that perform the ‘display’ operation. | Basic |
{:.table-bordered .table-striped .thead-light} 
  

### Obligation vs cardinality

Obligations and cardinality of data elements both signal requirements.

Cardinality requirements apply to every instance of data. For example, if the cardinality of an element is 1..*, all instances must have the element filled in with an appropriate value in order to pass the validation.  

Obligation requirements apply to EHR systems and relate to system capabilities. SHALL *able-to-populate* means the data element must be supported in the EHR system. When the cardinality of such element is 0..* or 0..1, the system does not have to populate this element for every instance but only where the data is applicable and available. 


### Authoring rules

- Obligations are authored directly in the models.  
- Obligations use the [HL7 FHIR Obligations framework](https://hl7.org/fhir/R5/obligations.html) (including the required value sets)
- All elements with cardinality 1.. correspond to SHALL *process* for Full support. 
- Terminology obligations are preferably provided as terminology bindings in the model (description only).  
- Introducing default values for elements can be helpful for limiting the number of obligations (e.g. if numberOfRepeats is not provided, it is considered to be '0' - this allows systems that never allow repeats to be interoperable without filling in this data).
- When a polymorphic element is equipped with an obligation, then the obligation is marked on element[x] level. In case one data type is preferred over others, the clarification may be added in the documentation (e.g. System SHALL support at least Quantity data type for the element. System SHOULD support boolean data type for the element.).
- When a backbone element has an obligation SHOULD, MAY, or no obligation, the obligations of subelements would only apply when the block itself is implemented (similar to how cardinalities are interpreted). When the obligations of subelements are already clear from the cardinalities, the redundant obligations do not have to be provided unless needed for additional clarity (i.e. providing comments). Typically, the subelements should not have a stronger obligation than the upper level elements in the element tree.
- When models are derived from each other, the child model should not have a stronger obligation on an element than its parent model has for the same element. Since obligations are displayed cumulatively, the SHOULD on the parent would remain visible when the same element is SHALL downstreams.  


### Obligations on logical models vs FHIR profiles  

Logical information models are designed as the source of requirements. They do not serve well as implementable and testable specifications as they are independent of any specific implementation technology.  

The requirements defined in logical models (including related obligations) are used as the basis for defining FHIR implementation guides. The logical models are realised as FHIR profiles on FHIR resources, and obligations are replicated for the corresponding elements in FHIR profiles. Mappings between logical models and FHIR profiles are provided in FHIR IGs.  

Cross-border services derive requirements from the FHIR IGs, but may further restrict the specification and add or strengthen obligations where necessary.  

  