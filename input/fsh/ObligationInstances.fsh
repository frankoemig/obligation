// examples for my onw definition 1

Instance: Obligation1a
InstanceOf: Obligation1Definition
Title: "Obligation 1a: send exactly"
Description: "Obligation 1a: send exactly the data as specified"
* name = "Testname 1"
* status = #draft
* date = 2023-10-11
* actor = Reference(ActorDefinition/ActorSender)
* element = Reference(StructureDefinition/BSuperPatient)
* activity.verb = http://v2.hl7.org/fhir/CodeSystem/verb#SHALL
* activity.obligation = http://v2.hl7.org/fhir/CodeSystem/obligation#SEND
* activity.dataExpectation = http://v2.hl7.org/fhir/CodeSystem/dataExpectation#exactly


Instance: Obligation1b
InstanceOf: Obligation1Definition
Title: "Obligation 1b: store equivalent"
Description: "Obligation 1b: store the data as an equivalent"
* name = "Testname 1b"
* status = #draft
* date = 2023-10-11
* actor = Reference(ActorDefinition/ActorReceiver)
* element[0] = Reference(StructureDefinition/BSuperPatient.identifier)
* element[+] = Reference(StructureDefinition/BSuperPatient.maritalStatus)
* activity.verb = http://v2.hl7.org/fhir/CodeSystem/verb#SHALL
* activity.obligation = http://v2.hl7.org/fhir/CodeSystem/obligation#STORE
* activity.dataExpectation = http://v2.hl7.org/fhir/CodeSystem/dataExpectation#equivalent


Instance: Obligation1c
InstanceOf: Obligation1Definition
Title: "Obligation 1c: store exactly"
Description: "Obligation 1c: store exactly the data as specified"
* name = "Testname 1c"
* status = #draft
* date = 2023-10-11
* actor = Reference(ActorDefinition/ActorReceiver)
* element[0] = Reference(StructureDefinition/BSuperPatient.identifier)
* element[+] = Reference(StructureDefinition/BSuperPatient.name)
* element[+] = Reference(StructureDefinition/BSuperPatient.birthDate)
* activity[0].verb = http://v2.hl7.org/fhir/CodeSystem/verb#SHALL
* activity[=].obligation = http://v2.hl7.org/fhir/CodeSystem/obligationAlone#store
* activity[=].dataExpectation = http://v2.hl7.org/fhir/CodeSystem/dataExpectation#exactly
* activity[+].verb = http://v2.hl7.org/fhir/CodeSystem/verb#SHALL
* activity[=].obligation = http://v2.hl7.org/fhir/CodeSystem/obligation#DISPLAY
* activity[=].dataExpectation = http://v2.hl7.org/fhir/CodeSystem/dataExpectation#equivalent





// examples for my onw definition 2

Instance: Obligation2a
InstanceOf: Obligation2Definition
Title: "Obligation 2a: send exactly"
Description: "Obligation 2a: send exactly as specified"
* name = "Testname 2"
* status = #draft
* date = 2023-10-11
//* actor = Reference(Actor2Definition/OwnActor2Sender)
* element = Reference(StructureDefinition/BSuperPatient)
* activity.verb = http://v2.hl7.org/fhir/CodeSystem/verb#SHALL
* activity.obligation = http://v2.hl7.org/fhir/CodeSystem/obligation#SEND
* activity.dataExpectation = http://v2.hl7.org/fhir/CodeSystem/dataExpectation#exactly

Instance: Obligation2b
InstanceOf: Obligation2Definition
Title: "Obligation 2b: store equivalent"
Description: "Obligation 2b: store data in form of an equivalent"
* name = "Testname 2b"
* status = #draft
* date = 2023-10-11
//* actor = Reference(Actor2Definition/OwnActor2Receiver)
* element[0] = Reference(StructureDefinition/BSuperPatient.identifier)
* element[+] = Reference(StructureDefinition/BSuperPatient.maritalStatus)
* activity.verb = http://v2.hl7.org/fhir/CodeSystem/verb#SHALL
* activity.obligation = http://v2.hl7.org/fhir/CodeSystem/obligation#STORE
* activity.dataExpectation = http://v2.hl7.org/fhir/CodeSystem/dataExpectation#equivalent


Instance: Obligation2c
InstanceOf: Obligation2Definition
Title: "Obligation 2c: store exactly"
Description: "Obligation 2c: store exactly as specified"
* name = "Testname 2c"
* status = #draft
* date = 2023-10-11
//* actor = Reference(Actor2Definition/OwnActor2Receiver)
//TODO verify and correct references
* element[0] = Reference(StructureDefinition-BSuperPatient)
//* element[0] = Reference(StructureDefinition-BSuperPatient.identifier)
//* element[+] = Reference(StructureDefinition-BSuperPatient.name)
//* element[+] = Reference(StructureDefinition/BSuperPatient.birthDate)
* activity[0].verb = http://v2.hl7.org/fhir/CodeSystem/verb#SHALL
* activity[=].obligation = http://v2.hl7.org/fhir/CodeSystem/obligation#STORE
* activity[=].dataExpectation = http://v2.hl7.org/fhir/CodeSystem/dataExpectation#exactly
* activity[+].verb = http://v2.hl7.org/fhir/CodeSystem/verb#SHALL
* activity[=].obligation = http://v2.hl7.org/fhir/CodeSystem/obligation#DISPLAY
* activity[=].dataExpectation = http://v2.hl7.org/fhir/CodeSystem/dataExpectation#equivalent


