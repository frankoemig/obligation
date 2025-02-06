CodeSystem: DataExpectation
Id: dataExpectation
Title: "Data Expectation Codes"
Description: """This is the codesystem describing exptectations for Data Handling.
It has to be discussed whether these codes can become more specialised activities!?"""

* ^url = "http://v2.hl7.org/fhir/CodeSystem/dataExpectation"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = true
* ^date = "2022-10-10"
* ^publisher = "FO"
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^valueSet = "http://v2.hl7.org/fhir/ValueSet/dataExpectation"
* ^content = #complete
* ^count = 18

* ^property[+].code = #parent
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#parent"
* ^property[=].type = #code

* ^property[+].code = #actor
//* ^property[=].uri = "http://v2.hl7.org/fhir/CodeSystem/concept-properties#actor"
* ^property[=].description = "associated actor, i.e. to whom it may apply"
* ^property[=].type = #code

* #expected "expected"	"data fits to expectations/specification"
  * #unaltered   "preserve" "preserve what you get"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #expected
    * #exactly   "exactly" "exactly what is specified, nothing else"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #unaltered
  * #modify	"modify" "allow for modifications of the data"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #expected
    * ^property[+].code = #actor
    * ^property[=].valueCode = #consumer
    * #assocation "assocation" "taken by association"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #modify
    * #equivalent "equivalent"	"in an equivalent way"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #modify
    * #translate "translate" "Data received is preserved by 1:1 mapping/translation to an internal value that is semantically equivalent, that preserves the temporal aspect of the translation."
      * ^property[+].code = #parent
      * ^property[=].valueCode = #modify
      * #semantically	 "translate semantically" "Two concepts are semantically equivalent if they can substitute for each other in the defined use case with no loss of information used to define the concept."
        * ^property[+].code = #parent
        * ^property[=].valueCode = #translate
      * #clinically	"translate clinically" "Two concepts are clinically equivalent if they can substitute for each other in the defined use case with no impact on clinical interpretation by a trained clinician. This may include further refinements based on the specific domain, e.g., for Lab use case, this would require interpretation that includes the impact of differences in normal ranges."
        * ^property[+].code = #parent
        * ^property[=].valueCode = #translate
    * #reference "reference" "Use referenced data based on stored pointer; stored data is displayed by linking to the corresponding stored value most often the case for data elements that are STORED EXACT by ASSOCIATION."
      * ^property[+].code = #parent
      * ^property[=].valueCode = #modify
    * #truncate	"cut off data" "cut off remaining characters from the data thereby shortening the data"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #modify
    * #more-details	"additional details/values"	"extends the expected data with more/own information, e.g. appartment if street is specified"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #modify
      * ^property[+].code = #actor
      * ^property[=].valueCode = #creator
    * #more-structure	"additional substructures" "provides the data with more granular details, e.g. house number for an address line"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #modify
      * ^property[+].code = #actor
      * ^property[=].valueCode = #creator
    * #missing	 "data is missing/not available" "provide a null-flavor/absent reason"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #modify
      * ^property[+].code = #actor
      * ^property[=].valueCode = #creator
    * #constant	"added as a constant" "this value has no valid representation or meaning in the sending application, it is just added because it is required to be there"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #modify
* #unexpected	"unexpected values" "how to manage unexpected data (as sender or receiver)"
  * #replaces	"new/other values" "replaces the expected data by something else"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #unexpected
  * #consider	"consider unexpected values" "take vare of values that are coming but not described/specified. Allows for warnings"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #unexpected
