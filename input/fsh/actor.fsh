Instance: ActorDefSenderTest
InstanceOf: ActorDefinition
Title: "Actor Definition a: Sender Test"
Description: "Actor a: Sender Test"

* extension[+].url = "http://v2.hl7.org/fhir/StructureDefinition/new-obligation"
* extension[=].extension[+].url = "code"
* extension[=].extension[=].valueCode = #SHOULD:send

* name = "Test a sender Test"
* status = #draft
* version = "0.1.0"
* date = 2024-05-08
* type = #system
* experimental = true
* purpose = "This is a test definition"

Instance: ActorDefReceiverTest
InstanceOf: ActorDefinition
Title: "Actor Definition b: Receiver Test"
Description: "This actor is used to demonstrate receiving capabilities"
* name = "Test receiver"
* status = #draft
* version = "0.1.0"
* date = 2023-10-11
* type = #system

Instance: ActorDefTest
InstanceOf: ActorDefinition
Title: "Actor Definition c: Test (unused)"
Description: "Actor c: Test (unused)"
* name = "Test c Actor"
* status = #draft
* version = "0.1.0"
* type = #system



//following to test logical-target resp. Characteristics (both can be deleted)
//Logical: Test1
//Parent: DomainResource
//Id: Test1
//Title: "Test 1"
//Description: "Test1: my own Actor Definition"
//* ^extension[http://hl7.org/fhir/tools/StructureDefinition/logical-target].valueBoolean = true
//* name 1..1 string "Short Name for this Actor" "Name for this actor definition (computer friendly)"
//* status 1..1 code "draft | active | retired | unknown"
//* status from PublicationStatus (required)
//* date 1..1 dateTime "Date last changed"
//* obligation 0..* Reference(Obligation1Definition) "Obligation(s) that are referenced"

//Logical: Test2
//Parent: DomainResource
//Id: Test2
//Title: "Test2"
//Description: "Test2: my own Actor Definition2 to test characteristics"
//Characteristics: #can-be-target
//* name 1..1 string "Short Name for this Actor" "Name for this actor definition (computer friendly)"
//* status 1..1 code "draft | active | retired | unknown"
//* status from PublicationStatus (required)
//* date 1..1 dateTime "Date last changed"
//* obligation 0..* Reference(Obligation2Definition) "Obligation(s) that are referenced"
