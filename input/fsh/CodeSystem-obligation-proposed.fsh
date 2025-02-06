CodeSystem: ObligationProposedCodes
Id: obligationProposed
Title: "Proposed Obligation Codes"
Description: """This codesystem is a **proposal for obligation codes** in response to Grahame's codesystem for obligations.
It represents an ontology that not only combines the other three codesystems (verb, obligation, data expectation), but also introduces some more axes/dimensions 
to better explain the meaning of the codes."""

* ^url = "http://v2.hl7.org/fhir/CodeSystem/obligationProposed"
* ^version = "0.1.0"
* ^language = #en
* ^status = #draft
* ^experimental = true
* ^publisher = "FO"
* ^copyright = "Conformance WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/conformancewg"
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^compositional = true
* ^content = #complete

* ^property[+].code = #parent
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#parent"
* ^property[=].description = "Who is the parent element of this concept? Multiple parents are possible."
* ^property[=].type = #code

* ^property[+].code = #negation
* ^property[=].description = "Negating the underlying combination of concepts."
* ^property[=].type = #boolean

* ^property[+].code = #abstract
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#notSelectable"
* ^property[=].description = "Is this an abstract concept, ie. defined to establish the ontology, so that it cannot be used directly. (only valid for the concept where it is defined)"
* ^property[=].type = #boolean

* ^property[+].code = #testable
* ^property[=].description = "Is this a testable requirement?"
* ^property[=].type = #code

* ^property[+].code = #comment
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#comment"
* ^property[=].description = "Comment from Conformance WG"
* ^property[=].type = #string

* ^property[+].code = #converse
* ^property[=].description = "What is the opposite item"
* ^property[=].type = #code

* ^property[+].code = #constrainTo
* ^property[=].description = "What is a possible constraint? This can be done with the hierarchy, or, in case of conformance verbs, explicitly following this option, although this is not recommended."
* ^property[=].type = #code

* ^property[+].code = #applyOn
* ^property[=].description = "Apply on which element level: root, node, leaf, all, notRoot, notLeaf"
* ^property[=].type = #code

* ^property[+].code = #actor
* ^property[=].description = "Actor"
* ^property[=].type = #code

//* ^property[+].code = #device
//* ^property[=].description = "Device"
//* ^property[=].type = #code


* #Negation "Negation" "Negate the meaning of the concepts that inherit 'negation'. (Negation is not negated again.)"
  * ^property[+].code = #abstract
  * ^property[=].valueBoolean = true
  * ^property[+].code = #negation
  * ^property[=].valueBoolean = true
  * ^property[+].code = #comment
  * ^property[=].valueString = "In principle, negation is to be inherited from concepts that are negated already. Therefore, a negation shall only take effect once, and not negate a negation."

* #Verbs "conformance verbs" "Conformance verbs are to be used to define the requirement level that is the foundation to indicate what has to be tested."
  * ^property[+].code = #abstract
  * ^property[=].valueBoolean = true
  * ^property[+].code = #comment
  * ^property[=].valueString = "Conformance verbs are primarily interesting for testing, i.e. to indicate what has to be tested. The other concepts can be taken as hints to a developer."
  * #MAY "MAY" "it is to the developers choice whether an element is supported or not"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #Verbs
    * ^property[+].code = #constrainTo
    * ^property[=].valueCode = #SHOULD
    * ^property[+].code = #constrainTo
    * ^property[=].valueCode = #SHOULDNOT
    * ^property[+].code = #testable
    * ^property[=].valueCode = #notTestable
    * ^property[+].code = #converse
    * ^property[=].valueCode = #MAYNOT
    * ^property[+].code = #comment
    * ^property[=].valueString = "MAY primarily provides additional general information, but is still for the discretion of the implementer/developer."
    * #SHOULD "SHOULD" "It is a recommendation to take care of this element"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #MAY
      * ^property[+].code = #constrainTo
      * ^property[=].valueCode = #SHALL
      * ^property[+].code = #constrainTo
      * ^property[=].valueCode = #SHOULDNOT
      * ^property[+].code = #constrainTo
      * ^property[=].valueCode = #SHALLNOT
      * ^property[+].code = #comment
      * ^property[=].valueString = "Just a hint."
      * #SHALL "SHALL" "This verb denotes a testable requirement."
        * ^property[+].code = #parent
        * ^property[=].valueCode = #SHOULD
        * ^property[+].code = #testable
        * ^property[=].valueCode = #testable
  * #MAYNOT "MAYNOT" "It is to the developers choice whether an element is probably not supported."
    * ^property[+].code = #parent
    * ^property[=].valueCode = #Verbs
    * ^property[+].code = #abstract
    * ^property[=].valueBoolean = true
    * ^property[+].code = #parent
    * ^property[=].valueCode = #Negation
    * ^property[+].code = #converse
    * ^property[=].valueCode = #MAY
    * ^property[+].code = #comment
    * ^property[=].valueString = "MAYNOT is no reasonable option. It is mentioned though to complete the hierarchy."
    * ^property[+].code = #testable
    * ^property[=].valueCode = #notTestable
    * #SHOULDNOT "SHOULD NOT" "it is a recommendation NOT to take care of this element (for some reasons)"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #MAYNOT
      * ^property[+].code = #negation
      * ^property[=].valueBoolean = true
      * ^property[+].code = #constrainTo
      * ^property[=].valueCode = #SHALLNOT
      * ^property[+].code = #constrainTo
      * ^property[=].valueCode = #SHOULD
      * ^property[+].code = #constrainTo
      * ^property[=].valueCode = #SHALL
      * ^property[+].code = #converse
      * ^property[=].valueCode = #SHOULD
      * #SHALLNOT "SHALL NOT" "it is forbidden to handle this element"
        * ^property[+].code = #parent
        * ^property[=].valueCode = #SHOULDNOT
        * ^property[+].code = #negation
        * ^property[=].valueBoolean = true
        * ^property[+].code = #testable
        * ^property[=].valueCode = #testable
        * ^property[+].code = #converse
        * ^property[=].valueCode = #SHALL
        * ^property[+].code = #comment
        * ^property[=].valueString = "It may happen for some elements, eg. due to security reasons, not to handle (provided/store/etc.) this element."

* #FunctionalType "Functional Type of Requirement" "Functional Type of Requirement"
  * ^property[+].code = #abstract
  * ^property[=].valueBoolean = true
  * #functional "functional" "functional requirement"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #FunctionalType
    * #internal "internal functional" "function that operates on the internal data management"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #functional
    * #return "return functional" "functional requirement on direct returns"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #functional
    * #response "response function" "functional requirement to prepare responses"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #functional
    * #forward "forwarding function" "functional requirement to forward data"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #functional
  * #data "data" "data requirement"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #FunctionalType

* #Testable "Type of Testing" "Type of Testing"
  * ^property[+].code = #abstract
  * ^property[=].valueBoolean = true
  * #testable "testable" "requirement is testable"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #Testable
    * #testableByMachine "machine testable" "requirement is testable by a machine"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #testable
    * #testableByHuman "human testable" "requirement is testable by a human (inspection)"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #testable
      * #withChecklist "checklist" "requirement is testable by using a checklist"
        * ^property[+].code = #parent
        * ^property[=].valueCode = #testableByHuman
  * #notTestable "testable" "requirement is not testable"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #Testable
    * ^property[+].code = #negation
    * ^property[=].valueBoolean = true

* #ActorType "Type of Actor" "An actor can operate in two ways: with the content itself, or as a manager of the instance."
  * ^property[+].code = #abstract
  * ^property[=].valueBoolean = true
  * #transport "transport" "handle the transport of data once the instance is available/accessible"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #ActorType
    * ^property[+].code = #comment
    * ^property[=].valueString = "not sure whether this (and everything related) has to be taken out of this spec?"
  * #content "content mngmt" "manage the data itself"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #ActorType

* #Actor "Actor of Communication" "Actor, i.e. indirect direction of communication"
  * ^property[+].code = #abstract
  * ^property[=].valueBoolean = true
  * #both "sender and/or receiver" "both: sender+receiver resp. creator+consumer"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #Actor
    * ^property[+].code = #abstract
    * ^property[=].valueBoolean = true
    * ^property[+].code = #comment
    * ^property[=].valueString = "an actor can only do one thing at a certain point in time. Therefore, both is not allowed and only listed for documentation."
  * #sender "sender" "sender (transmitter) of data"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #Actor
    * ^property[+].code = #parent
    * ^property[=].valueCode = #transport
    * ^property[+].code = #comment
    * ^property[=].valueString = "Sender does not necessarily need to create the instance."
  * #receiver "receiver" "receiver of data"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #Actor
    * ^property[+].code = #parent
    * ^property[=].valueCode = #transport
  * #creator "creator" "creator of data"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #Actor
    * ^property[+].code = #parent
    * ^property[=].valueCode = #content
    * ^property[+].code = #comment
    * ^property[=].valueString = "Creator does not necessarily need to send the instance."
  * #consumer "consumer" "Consumer of data"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #Actor
    * ^property[+].code = #parent
    * ^property[=].valueCode = #content
  * #router "router" "router of data: shall be receiver and sender!"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #Actor
    * ^property[+].code = #parent
    * ^property[=].valueCode = #transport
    * ^property[+].code = #abstract
    * ^property[=].valueBoolean = true
    * ^property[+].code = #comment
    * ^property[=].valueString = "A router is in principle a combination of receiver and sender, w/ possible changes on the data in between. It should be described as such."

* #Device "Device for Activity" "Device to be used for the activity"
  * ^property[+].code = #abstract
  * ^property[=].valueBoolean = true
  * #screen "screen" "screen/display"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #Device
    * #wideScreen "wide screen" "wide screen/display"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #screen
    * #radScreen "radiologic screen" "screen/display capable of showing radiologic results"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #screen
  * #printer "printer" "printer"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #Device
    * #laserPrinter "laser printer" "laser printer"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #printer
    * #matrixPrinter "matrix printer" "matrix printer"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #printer
      * ^property[+].code = #comment
      * ^property[=].valueString = "Sometimes it is important to use a matrix printer, esp. for creating carbon copies."
  * #portableStorage "portable storage device" "portable storage device"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #Device
    * #usbStick "usb stick" "USB Stick"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #portableStorage
    * #tapeDrive "tape drive" "tape drive"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #portableStorage

* #Media "Media" "different media to be used with specialised devices"
  * ^property[+].code = #abstract
  * ^property[=].valueBoolean = true
  * #paper "paper" "paper"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #Media
  * #stick "stick" "stick"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #Media
  * #disc "disc" "disc"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #Media
  * #tape "tape" "tape"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #Media


* #ElementLevel "Level of Application" "On which level to apply this obligation: root, node, or leaf"
  * ^property[+].code = #abstract
  * ^property[=].valueBoolean = true
  * #root "on root node" "apply obligation on root node only"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #ElementLevel
    * ^property[+].code = #converse
    * ^property[=].valueCode = #notRoot
  * #node "on any node" "apply on any node that is not root or leaf"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #ElementLevel
  * #leaf "on leaf node" "apply on leaf node only"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #ElementLevel
  * #all "on all levels" "application on all levels possible"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #ElementLevel
  * #notRoot "all but root" "apply on non-root nodes only"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #ElementLevel
    * ^property[+].code = #converse
    * ^property[=].valueCode = #root
  * #notLeaf "all but leaf" "apply on non-leaf nodes"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #ElementLevel

* #Activity "Activity" "Activities, aka of general obligation"
  * ^property[+].code = #abstract
  * ^property[=].valueBoolean = true

  * #FunctionalObligations "Functional Obligations" "Functional Obligation describing processsing functionalities"
    * ^property[+].code = #abstract
    * ^property[=].valueBoolean = true
    * ^property[+].code = #parent
    * ^property[=].valueCode = #Activity
    * #ProducerObligations "Resource Producer Obligations" ""
      * ^property[+].code = #parent
      * ^property[=].valueCode = #FunctionalObligations
      * ^property[+].code = #abstract
      * ^property[=].valueBoolean = true

      * #send "send" "convey instance with values to somewhere"
        * ^property[+].code = #parent
        * ^property[=].valueCode = #ProducerObligations
        * ^property[+].code = #parent //actor
        * ^property[=].valueCode = #sender
        * ^property[+].code = #applyOn
        * ^property[=].valueCode = #root
      * #populate "populate" "populate with values from somewhere"
        * ^property[+].code = #parent
        * ^property[=].valueCode = #ProducerObligations
        * ^property[+].code = #parent //actor
        * ^property[=].valueCode = #creator
        * ^property[+].code = #comment
        * ^property[=].valueString = "prohibited elements can be expressed by 'SHALL NOT send'."
        * #from-ui "from UI" "Take the data from UI, so that the user has the ability to enter it."
          * ^property[+].code = #parent
          * ^property[=].valueCode = #populate
        * #from-store "from persistence layer" "Take data from storage/persistence layer."
          * ^property[+].code = #parent
          * ^property[=].valueCode = #populate
        * #generate "generate this data" "This data can be generated."
          * ^property[+].code = #parent
          * ^property[=].valueCode = #populate
          * #from-other "generate from other values" "This data can be generated from other data."
            * ^property[+].code = #parent
            * ^property[=].valueCode = #generate
          * #sequence "generate a sequence number" ""
            * ^property[+].code = #parent
            * ^property[=].valueCode = #generate
        * #from-input "from input stream" "As a router, take data from input stream."
          * ^property[+].code = #parent
          * ^property[=].valueCode = #populate
          * ^property[+].code = #parent //actor
          * ^property[=].valueCode = #router
        * #as-constant "constant" "added as constant to the data, no special treatment done internally"
          * ^property[+].code = #parent
          * ^property[=].valueCode = #populate
        * #into-narrative "narrative" "added to the narrative, no special treatment done internally"
          * ^property[+].code = #parent
          * ^property[=].valueCode = #populate
    * #ConsumerObligations "Resource Consumer Obligations" "Obligation for Consumer"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #FunctionalObligations
      * ^property[+].code = #abstract
      * ^property[=].valueBoolean = true
      * ^property[+].code = #parent
      * ^property[=].valueCode = #receiver
      * #receive "receive" "receive data form somewhere"
        * ^property[+].code = #parent
        * ^property[=].valueCode = #ConsumerObligations
        * ^property[+].code = #parent //actor
        * ^property[=].valueCode = #receiver
        * ^property[+].code = #applyOn
        * ^property[=].valueCode = #root
      * #process "process" "handle data from instances as needed for general message consumption, store permitted."
        * ^property[+].code = #parent
        * ^property[=].valueCode = #ConsumerObligations
        * ^property[+].code = #parent //actor
        * ^property[=].valueCode = #consumer
        * ^property[+].code = #comment
        * ^property[=].valueString = "elements that are to be ignored can be expressed by 'SHALL NOT process'."
        * #follow-up "follow-up activity" "what to do internally"
          * ^property[+].code = #parent
          * ^property[=].valueCode = #process
          * #display "display/present (UI)" "present the data on a display"
            * ^property[+].code = #parent
            * ^property[=].valueCode = #follow-up
//            * ^property[+].code = #device
//            * ^property[=].valueCode = #screen
          * #persist "persist" "persist/store the data somewhere"
            * ^property[+].code = #parent //actor
            * ^property[=].valueCode = #router
            * ^property[+].code = #parent
            * ^property[=].valueCode = #follow-up
            * #archive "archive" "persist/store the archive which ensures longlasting access"
              * ^property[+].code = #parent
              * ^property[=].valueCode = #persist
            * #in-database "persist in a database" "persist in a database"
              * ^property[+].code = #parent
              * ^property[=].valueCode = #persist
              * ^property[+].code = #comment
              * ^property[=].valueString = "too explicit/dedicated, concerns application details"
            * #in-file "store in a file"	"store in a file"
              * ^property[+].code = #parent
              * ^property[=].valueCode = #persist
              * ^property[+].code = #comment
              * ^property[=].valueString = "too explicit/dedicated, concerns application details"
          * #print "print" "print the data (somewhere)"
            * ^property[+].code = #parent
            * ^property[=].valueCode = #follow-up
//            * ^property[+].code = #device
            //* ^property[=].valueCode = #printer
          * #eval "evaluate" "consider the data in order to interpret other correctly"
            * ^property[+].code = #parent
            * ^property[=].valueCode = #follow-up
          * #integrate  "integrate into data" "to UPDATE existing data by merging other data with the existing data in a controlled manner"
            * ^property[+].code = #parent
            * ^property[=].valueCode = #follow-up
        * #respond "activity as response" "what to respond"
          * ^property[+].code = #parent
          * ^property[=].valueCode = #process
          * #warning "return warnings" "return possible warnings"
            * ^property[+].code = #parent
            * ^property[=].valueCode = #respond
            * #error "return error" "return possible errors"
              * ^property[+].code = #parent
              * ^property[=].valueCode = #warning
            * #reject-invalid "reject invalid data" "reject if data is invalid"
              * ^property[+].code = #parent
              * ^property[=].valueCode = #warning
          * #accept-invalid "accept invalid data" "accept if data is invalid"
            * ^property[+].code = #parent
            * ^property[=].valueCode = #respond

    * #ExchangerObligations "Resource Exchanger Obligations" "needs clarification ..."
      * ^property[+].code = #parent
      * ^property[=].valueCode = #FunctionalObligations
      * ^property[+].code = #parent
      * ^property[=].valueCode = #both
      * ^property[+].code = #parent //actor
      * ^property[=].valueCode = #router
      * ^property[+].code = #abstract
      * ^property[=].valueBoolean = true
      * #route "route  forward" "as a router forward to the next recipient"
        * ^property[+].code = #parent
        * ^property[=].valueCode = #ExchangerObligations
        * ^property[+].code = #abstract
        * ^property[=].valueBoolean = false

    * #OtherObligations "Resource Other Obligations" "Other obligations beyond what has been described above."
      * ^property[+].code = #parent
      * ^property[=].valueCode = #FunctionalObligations
      * ^property[+].code = #abstract
      * ^property[=].valueBoolean = true

      * #explain "explain" "provide an explanation in a capability statement how this element is handled"
        * ^property[+].code = #parent
        * ^property[=].valueCode = #OtherObligations
      * #document "document" "document the use of this element in a separate document"
        * ^property[+].code = #parent
        * ^property[=].valueCode = #OtherObligations

  * #DataObligation "Obligations on Data" "Data Obligations"
    * ^property[+].code = #abstract
    * ^property[=].valueBoolean = true
    * ^property[+].code = #parent
    * ^property[=].valueCode = #Activity
    * ^property[+].code = #parent
    * ^property[=].valueCode = #creator
    * ^property[+].code = #parent
    * ^property[=].valueCode = #consumer
    * ^property[+].code = #comment
    * ^property[=].valueString = "The following codes may apply to creator and consumer. For example 'do not modify from UI'."
    * #expected "expected" "data fits to expectations/specification"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #DataObligation
      * ^property[+].code = #comment
      * ^property[=].valueString = "This applies to recipients and denotes that the data should be present according to the specification, i.e. is specified."
      * #unaltered "preserve" "preserve what you get"
        * ^property[+].code = #parent
        * ^property[=].valueCode = #expected
        * ^property[+].code = #comment
        * ^property[=].valueString = "That may also be used to take data from UI without any modifications."
        * #exactly "exactly" "exactly what is specified, nothing else"
          * ^property[+].code = #parent
          * ^property[=].valueCode = #unaltered
          * ^property[+].code = #comment
          * ^property[=].valueString = "not sure whether 'unaltered' is sufficient so that we can drop that!?"
      * #modify "modify" "allow for modifications of the data"
        * ^property[+].code = #parent
        * ^property[=].valueCode = #expected
        * ^property[+].code = #parent //actor
        * ^property[=].valueCode = #consumer
          * ^property[+].code = #comment
          * ^property[=].valueString = "Covers all types of modifications to data."
        * #assocation "assocation" "taken by association"
          * ^property[+].code = #parent
          * ^property[=].valueCode = #modify
        * #equivalent "equivalent" "in an equivalent way"
          * ^property[+].code = #parent
          * ^property[=].valueCode = #modify
        * #translate "translate" "Data received is preserved by 1:1 mapping/translation to an internal value that is semantically equivalent, that preserves the temporal aspect of the translation."
          * ^property[+].code = #parent
          * ^property[=].valueCode = #modify
          * #semantically "translate semantically" "Two concepts are semantically equivalent if they can substitute for each other in the defined use case with no loss of information used to define the concept."
            * ^property[+].code = #parent
            * ^property[=].valueCode = #translate
          * #clinically	"translate clinically" "Two concepts are clinically equivalent if they can substitute for each other in the defined use case with no impact on clinical interpretation by a trained clinician. This may include further refinements based on the specific domain, e.g., for Lab use case, this would require interpretation that includes the impact of differences in normal ranges."
            * ^property[+].code = #parent
            * ^property[=].valueCode = #translate
        * #reference "reference" "Use referenced data based on stored pointer; stored data is displayed by linking to the corresponding stored value most often the case for data elements that are STORED EXACT by ASSOCIATION."
          * ^property[+].code = #parent
          * ^property[=].valueCode = #modify
        * #truncate "cut off data" "cut off remaining characters from the data thereby shortening the data"
          * ^property[+].code = #parent
          * ^property[=].valueCode = #modify
        * #more-details "additional details/values"	"extends the expected data with more/own information, e.g. appartment if street is specified"
          * ^property[+].code = #parent
          * ^property[=].valueCode = #modify
          * ^property[+].code = #parent //actor
          * ^property[=].valueCode = #creator
          * ^property[+].code = #comment
          * ^property[=].valueString = "This is in principle not a modification..."
        * #more-structure "additional substructures" "provides the data with more granular details, e.g. house number for an address line"
          * ^property[+].code = #parent
          * ^property[=].valueCode = #modify
          * ^property[+].code = #parent //actor
          * ^property[=].valueCode = #creator
          * ^property[+].code = #comment
          * ^property[=].valueString = "This is in principle not a modification..."
        * #missing "data is missing/not available" "provide a null-flavor/absent reason"
          * ^property[+].code = #parent
          * ^property[=].valueCode = #modify
          * ^property[+].code = #parent //actor
          * ^property[=].valueCode = #creator
          * ^property[+].code = #comment
          * ^property[=].valueString = "In FHIR this is the permission/indication for a data-absent-reason or something similar. In V3 it is null-flavor."
        * #constant	"added as a constant" "this value has no valid representation or meaning in the sending application, it is just added because it is required to be there"
          * ^property[+].code = #parent
          * ^property[=].valueCode = #modify
    * #unexpected "unexpected values" "how to manage unexpected data (as sender or receiver)"
      * ^property[+].code = #parent
      * ^property[=].valueCode = #DataObligation
      * #replaces "new/other values" "replaces the expected data by something else"
        * ^property[+].code = #parent
        * ^property[=].valueCode = #unexpected
      * #consider "consider unexpected values" "take vare of values that are coming but not described/specified. Allows for warnings"
        * ^property[+].code = #parent
        * ^property[=].valueCode = #unexpected

//====================================================================
//
// here we start with "real" codes for usage
//
//====================================================================

// TODO: verify hierarchy (indentation)!!!!
//

* #CombinedObligations "combined obligations" "The children can be used to encode obligations for data elements. Terms in parenthesis are shown for readability. This list is not complete, and only provides some reasonable samples."
  * ^property[+].code = #abstract
  * ^property[=].valueBoolean = true
  * ^property[+].code = #comment
  * ^property[=].valueString = "The following list is just a snippet and should be enhanced during the discussion..."
  * ^property[+].code = #comment
  * ^property[=].valueString = "The hierarchy has to discarded because not everything is explicitly modelled."

* #MAY:populate "MAY populate with data" "Conformant applications MAY take and provide data."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #MAY
  * ^property[+].code = #parent
  * ^property[=].valueCode = #populate
  * ^property[+].code = #comment
  * ^property[=].valueString = "is this a useful combination?"

* #MAY:populate:missing "MAY populate data element with why orig data is missing" "Conformant applications MAY populate the element why the original data is missing."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #MAY:populate
  * ^property[+].code = #parent
  * ^property[=].valueCode = #missing

* #MAY:(populate)from-ui "MAY populate with data taken from ui" "Conformant applications MAY take data from a UI and provide it."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #MAY
  * ^property[+].code = #parent
  * ^property[=].valueCode = #from-ui
  
* #SHOULD:populate "SHOULD populate with data" "Conformant applications SHOULD take and provide data."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #MAY:populate

* #MAY:(populate)into-narrative "MAY populate into-narrative" "Conformant applications MAY populate element into narrative text as well."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHOULD:populate
  * ^property[+].code = #comment
  * ^property[=].valueString = "discuss whether other representation forms are better"

* #SHOULD:(populate)into-narrative "SHOULD populate into-narrative" "Conformant applications SHOULD populate element into narrative text as well."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #MAY:(populate)into-narrative
  * ^property[+].code = #comment
  * ^property[=].valueString = "discuss whether other representation forms are better"

* #SHALL:(populate)into-narrative "SHALL populate into-narrative" "Conformant applications SHALL populate element into narrative text as well."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHOULD:(populate)into-narrative
  * ^property[+].code = #comment
  * ^property[=].valueString = "discuss whether other representation forms are better"

* #SHOULDNOT:(populate)into-narrative "SHOULD NOT populate into-narrative" "Conformant applications SHOULD NOT populate element into narrative text."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #converse
  * ^property[=].valueCode = #SHOULD:(populate)into-narrative

* #SHALLNOT:(populate)into-narrative "SHALL NOT populate into-narrative" "Conformant applications SHALL NOT populate element into narrative text."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHOULDNOT:(populate)into-narrative
  * ^property[+].code = #converse
  * ^property[=].valueCode = #SHALL:(populate)into-narrative

  
* #SHALL:populate "SHALL populate with data" "Conformant applications SHOULD take and provide data."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHOULD:populate

* #SHOULD:(populate)from-ui "SHOULD populate with data taken from ui" "Conformant applications SHOULD take data from a UI and provide it."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHOULD
  * ^property[+].code = #parent
  * ^property[=].valueCode = #from-ui
  * ^property[+].code = #parent //actor
  * ^property[=].valueCode = #creator

* #SHALL:(populate)from-ui "SHALL populate data taken from ui" "Conformant applications SHALL take data from a UI and provide it."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHOULD:(populate)from-ui
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHALL
  * ^property[+].code = #parent
  * ^property[=].valueCode = #from-ui
  * ^property[+].code = #testable
  * ^property[=].valueCode = #testableByHuman
* #SHALL:(populate)from-ui:more-details "SHALL populate with data taken from ui perhaps with more details" "Conformant applications SHALL take data from a UI and bring it into the instance. It is allowed to provide more details then specified."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHALL:(populate)from-ui
  * ^property[+].code = #parent
  * ^property[=].valueCode = #more-details

* #SHOULD:send "SHOULD send the instance" "Conformant applications SHOULD send the instance."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * #SHALL:send "SHALL send the instance" "Conformant applications SHALL send the instance."
    * ^property[+].code = #parent
    * ^property[=].valueCode = #CombinedObligations
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALL
    * ^property[+].code = #parent
    * ^property[=].valueCode = #send
    * ^property[+].code = #parent //actor
    * ^property[=].valueCode = #sender
    * ^property[+].code = #applyOn
    * ^property[=].valueCode = #root
    * ^property[+].code = #testable
    * ^property[=].valueCode = #testableByMachine

* #MAY:persist "MAY store the data" "Conformant applications MAY store the data."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #MAY
  * ^property[+].code = #parent
  * ^property[=].valueCode = #persist
* #SHOULD:persist "SHOULD store the data" "Conformant applications SHOULD store the data."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * #SHALL:persist "SHALL store the data somewhere" "Conformant applications SHALL store the data in some way."
    * ^property[+].code = #parent
    * ^property[=].valueCode = #CombinedObligations
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALL
    * ^property[+].code = #parent
    * ^property[=].valueCode = #persist
    * ^property[+].code = #testable
    * ^property[=].valueCode = #testableByHuman
    * #SHALL:persist:exactly "SHALL store the data somewhere, but exactly as is sent" "Conformant applications SHALL store the data in a way that the originally data from the instance can be reestablished."
      * ^property[+].code = #parent
      * ^property[=].valueCode = #CombinedObligations
      * ^property[+].code = #parent
      * ^property[=].valueCode = #SHALL
      * ^property[+].code = #parent
      * ^property[=].valueCode = #persist
      * ^property[+].code = #parent
      * ^property[=].valueCode = #exactly
      * ^property[+].code = #testable
      * ^property[=].valueCode = #testableByHuman
  * #SHOULD:(persist)in-database "SHOULD store the data in a database" "Conformant applications are asked to store the data in a database."
    * ^property[+].code = #parent
    * ^property[=].valueCode = #CombinedObligations
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHOULD
    * ^property[+].code = #parent
    * ^property[=].valueCode = #persist
    * ^property[+].code = #parent
    * ^property[=].valueCode = #in-database

  * #SHALLNOT:populate:more-details "SHALL NOT populate more data than is specified" "Conformant applications SHALL NOT populatae more data than is specified. The specification is closed."
    * ^property[+].code = #parent
    * ^property[=].valueCode = #CombinedObligations
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALLNOT
    * ^property[+].code = #parent
    * ^property[=].valueCode = #populate
    * ^property[+].code = #parent
    * ^property[=].valueCode = #more-details
    * ^property[+].code = #parent //actor
    * ^property[=].valueCode = #creator
    * ^property[+].code = #negation
    * ^property[=].valueBoolean = true
    * ^property[+].code = #testable
    * ^property[=].valueCode = #testableByMachine
  * #SHALLNOT:populate:missing "SHALL NOT populate info about missing data, ie. data absent reasons" "Conformant applications SHALL NOT populate a reason for missing information."
    * ^property[+].code = #parent
    * ^property[=].valueCode = #CombinedObligations
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALLNOT
    * ^property[+].code = #parent
    * ^property[=].valueCode = #populate
    * ^property[+].code = #parent
    * ^property[=].valueCode = #missing
    * ^property[+].code = #parent //actor
    * ^property[=].valueCode = #creator
    * ^property[+].code = #negation
    * ^property[=].valueBoolean = true
  * #MAY:populate:more-structure "MAY populate the data in more structured way" "Conformant applications are allowed to populate the data with more structure. For example, to split an address line into streetname and house number."
    * ^property[+].code = #parent
    * ^property[=].valueCode = #CombinedObligations
    * ^property[+].code = #parent
    * ^property[=].valueCode = #MAY
    * ^property[+].code = #parent
    * ^property[=].valueCode = #populate
    * ^property[+].code = #parent
    * ^property[=].valueCode = #more-structure
  * #SHALLNOT:follow-up:truncate "SHALL NOT truncate data" "Conformant applications SHALL NOT cut off data."
    * ^property[+].code = #parent
    * ^property[=].valueCode = #CombinedObligations
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALLNOT
    * ^property[+].code = #parent
    * ^property[=].valueCode = #follow-up
    * ^property[+].code = #parent
    * ^property[=].valueCode = #truncate
    * ^property[+].code = #parent //actor
    * ^property[=].valueCode = #consumer
    * ^property[+].code = #negation
    * ^property[=].valueBoolean = true
    * ^property[+].code = #testable
    * ^property[=].valueCode = #testableByHuman

  * #MAY:modify "MAY modify the data" "Conformant applications MAY, i.e. are allowed to modify the data."
    * ^property[+].code = #parent
    * ^property[=].valueCode = #CombinedObligations
    * ^property[+].code = #parent
    * ^property[=].valueCode = #MAY
    * ^property[+].code = #parent
    * ^property[=].valueCode = #modify
    * ^property[+].code = #comment
    * ^property[=].valueString = "nice hint"


  * #MAY:print "MAY print data" "Conformant applications MAY print the data."
    * ^property[+].code = #parent
    * ^property[=].valueCode = #CombinedObligations
    * ^property[+].code = #parent
    * ^property[=].valueCode = #MAY
    * ^property[+].code = #parent
    * ^property[=].valueCode = #print

  * #SHOULD:print "SHOULD print data" "Conformant applications SHOULD print the data."
    * ^property[+].code = #parent
    * ^property[=].valueCode = #CombinedObligations
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHOULD
    * ^property[+].code = #parent
    * ^property[=].valueCode = #print

  * #SHALL:print "SHALL print data" "Conformant applications SHALL print the data."
    * ^property[+].code = #parent
    * ^property[=].valueCode = #CombinedObligations
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALL
    * ^property[+].code = #parent
    * ^property[=].valueCode = #print
    * ^property[+].code = #parent //actor
    * ^property[=].valueCode = #consumer
    * ^property[+].code = #testable
    * ^property[=].valueCode = #testableByHuman
	
* #SHALLNOT:(populate):in-narrative "SHALL NOT add to narrative" "Conformant applications SHALL NOT add this data to the narrative."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHALLNOT
  * ^property[+].code = #parent
  * ^property[=].valueCode = #populate
  * ^property[+].code = #parent
  * ^property[=].valueCode = #into-narrative
  * ^property[+].code = #parent //actor
  * ^property[=].valueCode = #creator
  * ^property[+].code = #testable
  * ^property[=].valueCode = #testableByHuman

* #MAY:process "MAY process the data" "Conformant applications MAY process the data somehow."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #MAY
  * ^property[+].code = #parent
  * ^property[=].valueCode = #process
  * ^property[+].code = #comment
  * ^property[=].valueString = "There is no further specification in which way the data can be processed."
* #SHOULD:process "SHOULD process the data" "Conformant applications SHOULD process the data in some meaningful way."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #MAY:process
* #SHALL:process "SHALL process the data" "Conformant applications SHALL process the data in some meaningful way."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHOULD:process


* #SHOULDNOT:process "SHOULD NOT process the data" "Conformant applications SHOULD NOT process the data in some meaningful way."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHOULDNOT
  * ^property[+].code = #parent
  * ^property[=].valueCode = #process
  
* #SHALLNOT:process "SHALL NOT process the data" "Conformant applications SHALL NOT process the data in some meaningful way."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHOULDNOT:process
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHALLNOT
  * ^property[+].code = #parent
  * ^property[=].valueCode = #process

* #SHOULD:document "SHOULD document how the data is used" "Conformant applications SHOULD document the way the data is used in some (meaningful) way."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHOULD
  * ^property[+].code = #parent
  * ^property[=].valueCode = #document

* #SHALL:document "SHALL document how the data is used" "Conformant applications SHALL document the way the data is used in some (meaningful) way."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHOULD:document
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHALL
  * ^property[+].code = #parent
  * ^property[=].valueCode = #document


* #SHOULD:display "SHOULD display the data" "Conformant applications SHOULD display the data in some meaningful way."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHOULD
  * ^property[+].code = #parent
  * ^property[=].valueCode = #display

* #SHALL:display "SHALL display the data" "Conformant applications SHALL display the data in some meaningful way."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHOULD:display

* #SHOULDNOT:modify "SHOULD NOT modify the data" "Conformant applications SHOULD NOT modiify the data in any way."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHOULDNOT
  * ^property[+].code = #parent
  * ^property[=].valueCode = #modify

* #SHALLNOT:modify "SHALL NOT modify the data" "Conformant applications SHALL NOT modiify the data in any way."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHALLNOT
  * ^property[+].code = #parent
  * ^property[=].valueCode = #modify

* #MAYNOT:process "MAY NOT process data" "Conformant applications MAY NOT process data, aka of ignoring."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #MAYNOT
  * ^property[+].code = #parent
  * ^property[=].valueCode = #process
  * ^property[+].code = #comment
  * ^property[=].valueString = "this is equivalent to MAY:ignore."



* #SHOULD:reject-invalid "SHOULD reject invalid data" "Conformant applications SHOULD reject invalid data."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHOULD
  * ^property[+].code = #parent
  * ^property[=].valueCode = #reject-invalid
* #SHALL:reject-invalid "SHALL reject invalid data" "Conformant applications SHALL reject invalid data."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHALL
  * ^property[+].code = #parent
  * ^property[=].valueCode = #reject-invalid
* #SHOULD:accept-invalid "SHOULD accept invalid data" "Conformant applications SHOULD accept invalid data."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHOULD
  * ^property[+].code = #parent
  * ^property[=].valueCode = #accept-invalid
* #SHALL:accept-invalid "SHALL accept invalid data" "Conformant applications SHALL accept invalid data."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHALL
  * ^property[+].code = #parent
  * ^property[=].valueCode = #accept-invalid

* #SHOULD:receive "SHOULD be able to receive the data" "Conformant applications SHOULD be able to receive the data."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHOULD
  * ^property[+].code = #parent
  * ^property[=].valueCode = #receive
* #SHALL:receive "SHALL be able to receive the data" "Conformant applications SHALL be able to receive the data."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHALL
  * ^property[+].code = #parent
  * ^property[=].valueCode = #receive

* #SHOULDNOT:error "SHOULD NOT return an error to the sender of the data" "Conformant applications SHOULD NOT reurn an erorr to the sender of the data."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHOULDNOT
  * ^property[+].code = #parent
  * ^property[=].valueCode = #error

* #SHALLNOT:error "SHALL NOT return an error to the sender of the data" "Conformant applications SHALL NOT reurn an erorr to the sender of the data."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #parent
  * ^property[=].valueCode = #SHALLNOT
  * ^property[+].code = #parent
  * ^property[=].valueCode = #error


* #ForeignStandards "concept codes from other standards" "Other standards use specific terms for optionality/usage that should be conceptualized here."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #CombinedObligations
  * ^property[+].code = #abstract
  * ^property[=].valueBoolean = true

* #v2 "v2 concept codes" "optionality/usage codes from v2"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #ForeignStandards
  * ^property[+].code = #abstract
  * ^property[=].valueBoolean = true
  * #v2-r "v2: R" "required in v2.x"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #v2
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALL
    * ^property[+].code = #parent
    * ^property[=].valueCode = #populate
    * ^property[+].code = #comment
    * ^property[=].valueString = "minCard = 1"
  * #v2-re "v2: RE" "required but may be empty in v2.x"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #v2
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALL
    * ^property[+].code = #parent
    * ^property[=].valueCode = #populate
    * ^property[+].code = #comment
    * ^property[=].valueString = "minCard = 0"
  * #v2-x "v2: X" "forbidden in v2"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #v2
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHOULDNOT
    * ^property[+].code = #parent
    * ^property[=].valueCode = #populate
    * ^property[+].code = #parent
    * ^property[=].valueCode = #process
  * #v2-b "v2: B" "backwards use in v2 only"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #v2
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHOULDNOT
  * #v2-w "v2: W" "withdrawn use in v2 only"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #v2
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHOULDNOT
    * ^property[+].code = #parent
    * ^property[=].valueCode = #populate
    * ^property[+].code = #parent
    * ^property[=].valueCode = #process

* #v3 "V3 concept codes" "optionality/usage codes from V3/CDA"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #ForeignStandards
  * ^property[+].code = #abstract
  * ^property[=].valueBoolean = true
  * #v3-m "v3: M" "mandatory in HL7 V3"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #v3
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALL
    * ^property[+].code = #parent
    * ^property[=].valueCode = #populate
    * ^property[+].code = #parent
    * ^property[=].valueCode = #exactly
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALLNOT:populate:missing
    * ^property[+].code = #comment
    * ^property[=].valueString = "A value must be present and null-flavors are not allowed; to be combined with minCard = 1"
  * #v3-r "v3: R" "required in HL7 V3"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #v3
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALL
    * ^property[+].code = #parent
    * ^property[=].valueCode = #populate
    * ^property[+].code = #parent
    * ^property[=].valueCode = #MAY:populate:missing
    * ^property[+].code = #comment
    * ^property[=].valueString = "A value must be present but it can be a null-flavors"
  * #v3-x "v3: X" "forbidden in HL7 V3"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #v3
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALLNOT
    * ^property[+].code = #parent
    * ^property[=].valueCode = #populate

* #ihe "IHE concept codes" "optionality/usage codes from IHE"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #ForeignStandards
  * ^property[+].code = #abstract
  * ^property[=].valueBoolean = true
  * #ihe-r "IHE: R" "required in IHE v2.x specs"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #ihe
  * #ihe-r2 "IHE: R2" "R2 in IHE v2.x specs"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #ihe
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALL:process
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHOULD:populate
    * ^property[+].code = #comment
    * ^property[=].valueString = "This is interpreted as the receiver has to support it, but when becoming the sender it is not really necessary to return it again"
  * #ihe-x "IHE: X" "X in IHE v2.x specs"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #ihe
    * ^property[+].code = #comment
    * ^property[=].valueString = "forbidden?"

* #xDT "German xDT standards" "The German xDT standard family has a very specific set of codes and is just presented here for completeness and demonstration purposes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #ForeignStandards
  * ^property[+].code = #abstract
  * ^property[=].valueBoolean = true
  * ^property[+].code = #comment
  * ^property[=].valueString = "all concept codes are to processed by the receiver; different requirements for sender"
  * #xDT-M "xDT: M" "MUSS in xDT (unbedingtes Mussfeld)"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #xDT
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALL
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALL:process
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALL:populate
    * ^property[+].code = #comment
    * ^property[=].valueString = "minCard=1"
  * #xDT-m "xDT: m" "muss in xDT (bedingtes Mussfeld)"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #xDT
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALL
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALL:process
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALL:populate
    * ^property[+].code = #comment
    * ^property[=].valueString = "depends on the value of another field"
  * #xDT-K "xDT: K" "KANN in xDT (unbedingts KANNfeld)"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #xDT
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALL
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALL:process
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALL:populate
  * #xDT-k "xDT: k" "kann in xDT (bedingtes Kannfeld)"
    * ^property[+].code = #parent
    * ^property[=].valueCode = #xDT
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALL
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALL:process
    * ^property[+].code = #parent
    * ^property[=].valueCode = #SHALL:populate
    * ^property[+].code = #comment
    * ^property[=].valueString = "depends on the value of another field"







ValueSet: ObligationProposedCodesVS
Id: obligationProposed
Title: "Proposed Obligation Codes VS (complete)"
Description: """This valueset represents the proposed obligation codes."""

* ^url = "http://v2.hl7.org/fhir/ValueSet/obligationProposed"
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = true

* include codes from system http://v2.hl7.org/fhir/CodeSystem/obligationProposed



ValueSet: ObligationProposedActiveCodesVS
Id: obligationProposedActive
Title: "Proposed Obligation Codes VS (active only)"
Description: """This valueset represents the proposed obligation codes that are available for use (active resp. not abstract)."""

* ^url = "http://v2.hl7.org/fhir/ValueSet/obligationProposedActive"
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = true

//syntactically correct, but does not work:
//* include codes from system http://v2.hl7.org/fhir/CodeSystem/obligationProposed where abstract = "false"

* include codes from system http://v2.hl7.org/fhir/CodeSystem/obligationProposed where concept descendent-of #CombinedObligations





ValueSet: ObligationProposedContentCreationCodesVS
Id: obligationContentCreationProposed
Title: "Proposed Content-creation-oriented Obligation Codes VS"
Description: """This valueset represents the proposed obligation codes for creating the content."""

* ^url = "http://v2.hl7.org/fhir/ValueSet/obligationContentCreationProposed"
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = true

* ^compose.include[+].system = "http://v2.hl7.org/fhir/CodeSystem/obligationProposed"
* ^compose.include[=].concept[+].code = #MAY:populate
* ^compose.include[=].concept[+].code = #MAY:populate:missing
* ^compose.include[=].concept[+].code = #MAY:populate:more-structure
* ^compose.include[=].concept[+].code = #MAY:(populate)from-ui
* ^compose.include[=].concept[+].code = #MAY:(populate)into-narrative

* ^compose.include[=].concept[+].code = #SHOULD:populate
* ^compose.include[=].concept[+].code = #SHOULD:(populate)from-ui 

* ^compose.include[=].concept[+].code = #SHALL:populate
* ^compose.include[=].concept[+].code = #SHALL:(populate)from-ui
* ^compose.include[=].concept[+].code = #SHALL:(populate)from-ui:more-details
* ^compose.include[=].concept[+].code = #SHALL:(populate)into-narrative
* ^compose.include[=].concept[+].code = #SHOULD:(populate)into-narrative

* ^compose.include[=].concept[+].code = #SHOULDNOT:(populate)into-narrative

* ^compose.include[=].concept[+].code = #SHALLNOT:(populate):in-narrative 
* ^compose.include[=].concept[+].code = #SHALLNOT:populate:more-details
* ^compose.include[=].concept[+].code = #SHALLNOT:populate:missing
* ^compose.include[=].concept[+].code = #SHALLNOT:(populate)into-narrative



ValueSet: ObligationProposedContentConsumptionCodesVS
Id: obligationContentConsumptionProposed
Title: "Proposed Content-consumption-oriented Obligation Codes VS"
Description: """This valueset represents the proposed obligation codes for consuming the content."""

* ^url = "http://v2.hl7.org/fhir/ValueSet/obligationContentConsumptionProposed"
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = true

* ^compose.include[+].system = "http://v2.hl7.org/fhir/CodeSystem/obligationProposed"

* ^compose.include[=].concept[+].code = #MAY:persist
* ^compose.include[=].concept[+].code = #MAY:modify
* ^compose.include[=].concept[+].code = #MAY:print

* ^compose.include[=].concept[+].code = #SHOULD:(persist)in-database
* ^compose.include[=].concept[+].code = #SHOULD:process
* ^compose.include[=].concept[+].code = #SHOULD:display
* ^compose.include[=].concept[+].code = #SHOULD:document
* ^compose.include[=].concept[+].code = #SHOULD:print

* ^compose.include[=].concept[+].code = #SHALL:document
* ^compose.include[=].concept[+].code = #SHALL:print
* ^compose.include[=].concept[+].code = #SHALL:persist
* ^compose.include[=].concept[+].code = #SHALL:persist:exactly

* ^compose.include[=].concept[+].code = #MAYNOT:process

* ^compose.include[=].concept[+].code = #SHOULDNOT:process
* ^compose.include[=].concept[+].code = #SHOULDNOT:modify

* ^compose.include[=].concept[+].code = #SHALLNOT:process
* ^compose.include[=].concept[+].code = #SHALLNOT:modify
* ^compose.include[=].concept[+].code = #SHALLNOT:follow-up:truncate




ValueSet: ObligationProposedTransportCodesVS
Id: obligationTransportProposed
Title: "Proposed Transport-oriented Obligation Codes VS"
Description: """This valueset represents the proposed obligation codes for managing transport requirements."""

* ^url = "http://v2.hl7.org/fhir/ValueSet/obligationTransportProposed"
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = true

* ^compose.include[+].system = "http://v2.hl7.org/fhir/CodeSystem/obligationProposed"
* ^compose.include[=].concept[+].code = #SHOULD:send
* ^compose.include[=].concept[+].code = #SHOULD:receive
* ^compose.include[=].concept[+].code = #SHOULD:accept-invalid
* ^compose.include[=].concept[+].code = #SHOULD:reject-invalid

* ^compose.include[=].concept[+].code = #SHALL:send
* ^compose.include[=].concept[+].code = #SHALL:receive
* ^compose.include[=].concept[+].code = #SHALL:accept-invalid
* ^compose.include[=].concept[+].code = #SHALL:reject-invalid

* ^compose.include[=].concept[+].code = #SHOULDNOT:error

* ^compose.include[=].concept[+].code = #SHALLNOT:error
