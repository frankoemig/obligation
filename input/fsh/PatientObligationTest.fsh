Profile: PatientObligationTest
Parent: Patient
Id: patient-obligationtest
Title: "Patient (Obligation Test)"
Description: "This profile represents the constraints applied to the Patient resource to test obligation extensions"

* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false

* ^extension[0].url = "http://v2.hl7.org/fhir/StructureDefinition/new-obligation"
* ^extension[=].valueBoolean = true

* ^extension[+].url = "http://v2.hl7.org/fhir/StructureDefinition/new-obligation"
* ^extension[=].extension[0].url = "code"
* ^extension[=].extension[=].valueCode = #MAY:send
* ^extension[=].extension[+].url = "elementId"
* ^extension[=].extension[=].valueString = "birthDate"
* ^extension[=].extension[+].url = "actor"
* ^extension[=].extension[=].valueCanonical = "http://v2.hl7.org/fhir/ActorDefinition/server"

//* name 1..
* name ^extension[0].url = "http://v2.hl7.org/fhir/StructureDefinition/new-obligation"
* name ^extension[=].extension[0].url = "code"
* name ^extension[=].extension[=].valueCode = #MAY:send
* name ^extension[=].extension[+].url = "actor"
* name ^extension[=].extension[=].valueCanonical = "ActorSender"

* name ^extension[+].url = "http://v2.hl7.org/fhir/StructureDefinition/new-obligation"
* name ^extension[=].extension[+].url = "code"
* name ^extension[=].extension[=].valueCode = #SHALL:print
* name ^extension[=].extension[+].url = "actor"
* name ^extension[=].extension[=].valueCanonical = "ActorReceiver"

* name.text ^extension[0].url = "http://v2.hl7.org/fhir/StructureDefinition/new-obligation"
* name.text ^extension[=].extension[0].url = "code"
* name.text ^extension[=].extension[=].valueCode = #MAY:send
* name.text ^extension[=].extension[+].url = "actor"
* name.text ^extension[=].extension[=].valueCanonical = "ActorSender"
* name.text ^definition = "Text representation of the full name. Due to the cultural variance around the world a consuming system may not know how to present the name correctly; moreover not all the parts of the name go in given or family. Creators are therefore strongly encouraged to provide through this element a presented version of the name. Future versions of this guide may require this element"

* name.family ^extension[0].url = "http://v2.hl7.org/fhir/StructureDefinition/new-obligation"
* name.family ^extension[=].extension[0].url = "code"
* name.family ^extension[=].extension[=].valueCode = #MAY:send
* name.family ^extension[=].extension[+].url = "actor"
* name.family ^extension[=].extension[=].valueCanonical = "http://v2.hl7.org/fhir/ActorDefinition/server"

* name.family ^extension[+].url = "http://v2.hl7.org/fhir/StructureDefinition/new-obligation"
* name.family ^extension[=].extension[+].url = "code"
* name.family ^extension[=].extension[=].valueCode = #SHOULD:print
* name.family ^extension[=].extension[+].url = "actor"
* name.family ^extension[=].extension[=].valueCanonical = "ActorSender"

* name.given ^extension[0].url = "http://v2.hl7.org/fhir/StructureDefinition/new-obligation"
* name.given ^extension[=].extension[0].url = "code"
* name.given ^extension[=].extension[=].valueCode = #MAY:print
* name.given ^extension[=].extension[+].url = "documentation"
* name.given ^extension[=].extension[=].valueMarkdown = "just print it somehow"
* name.given ^extension[=].extension[+].url = "filter"
* name.given ^extension[=].extension[=].valueString = "*"
* name.given ^extension[=].extension[+].url = "filterDocumentation"
* name.given ^extension[=].extension[=].valueString = "docu of filter: *"

* name.given ^extension[+].url = "http://v2.hl7.org/fhir/StructureDefinition/new-obligation"
* name.given ^extension[=].extension[0].url = "code"
* name.given ^extension[=].extension[=].valueCode = #SHALL:display
* name.given ^extension[=].extension[+].url = "documentation"
* name.given ^extension[=].extension[=].valueMarkdown = "just display it somehow"
* name.given ^extension[=].extension[+].url = "filter"
* name.given ^extension[=].extension[=].valueString = "*"
* name.given ^extension[=].extension[+].url = "filterDocumentation"
* name.given ^extension[=].extension[=].valueString = "docu of filter: *"

//* name.given MS

* telecom ^extension[0].url = "http://v2.hl7.org/fhir/StructureDefinition/new-obligation"
* telecom ^extension[=].extension[0].url = "code"
* telecom ^extension[=].extension[=].valueCode = #SHOULD:send
* telecom ^extension[=].extension[+].url = "actor"
* telecom ^extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/tools/ActorDefinition/server"

//* gender 1.. MS
//* birthDate 1.. MS