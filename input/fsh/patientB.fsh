Profile: BSuperPatient
Parent: Patient
Id: BSuperPatient
Title: "B) Super Patient Profile"
Description: "super profile that combines all requirements"
* identifier 1.. MS
* name 0.. MS
* name.family MS
* name.given MS
* gender MS
* birthDate MS
* maritalStatus MS




Instance: BPatient1
InstanceOf: BSuperPatient
Title: "B) Patient B 1"
Description: "Simple Instance"
* identifier.system = "http://fhir.test.de/xyz"
* identifier.value = "PAT123"
* name.use = #official
* name.family = "Mustermann"
* name.given = "Gabriele"
* gender = #male
* birthDate = 1993-08-14
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M



