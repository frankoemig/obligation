// Actor 2:
// Obligation -> Actor
// own FHIR LM

Logical: OwnActor2Definition
Parent: DomainResource
Id: OwnActor2Definition
Title: "my own Actor Definition 2"
Description: """
	my own Actor Definition 2
	This puts the obligation into the middle, and takes pointers from actors.
	"""

//* ^extension[0].url = http://hl7.org/fhir/tools/StructureDefinition/logical-target].valueBoolean
//* ^extension[=].valueBoolean = true
* name 1..1 string "Short Name for this Actor" "Name for this actor definition (computer friendly)"
* status 1..1 code "draft | active | retired | unknown"
* status from PublicationStatus (required)
* date 1..1 dateTime "Date last changed"
//* obligation 0..* Reference(Obligation2Definition) "Obligation(s) that are referenced"
//* obligation 0..* 


Logical: OwnActor2Definition2
Parent: DomainResource
Id: OwnActor2Definition2
Title: "my other own Actor Definition2"
Description: "my own Actor Definition2 (this time defined to test characteristics feature of FSH)"
Characteristics: #can-be-target
* name 1..1 string "Short Name for this Actor" "Name for this actor definition (computer friendly)"
* status 1..1 code "draft | active | retired | unknown"
* status from PublicationStatus (required)
* date 1..1 dateTime "Date last changed"
//* obligation 0..* Reference(Obligation2Definition) "Obligation(s) that are referenced"


Instance: OwnActor2Sender
InstanceOf: OwnActor2Definition
Title: "Actor 2: Sender"
Description: "Sending Actor based on my own 2nd definition"
* name = "Test sender"
* status = #draft
* date = 2023-10-11
//* obligation = Reference(Obligation2Definition/Obligation2a)

Instance: OwnActor2Receiver
InstanceOf: OwnActor2Definition
Title: "Actor 2: Receiver"
Description: "Receiving actor based on my own 2nd defintion"
* name = "Test receiver"
* status = #draft
* date = 2023-10-11
//* obligation = Reference(Obligation2Definition/Obligation2b)

Instance: OwnActor2Test
InstanceOf: OwnActor2Definition
Title: "Actor 2: Test"
Description: "Test actor based on my own 2nd defintion"
* name = "Test 2 Actor"
* status = #draft
* date = 2023-10-11

