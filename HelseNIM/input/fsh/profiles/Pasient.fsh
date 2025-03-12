Logical: NoBasisHumanName
Id: no-basis-HumanName
Title: "no-basis-HumanName"
Description: "Basisprofil for Norwegian HumanName. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds the concept of middlename and further explains of the use for the data-elements in a Norwegian context. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case."
* fornavn 0..* SU string "Given names (not always 'first')."
* mellomnavn 0..1 SU string "Defines a middle name as a specific extension as this is widely used in Norwegian names. The middlename is defined in norwegian legislation (lov om personnavn)."
* etternavn 0..1 SU string "Ref. \"lov om personnavn\" for further details about Norwegian HumanNames.\r\n\r\nThe part of a name that links to the genealogy. In some cultures (e.g. Eritrea) the family name of a son is the first name of his father."

Logical: Pasient
Id: Norsk-Pasient
Title: "Norsk-pasientinformasjon"
Description: "En norsk pasient"
Characteristics: #can-be-target
// url, status, purpose, and other metadata could be defined here using caret syntax (omitted)
* name 0..* SU NoBasisHumanName "Name(s) of the human" "The names by which the human is or has been known"
* kjonn 0..1 SU CodeableConcept "http://hl7.org/fhir/ValueSet/administrative-gender" "Administrativt kjønn"
  * ^binding.valueSet = http://hl7.org/fhir/ValueSet/administrative-gender
  * ^binding.description = "HL7 Administrative Gender"
  * ^binding.strength = #preferred