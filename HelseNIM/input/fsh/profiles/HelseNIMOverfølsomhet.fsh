// Title of the model
Logical: HelseNIMOverfolsomhet
Id: helsenim-overfolsomhet
Title: "Helse-NIM Overfølsomhet - test"
Description: "En logisk modell for Helse-NIM for overfølsomhet"

// Attributes
* innholdsstatus 0..1 CodeableConcept "Forklaring på eventuell manglende informasjon"
  * ^binding.valueSet = https://www.hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-allergies-uv-ips
  * ^binding.description = "Absent or Unknown Allergies - IPS"
  * ^binding.strength = #preferred
* kliniskStatus 0..1 CodeableConcept "Om overfølsomheten er aktiv"
  * ^binding.valueSet = https://www.hl7.org/fhir/ValueSet/allergyintolerance-clinical-status
  * ^binding.description = "Allergy Intolerance Clinical Status Codes"
  * ^binding.strength = #preferred
* startdato 0..1 dateTime "Tidspunkt da overfølsomheten ble konstatert"
* sluttdato 0..1 dateTime "Tidspunkt da overfølsomheten eventuelt sluttet"
* verifikasjonsstatus 0..1 CodeableConcept "Om overfølsomheten er bekreftet"
  * ^binding.valueSet = https://www.hl7.org/fhir/ValueSet/allergyintolerance-verification-status
  * ^binding.description = "Allergy Intolerance Verification Status"
  * ^binding.strength = #preferred
* type 0..1 CodeableConcept "Underliggende mekanisme som forårsaker reaksjonen"
  * ^binding.valueSet = https://www.hl7.org/fhir/ValueSet/allergyintolerance-type
  * ^binding.description = "Allergy Intolerance Type"
  * ^binding.strength = #preferred
* kategori 0..1 CodeableConcept "Kategori av agens"
  * ^binding.valueSet = https://www.hl7.org/fhir/ValueSet/allergyintolerance-category
  * ^binding.description = "Allergy Intolerance Category"
  * ^binding.strength = #preferred
* alvorlighetsgrad 0..1 CodeableConcept "Hvor alvorlige konsekvensene av overfølsomheten anses å være"
  * ^binding.valueSet = https://www.hl7.org/fhir/ValueSet/allergyintolerance-criticality
  * ^binding.description = "Allergy Intolerance Criticality"
  * ^binding.strength = #preferred
* agens 0..* CodeableConcept "Hvilke agens som kan knyttes til overfølsomheten"
* kommentar 0..1 string "Kommentar eller supplerende opplysninger"
* dokumentasjonsdato 0..1 dateTime "Dato for når opplysningen ble dokumentert"
* reaksjon 0..* CodeableConcept "Liste med reaksjoner for den aktuelle overfølsomheten"
* manifestasjon 0..1 CodeableConcept "Hvilken reaksjon pasienten har hatt"
  * ^binding.valueSet = https://www.hl7.org/fhir/ValueSet/allergyintolerance-manifestation
  * ^binding.description = "Allergy Intolerance Manifestation"
  * ^binding.strength = #preferred
* alvorlighetsgradReaksjon 0..1 CodeableConcept "Hvor alvorlig reaksjon pasienten har hatt"
  * ^binding.valueSet = https://www.hl7.org/fhir/ValueSet/allergyintolerance-severity
  * ^binding.description = "Allergy Intolerance Severity"
  * ^binding.strength = #preferred