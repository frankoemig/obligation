Instance: MapOriginalToProposed
InstanceOf: ConceptMap
Usage: #definition
* url = "http://v2.hl7.org/fhir/ConceptMap/MapOriginalToProposed"
* version = "5.0.0"
* name = "MapOriginalToProposed"
* title = "MapOriginalToProposed Mapping"
* status = #draft
* experimental = true
* date = "2024-04-25"
* publisher = "FO"
* description = "A mapping between the FHIR obligation codes, 5.0.0, and the ones proposed here."
* jurisdiction = urn:iso:std:iso:3166#US
* purpose = "The purpose is just to help to understand how current codes would be used in the future"
* sourceScopeUri = "http://hl7.org/fhir/CodeSystem/obligation|5.1.0-cibuild"
* targetScopeUri = "http://v2.hl7.org/fhir/ValueSet/obligationProposedActive"
* group.source = "http://hl7.org/fhir/CodeSystem/obligation|5.1.0-cibuild"
* group.target = "http://v2.hl7.org/fhir/CodeSystem/obligationProposed"

* group.element[+].code = #SHALL:able-to-populate
* group.element[=].target.code = #SHALL:populate
* group.element[=].target.relationship = #equivalent
* group.element[=].target.comment = "the ability to populate something has to be proven by provding the data"

* group.element[+].code = #SHOULD:able-to-populate
* group.element[=].target.code = #SHOULD:populate
* group.element[=].target.relationship = #related-to

* group.element[+].code = #MAY:able-to-populate
* group.element[=].target.code = #MAY:populate
* group.element[=].target.relationship = #related-to

* group.element[+].code = #SHALL:populate
* group.element[=].target.code = #SHALL:populate
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHOULD:populate
* group.element[=].target.code = #SHOULD:populate
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHALL:in-narrative
* group.element[=].target.code = #SHALL:(populate)into-narrative
* group.element[=].target.relationship = #equivalent
* group.element[=].target.comment = "specific for FHIR"

* group.element[+].code = #SHOULD:in-narrative
* group.element[=].target.code = #SHOULD:(populate)into-narrative
* group.element[=].target.relationship = #equivalent
* group.element[=].target.comment = "specific for FHIR"

* group.element[+].code = #MAY:in-narrative
* group.element[=].target.code = #MAY:(populate)into-narrative
* group.element[=].target.relationship = #equivalent
* group.element[=].target.comment = "specific for FHIR"

* group.element[+].code = #SHALL:exclude-narrative
* group.element[=].target.code = #SHALLNOT:(populate)into-narrative
* group.element[=].target.relationship = #equivalent
* group.element[=].target.comment = "specific for FHIR"

* group.element[+].code = #SHOULD:exclude-narrative
* group.element[=].target.code = #SHOULDNOT:(populate)into-narrative
* group.element[=].target.relationship = #equivalent
* group.element[=].target.comment = "specific for FHIR"

* group.element[+].code = #SHALL:user-input
* group.element[=].target.code = #SHALL:(populate)from-ui
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHOULD:user-input
* group.element[=].target.code = #SHOULD:(populate)from-ui
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #MAY:user-input
* group.element[=].target.code = #MAY:(populate)from-ui
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHALL:explain
* group.element[=].target.code = #SHALL:document
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHOULD:explain
* group.element[=].target.code = #SHOULD:document
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHALL:persist
* group.element[=].target.code = #SHALL:persist
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHOULD:persist
* group.element[=].target.code = #SHOULD:persist
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #MAY:persist
* group.element[=].target.code = #MAY:persist
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHALL:no-alter
* group.element[=].target.code = #SHALLNOT:modify
* group.element[=].target.relationship = #equivalent
* group.element[=].target.comment = "instead of duplicate (inverse) codes the negation should be used"

* group.element[+].code = #SHOULD:no-alter
* group.element[=].target.code = #SHOULDNOT:modify
* group.element[=].target.relationship = #equivalent
* group.element[=].target.comment = "instead of duplicate (inverse) codes the negation should be used"

* group.element[+].code = #MAY:alter
* group.element[=].target.code = #MAY:modify
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHALL:no-error
* group.element[=].target.code = #SHALLNOT:error
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHOULD:no-error
* group.element[=].target.code = #SHOULDNOT:error
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHALL:reject-invalid
* group.element[=].target.code = #SHALL:reject-invalid
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHOULD:reject-invalid
* group.element[=].target.code = #SHOULD:reject-invalid
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHALL:accept-invalid
* group.element[=].target.code = #SHALL:accept-invalid
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHOULD:accept-invalid
* group.element[=].target.code = #SHOULD:accept-invalid
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHALL:handle
* group.element[=].target.code = #SHALL:process
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHOULD:handle
* group.element[=].target.code = #SHOULD:process
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHALL:display
* group.element[=].target.code = #SHALL:display
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHOULD:display
* group.element[=].target.code = #SHOULD:display
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #MAY:display
* group.element[=].target.code = #SHOULD:display
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHALL:process
* group.element[=].target.code = #SHALL:process
* group.element[=].target.relationship = #equivalent
* group.element[=].target.comment = "what is the difference to SHALL:handle?"

* group.element[+].code = #SHOULD:process
* group.element[=].target.code = #SHOULD:process
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #MAY:process
* group.element[=].target.code = #MAY:process
* group.element[=].target.relationship = #related-to

* group.element[+].code = #SHALL:print
* group.element[=].target.code = #SHALL:print
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHOULD:print
* group.element[=].target.code = #SHOULD:print
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #MAY:print
* group.element[=].target.code = #MAY:print
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHALL:ignore
* group.element[=].target.code = #SHALLNOT:process
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #SHOULD:ignore
* group.element[=].target.code = #SHOULDNOT:process
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #MAY:ignore
* group.element[=].target.code = #MAYNOT:process
* group.element[=].target.relationship = #equivalent
* group.element[=].target.comment = "MAYNOT normally does not make sense."

* group.element[+].code = #v2-re
* group.element[=].target.code = #SHALL:process
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #ihe-r2
* group.element[=].target.code = #SHALL:process
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #std
* group.element[=].target.code = #SHALL:process
* group.element[=].target.relationship = #equivalent


//* group.unmapped.mode = #fixed
//* group.unmapped.code = #in-narrative
//* group.unmapped.display = "in narrative"
//* group.unmapped.relationship = #related-to
