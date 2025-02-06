// @Name: Complex Extensions
// @Description: Examples of extensions with sub-extensions. Note that an extension cannot have BOTH a value and extensions.

Extension: MyNewObligationExtension
Id:        new-obligation
Title:     "New Obligation Extension"
Description: "Modified Extension to handle the obligations as I would like to see it. Also allowing for my own codesystems - where necessary."

* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false


* insert ExtensionContext(ElementDefinition)
* insert ExtensionContext(ElementDefinition.type)
* insert ExtensionContext(StructureDefinition)

* extension contains
    code 1..1 MS and
    elementId 0..1 MS and
    actor 0..1 MS and
	documentation 0..1 MS and
	valueCalculation 0..1 MS and
	referenceElementId 0..1 MS and
	usage 0..1 MS and
	filter 0..1 MS and
	filterDocumentation 0..1 MS and
	process 0..* MS

* extension[code].value[x] only code
* extension[code].value[x] from http://v2.hl7.org/fhir/ValueSet/obligationProposed (required)

* extension[elementId].value[x] only string
* extension[actor].value[x] only Canonical(ActorDefinition)
* extension[documentation].value[x] only string
* extension[usage].value[x] only UsageContext
* extension[valueCalculation].value[x] only string
* extension[referenceElementId].value[x] only string
* extension[filter].value[x] only string
* extension[filterDocumentation].value[x] only string
* extension[process].value[x] only Canonical(code)

// Definitions of in-line extensions
* insert DocumentExtension (
    code,
    "Composite code describing the nature of the obligation",
    "...")
* insert DocumentExtension (
    elementId,
	"When the obligation is on the profile itself\, not a particular element\, a list of elements to which it applies",
    "Limits obligation to some repeats by FHIRPath")
* insert DocumentExtension (
    actor,
    "who is acting on behalf or for this obligation",
    "...")
* insert DocumentExtension (
    documentation,
    "an explanation of what is intended with this specific obligation instance - beyond the formal definition",
    "...")
* insert DocumentExtension (
    usage,
    "how to use this obligation\, eg. for specific debatable fields like gender etc.",
    "...")
* insert DocumentExtension (
    valueCalculation,
    "a specific formula how the value for the attached field can be created/calculated; this is esp. for FHIR narratives",
    "...")
* insert DocumentExtension (
    referenceElementId,
    "references\, eg. names\, the element on which the value depends",
    "...")
* insert DocumentExtension (
    filter,
    "When the obligation is on the profile itself\, not a particular element\, a list of elements to which it applies",
    "...")
* insert DocumentExtension (
    filterDocumentation,
    "an explanation of what the filter should achieve",
    "...")
* insert DocumentExtension (
    process, 
    "process ...",
    "...")


// This rule set limits the application of an extension to the given path
RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"

// The strings defined for short and definition should not be quoted, and any comma must be escaped with a backslash.
RuleSet: DocumentExtension(path, short, definition)
* extension[{path}] ^short = {short}
* extension[{path}] ^definition = {definition}

