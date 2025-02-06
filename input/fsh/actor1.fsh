// Actor 1:
// Actor -> Obligation
// own FHIR LM

Logical: OwnActor1Definition
Parent: DomainResource
Id: OwnActor1Definition
Title: "my own Actor Definition 1"
Description: """my own Actor Definition 1\n
This puts the actor in the middle, and points to obligations"""

//* ^extension[0].url = http://hl7.org/fhir/tools/StructureDefinition/logical-target
//* ^extension[=].valueBoolean = true
* name 1..1 string "Short Name for this Actor" "Name for this actor definition (computer friendly)"
* status 1..1 code "draft | active | retired | unknown"
* status from PublicationStatus (required)
* date 1..1 dateTime "Date last changed"
//* obligation 0..* Reference(Obligation1Definition) "Obligation(s) that are referenced"


Instance: OwnActor1Sender
InstanceOf: OwnActor1Definition
Title: "Actor 1: Sender"
Description: "Sample Sending Actor based on my own Actor Definition 1"
* name = "Test sender"
* status = #draft
* date = 2023-10-11

Instance: OwnActor1Receiver
InstanceOf: OwnActor1Definition
Title: "Actor 1: Receiver"
Description: "Sample receiving actor based on my own Actor Definition 1"
* name = "Test receiver"
* status = #draft
* date = 2023-10-11

Instance: OwnActor1Test
InstanceOf: OwnActor1Definition
Title: "Actor 1: Test"
Description: "Test Actor basdd on my own Actor Definition 1"
* name = "Test 1 Actor"
* status = #draft
* date = 2023-10-11
