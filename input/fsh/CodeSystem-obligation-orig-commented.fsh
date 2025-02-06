Alias: $ObligationCS = http://v2.hl7.org/fhir/CodeSystem/obligationProposed


CodeSystem: ObligationOrigCommentedCodes
Id: obligationOrigCommented
Title: "Supplementing original Obligation Codes (from Grahame, reduced text/property, but commented)"
Description: """This codesystem is a supplement to the original by providing comments and proposals."""

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir

* ^version = "5.1.0-cibuild"
* ^status = #active
* ^experimental = true
* ^publisher = "FO"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/conformancewg"
* ^compositional = true
* ^content = #supplement
* ^supplements =  "http://hl7.org/fhir/CodeSystem/obligation"

* ^property[+].code = #parent
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#parent"
* ^property[=].type = #code

//* ^property[+].code = #qualifier
//* ^property[=].description = "Indicates the level of adherence expected to the obligation concept"
//* ^property[=].type = #code

* ^property[+].code = #converse
* ^property[=].description = "Indicates another obligation code with an opposite meaning to this one.  A single obligation cannot list two converse codes and an application cannot satisfy both a code and its coverse (though if the obligation strength for both is SHOULD or MAY, an application could conform with both obligations by adhering to one and not the other)."
* ^property[=].type = #code

* ^property[+].code = #comment
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#comment"
* ^property[=].description = "comment from Conformance WG"
* ^property[=].type = #string

* ^property[+].code = #equivalent
* ^property[=].description = "equivalent code in the proposed codesystem"
* ^property[=].type = #code


* #able-to-populate "be able to populate" ""
* #populate-if-known "populate if known" ""
  * ^property[+].code = #comment
  * ^property[=].valueString = "same as populate"
* #populate "populate" ""
  * ^property[+].code = #comment
  * ^property[=].valueString = "presence of data has to be determined by minimum cardinality"
* #in-narrative "include in narrative" ""
  * ^property[+].code = #comment
  * ^property[=].valueString = "Can be managed by using the text element directly."
* #exclude-narrative "exclude from narrative" ""
  * ^property[+].code = #comment
  * ^property[=].valueString = "Can be managed by using negation."
* #user-input "allow user input" ""
  * ^property[+].code = #comment
  * ^property[=].valueString = "to be taken from UI"
* #explain "populate or document irrelevance" ""
* #persist "persist" ""
  * ^property[+].code = #equivalent
  * ^property[=].valueCode = $ObligationCS#persist
* #no-alter "not alter" ""
  * ^property[+].code = #comment
  * ^property[=].valueString = "NO modification, use negative"
* #no-error "not error if present" ""
* #reject-invalid "reject invalid" ""
* #accept-invalid "accept invalid" ""
  * ^property[+].code = #converse
  * ^property[=].valueCode = #reject-invalid
* #handle "correctly handle" ""
  * ^property[+].code = #equivalent
  * ^property[=].valueCode = $ObligationCS#process
* #display "display" ""
  * ^property[+].code = #equivalent
  * ^property[=].valueCode = $ObligationCS#display
* #process "process" ""

* #print "print" ""
  * ^property[+].code = #equivalent
  * ^property[=].valueCode = $ObligationCS#print

* #ignore "ignore" ""
  * ^property[+].code = #comment
  * ^property[=].valueString = "Can be managed by negations."

* #SHALL:able-to-populate "SHALL be able to populate" ""
* #SHOULD:able-to-populate "SHOULD be able to populate" ""
* #MAY:able-to-populate "MAY be able to populate" ""

* #SHALL:populate-if-known "SHALL be able to populate if known" ""
* #SHOULD:populate-if-known "SHOULD be able to populate if known" ""

* #SHALL:populate "SHALL populate" ""
* #SHOULD:populate "SHOULD populate" ""

* #SHALL:in-narrative "SHALL include in narrative" ""
* #SHOULD:in-narrative "SHOULD include in narrative" ""
* #MAY:in-narrative "MAY include in narrative" ""

* #SHALL:exclude-narrative "SHALL exclude from narrative" ""
* #SHOULD:exclude-narrative "SHOULD exclude from narrative" ""
* #MAY:exclude-narrative "MAY exclude from narrative" ""

* #SHALL:user-input "SHALL take from user input" ""
* #SHOULD:user-input "SHOULD take from user input" ""
* #MAY:user-input "MAY take from user input" ""

* #SHALL:explain "SHALL populate or dcoumtn irrelevance" ""
* #SHOULD:explain "SHOULD populate or dcoumtn irrelevance" ""

* #SHALL:persist "SHALL persist" ""
* #SHOULD:persist "SHOULD persist" ""
* #MAY:persist "MAY persist" ""

* #SHALL:no-alter "SHALL not alter" ""
  * ^property[+].code = #comment
  * ^property[=].valueString = "via SHALLNOT:modify"
* #SHOULD:no-alter "SHOULD not alter" ""
  * ^property[+].code = #comment
  * ^property[=].valueString = "via SHOULDNOT:modify"
* #MAY:no-alter "MAY not alter" ""
  * ^property[+].code = #comment
  * ^property[=].valueString = "via MAYNOT:modify"

* #SHALL:no-error "SHALL not error if present" ""
* #SHOULD:no-error "SHOULD not error if present" ""

* #SHALL:reject-invalid "SHALL reject invalid" ""
* #SHOULD:reject-invalid "SHOULD reject invalid" ""

* #SHALL:accept-invalid "SHALL accept invalid" ""
* #SHOULD:accept-invalid "SHOULD accept invalid" ""

* #SHALL:handle "SHALL handle correctly" ""
* #SHOULD:handle "SHOULD handle correctly" ""

* #SHALL:display "SHALL display" ""
* #SHOULD:display "SHOULD display" ""
* #MAY:display "MAY display" ""

* #SHALL:process "SHALL process" ""
* #SHOULD:process "SHOULD process" ""
* #MAY:process "MAY process" ""

* #SHALL:print "SHALL print" ""
* #SHOULD:print "SHOULD print" ""
* #MAY:print "MAY print" ""

* #SHALL:ignore "SHALL ignore" ""
* #SHOULD:ignore "SHOULD ignore" ""
* #MAY:ignore "MAY ignore" ""

* #v2-re "V2 RE (required but may be empty)" ""
  * ^property[+].code = #comment
  * ^property[=].valueString = "wrong interpretation; intent is 'mustSupport'."

* #ihe-r2 "IHE R2" "R2 as defined in IHE Appendix Z"
  * ^property[+].code = #comment
  * ^property[=].valueString = "Appendix Z is FHIR only, so no need to specify; R2 is in principle the same as 'RE'."

* #std "Standard obligations" ""
  * ^property[+].code = #comment
  * ^property[=].valueString = "unclear what 'standard' means"
