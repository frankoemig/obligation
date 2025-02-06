// Obligation 1
// (behind actor)

Logical: Obligation1Definition
//Parent: DomainResource
Parent: Base
Id: Obligation1Definition
Title: "Obligation1Definition"
Description: """Obligation 1 Definition Description:\n
is to be placed behind the actor: profile 0..* <- 1 actor 0..* <-> 0..* obligation"""

* ^extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/logical-target"
* ^extension[=].valueBoolean = true
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #inm

* ^meta.lastUpdated = "2023-08-09T18:09:04.256+02:00"
* ^url = "http://v2.hl7.org/fhir/StructureDefinition/Obligation1Definition"
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = true
* ^date = "2023-10-10T18:09:04+02:00"
* ^publisher = "HL7 International / Infrastructure And Messaging"
* ^type = "http://v2.hl7.org/fhir/Obligation"
* . ^definition = "Obligation 1 Definition Resource"

* url 0..1 uri "Canonical identifier for this obligation, represented as a URI (globally unique)"
* identifier 0..* Identifier "Additional identifier for the obligation (business identifier)"
* version 0..1 string "Business version of the obligation"

* name 0..1 string "Short Name for this Obligation" "Name for this obligation definition (computer friendly)"
* status 1..1 code "draft | active | retired | unknown"
* status from PublicationStatus (required)
* date 0..1 dateTime "Date last changed"


* documentation 0..1 markdown "Documentation of the purpose or application of the obligation"
* usage 0..* UsageContext "Qualifies the usage - jurisdiction, gender, workflow status etc"

//* actor 0..* Reference(OwnActor1Definition) "Actor(s) to whom this obligation applies to (if any)"
* actor 0..* Reference(DomainResource) "Actor(s) to whom this obligation applies to (if any)"

* element 0..* Reference(StructureDefinition) "Profile element(s) to whom this obligation applies to"

* including 0..* Reference(Obligation1Definition) "Other obligations that are implicitly to be included"

* activity 0..* BackboneElement "set of obligations" "set of obligations"
* activity.verb 0..1 Coding "Composite code describing the requirement level of the obligation"
* activity.verb from VsVerb (required)
* activity.obligation 0..1 Coding "Composite code describing the activity/obligation to performed by the application"
* activity.obligation from VsObligationAloneCodes (extensible)
* activity.dataExpectation 0..1 Coding "Composite code describing the expacation about data appearance"
* activity.dataExpectation from VsDataExepectation (required)

//* filter 0..1 string "Limits obligation to some repeats by FHIRPath"
//* filterDocumentation 0..1 string "Describes the intent of the filter (short)"
//* process 0..* uri "The obligation only applies when perfomring the indicated process"
//* url 1..1 uri "uri"






// Obligation 2
// (before actor)


Logical: Obligation2Definition
Parent: Base
//Parent: DomainResource
Id: Obligation2Definition
Title: "Obligation2Definition"
Description: """Obligation 2 Definition Description:\n
is to be placed before the actor - profile 0..* <- 1 obligation 1..* <- 1 actor"""

* ^extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/logical-target"
* ^extension[=].valueBoolean = true

* ^meta.lastUpdated = "2023-08-09T18:09:04.256+02:00"
* ^url = "http://v2.hl7.org/fhir/StructureDefinition/Obligation2Definition"
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = true
* ^date = "2023-10-10T18:09:04+02:00"
* ^publisher = "FO"
* ^type = "http://v2.hl7.org/fhir/Base"
* . ^definition = "Obligation 2 Definition Resource"

* url 0..1 uri "Canonical identifier for this obligation, represented as a URI (globally unique)"
* identifier 0..* Identifier "Additional identifier for the obligation (business identifier)"
* version 0..1 string "Business version of the obligation"

* name 0..1 string "Short Name for this Obligation" "Name for this obligation definition (computer friendly)"
* status 1..1 code "draft | active | retired | unknown"
* status from PublicationStatus (required)
* date 0..1 dateTime "Date last changed"


* documentation 0..1 markdown "Documentation of the purpose or application of the obligation"
* usage 0..* UsageContext "Qualifies the usage - jurisdiction, gender, workflow status etc"

* element 0..* Reference(StructureDefinition) "Profile element(s) to whom this obligation applies to"

* including 0..* Reference(Obligation2Definition) "Other obligations that are implicitly to be included"

* activity 0..* BackboneElement "set of obligations" "set of obligations"
* activity.verb 0..1 Coding "Composite code describing the requirement level of the obligation"
* activity.verb from VsVerb (required)
* activity.obligation 0..1 Coding "Composite code describing the activity/obligation to performed by the application"
* activity.obligation from VsObligationAloneCodes (extensible)
* activity.dataExpectation 0..1 Coding "Composite code describing the expacation about data appearance"
* activity.dataExpectation from VsDataExepectation (required)

