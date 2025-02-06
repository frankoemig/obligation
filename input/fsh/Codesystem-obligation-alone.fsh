CodeSystem: ObligationAloneCodes
Id: obligationAlone
Title: "Obligation Alone Codes"
Description: """This is the Obligation CodeSystem (alone) as part of the triplet."""

* ^url = "http://v2.hl7.org/fhir/CodeSystem/obligationAlone"
* ^status = #active
* ^version = "0.1.0"
* ^experimental = true
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^valueSet = "http://v2.hl7.org/fhir/ValueSet/obligationAlone"
* ^content = #complete
* ^count =  24

* ^property[+].code = #parent
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#parent"
* ^property[=].type = #code

* ^property[+].code = #actor
* ^property[=].type = #code
* ^property[=].description = "what type of actor"

* ^property[+].code = #comment
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#comment"
* ^property[=].type = #string
* ^property[=].description = "comments/remarks"


* #send "send" "populate with values from somewhere"
  * ^property[+].code = #actor
  * ^property[=].valueCode = #creator
  * ^property[+].code = #comment
  * ^property[=].valueString = "prohibited elements can be expressed by 'SHALL NOT send'."
  * #from-ui "from UI" "Take the data from UI, so that the user has the ability to enter it."
    * ^property[+].code = #parent
    * ^property[=].valueCode = #send
    * #from-textfield "from textfield in UI"	"Take the data from a test input field"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #from-ui
      * ^property[+].code = #comment
      * ^property[=].valueString = "too explicit/dedicated, concerns application details"
    * #from-widget "from widget in UI"	"Take the data from a specific widget"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #from-ui
      * ^property[+].code = #comment
      * ^property[=].valueString = "too explicit/dedicated, concerns application details"
    * #from-combobox "from combobox in UI"	"Take the data from a combobox"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #from-ui
      * ^property[+].code = #comment
      * ^property[=].valueString = "too explicit/dedicated, concerns application details"
  * #from-store "from persistence layer" "Take data from storage/persistence layer."
    * ^property[+].code = #parent
    * ^property[=].valueCode = #send
  * #from-input "from input stream" "As a router, take data from input stream."
    * ^property[+].code = #parent
    * ^property[=].valueCode = #send
    * ^property[+].code = #actor
    * ^property[=].valueCode = #router
  * #as-constant "constant" "added as constant to the data, no special treatment done internally"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #send
* #process "process/receive" "Data received is processed as needed for general message consumption, store permitted."
  * ^property[+].code = #actor
  * ^property[=].valueCode = #consumer
  * ^property[+].code = #comment
  * ^property[=].valueString = "elements that are to be ignored can be expressed by 'SHALL NOT process'."
  * #follow-up "follow-up activity" "what to do internally"
    * #display "display/present (UI)" "present the data on a display"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #follow-up
    * #store "store" "store/persist the data somewhere"
      * ^property[+].code = #actor
      * ^property[=].valueCode = #router
      * ^property[+].code = #parent
      * ^property[=].valueCode = #follow-up
      * #archive "archive" "store/persist the archive which ensures longlasting access"
      * #in-database "store in a database"	"store in a database"
        * ^property[+].code = #comment
        * ^property[=].valueString = "too explicit/dedicated, concerns application details"
      * #in-file "store in a file"	"store in a file"
        * ^property[+].code = #comment
        * ^property[=].valueString = "too explicit/dedicated, concerns application details"
    * #print "print" "print the data (somewhere)"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #follow-up
    * #eval "evaluate"	"consider the data in order to interpret other correctly"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #follow-up
    * #integrate "integrate into data" "to UPDATE existing data by merging other data with the existing data in a controlled manner"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #follow-up
    * #forward  "forward" "as a router forward to the next recipient"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #follow-up
      * ^property[+].code = #actor
      * ^property[=].valueCode = #router
  * #respond "activity as response" "what to respond"
    * #warning	"return warnings" "return possible warnings"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #respond
      * #error	"return error" "return possible errors"
        * ^property[+].code = #parent
        * ^property[=].valueCode = #warning

* #other "other obligations" "other obligations beyond"
  * #explain "explain" "provide an explanation in a capability statement how this element is handled"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #other

//* #inherit "inherit" "inherit the obligations to dependent elements in the hierarchic tree"
//  * ^property[+].code = #actor
//  * ^property[=].valueCode = #profiler
//  * #inh-overrule	"overrule" "the processing rules inherited from above can/are overwritten"
//  * #inh-add "add" "obligations to be added to the inherited ones."
