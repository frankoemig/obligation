CodeSystem: Verb
Id: verb
Title: "Verb Codes"
Description: "This is the Verb CodeSystem as part of the triplet."
* ^url = "http://v2.hl7.org/fhir/CodeSystem/verb"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = true
* ^date = "2022-08-17"
* ^publisher = "FO"
* ^caseSensitive = true
* ^valueSet = "http://v2.hl7.org/fhir/ValueSet/verb"
* ^content = #complete
* ^count = 6

* insert DefineProperty(#testable, #boolean, "testable requirement")
* insert DefineProperty(#useful, #boolean, "is this useful information")
* insert DefineProperty(#negation, #boolean, "is this a negation")

* insert AddCode(#SHALL, "SHALL", "shall implement something - absolute requirement", true, true)
* insert AddCode(#SHOULD, "SHOULD", "should implement something - advice", false, true)
* insert AddCode(#MAY, "MAY", "can decide to implement something", false, true)
* insert AddCode(#MAYNOT, "MAY NOT", "may not implement something", false, false)
* insert AddCode(#SHOULDNOT, "SHOULD NOT", "should not implement something - advice", false, true)
* insert AddCode(#SHALLNOT, "SHALL NOT", "shall not implement something - absolutely forbidden to execute the associated activity", true, true)

* #MAYNOT ^property[+].code = #negation
* #MAYNOT ^property[=].valueBoolean = true
* #SHOULDNOT ^property[+].code = #negation
* #SHOULDNOT ^property[=].valueBoolean = true
* #SHALLNOT ^property[+].code = #negation
* #SHALLNOT ^property[=].valueBoolean = true

RuleSet: AddCode(code, display, definition, value1, value2)
* {code} {display} {definition}
  * ^property[+].code = #testable
  * ^property[=].valueBoolean = {value1}
  * ^property[+].code = #useful
  * ^property[=].valueBoolean = {value2}

RuleSet: DefineProperty(code, type, description)
* ^property[+].code = {code}
* ^property[=].type = {type}
* ^property[=].description = {description}
  