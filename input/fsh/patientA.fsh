//-----------------
// document and use the current approach with obligation extensions
//

Profile: ABasePatientProfile
Parent: Patient
Id: ABasePatientPatient
Title: "A) Base Patient Profile"
Description: "Base Patient Profile that provides the base requirements"
* ^version = "0.1.0"
* identifier 1.. MS
* name 0.. MS
* name.family MS
* name.given MS
//* gender
* birthDate MS
//* maritalStatus


Profile: APatientReceiverProfile
Parent: ABasePatientProfile
Id: APatientReceiverProfile
Title: "A) Profile Receiver Profile"
Description: "This profile adds the mustSupport fields for a receiver."
* ^version = "0.1.0"
* identifier 1.. MS
* gender MS
* birthDate MS


Profile: APatientSenderProfile
Parent: ABasePatientProfile
Id: APatientSenderProfile
Title: "A) Profile Sender Profile"
Description: "This profile has to include all mustSupport fields for a sender."
* ^version = "0.1.0"
* identifier 1.. MS
* gender MS
* birthDate MS
* maritalStatus MS



Profile: APatientSenderObligationProfile
Parent: APatientSenderProfile
Id: APatientSenderObligationProfile
Title: "A) Profile Sender Obligation Profile"
Description: "This profile includes the obligation extension to the sender."

* ^extension[+].url = "http://v2.hl7.org/fhir/StructureDefinition/new-obligation"
* ^extension[=].extension[+].url = "code"
* ^extension[=].extension[=].valueCode = #SHOULD:send

* ^version = "0.1.0"

// for identifier ....?
* identifier ^extension[+].url = "http://v2.hl7.org/fhir/StructureDefinition/new-obligation"
* identifier ^extension[=].extension[+].url = "code"
* identifier ^extension[=].extension[=].valueCode = #SHOULD:populate
* identifier ^extension[=].extension[+].url = "actor"
* identifier ^extension[=].extension[=].valueCanonical = "http://v2.hl7.org/fhir/ActorDefinition/ActorSender"
* identifier ^extension[=].extension[+].url = "documentation"
* identifier ^extension[=].extension[=].valueMarkdown = "Test documentation"
* identifier ^extension[=].extension[+].url = "filter"
* identifier ^extension[=].extension[=].valueString = "Test filter"

* ^extension[+].url = "http://v2.hl7.org/fhir/StructureDefinition/new-obligation"
* ^extension[=].extension[+].url = "code"
* ^extension[=].extension[=].valueCode = #SHALL:able-to-populate
* ^extension[=].extension[+].url = "actor"
* ^extension[=].extension[=].valueCanonical = "http://v2.hl7.org/fhir/ActorDefinition/ActorSender"
* ^extension[=].extension[+].url = "documentation"
* ^extension[=].extension[=].valueMarkdown = "Test documentation"
* ^extension[=].extension[+].url = "filter"
* ^extension[=].extension[=].valueString = "Test filter"

* gender ^extension[+].url = "http://v2.hl7.org/fhir/StructureDefinition/new-obligation"
* gender ^extension[=].extension[0].url = "code"
* gender ^extension[=].extension[=].valueCode = #SHALL:populate
* gender ^extension[=].extension[+].url = "actor"
* gender ^extension[=].extension[=].valueCanonical = "http://v2.hl7.org/fhir/ActorDefinition/ActorSenderTest"

* birthDate ^extension[+].url = "http://v2.hl7.org/fhir/StructureDefinition/new-obligation"
* birthDate ^extension[=].extension[0].url = "code"
* birthDate ^extension[=].extension[=].valueCode = #SHOULD:send
* birthDate ^extension[=].extension[+].url = "actor"
* birthDate ^extension[=].extension[=].valueCanonical = "http://v2.hl7.org/fhir/ActorDefinition/ActorSender"


Profile: APatientReceiverObligationProfile
Parent: APatientReceiverProfile
Id: APatientReceiverObligationProfile
Title: "A) Profile Receiver Obligation Profile"
Description: "This profile includes the obligation extension to the receiver."

* ^extension[+].url = "http://v2.hl7.org/fhir/StructureDefinition/new-obligation"
* ^extension[=].extension[+].url = "code"
* ^extension[=].extension[=].valueCode = #SHOULD:receive

* ^version = "0.1.0"

* gender ^extension[+].url = "http://v2.hl7.org/fhir/StructureDefinition/new-obligation"
* gender ^extension[=].extension[+].url = "code"
* gender ^extension[=].extension[=].valueCode = #SHOULD:print
* gender ^extension[=].extension[+].url = "actor"
* gender ^extension[=].extension[=].valueCanonical = "http://v2.hl7.org/fhir/ActorDefinition/ActorReceiverTest"
* gender ^extension[=].extension[+].url = "documentation"
* gender ^extension[=].extension[=].valueString = "This is the test documentation."




Instance: APatient2
InstanceOf: APatientSenderProfile
Title: "A) Patient 2 Example"
Description: "This patient instance is used to demonstrate how obligation extensions are used"

* identifier.system = "http://fhir.test.de/abc"
* identifier.value = "PAT123"

* name.use = #official
* name.family = "Mustermann"
* name.given = "Gabriele"

* gender = #male
* gender.extension.url = "http://v2.hl7.org/fhir/StructureDefinition/new-obligation"
* gender.extension.extension[0].url = "code"
* gender.extension.extension[=].valueCode = #SHALL:send
* gender.extension.extension[+].url = "actor"
* gender.extension.extension[=].valueReference = Reference(ActorDefinition/ActorDefReceiverTest)
* gender.extension.extension[+].url = "documentation"
* gender.extension.extension[=].valueString = "This is the test documentation."

* birthDate = 1993-08-14
//* birthDate.Obligation.url = "code"
//* birthDate.Obligation.valueCode = #SHALL:send
* birthDate.extension.url = "http://v2.hl7.org/fhir/StructureDefinition/new-obligation"
* birthDate.extension.extension[0].url = "code"
* birthDate.extension.extension[=].valueCode = #SHALL:print

* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M
