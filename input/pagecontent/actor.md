<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>


### Optionen zum Umgang mit Requirements

The meaning of the **mustSupport** profile attribute used in the FHIR implementation guide can only be understood by reading it. 
To do this, the text must be carefully read and interpreted and implemented accordingly. 
From that no machine-readable derivation be extracted, so that the details are inaccessible or not usable for validators.

For implementations further details in the form of requirements and actors are necessary:

#### Option 1

With this option a reference is made to the actors:

<div width="500px">
{% include actor_option1.svg %}
</div>

The requirements are then attached to the actors and are implicitly set.

**Definitions and examples on the artifacts page use "1" as the associated number. Instances use letters as identifier.**

#### Option 2

In this variant, a reference is made to various requiremens:

<div width="500px">
{% include actor_option2.svg %}
</div>

The actors then aggregate the requirements.

**Definitions and examples on the artifacts page use "2" as the associated number. Instances use letters as identifier.**

#### Beispiel Requirements

In the following, a few concrete requirements are to be implemented in order to demonstrate the realization:

| Use Case	| Demographic Consumption | | Bracelet | |Spiritual Leader
|Activity	| to be stored	|to be printed	|to be displayed |to be printed |sent/forward
| --- | --- | --- | --- | --- |
|Element	| | | | | |
|Patient	| | | | | |
|.id	|SHALL exactly	|SHOULD equivalent	|SHOULD equivalent	|SHALL equivalent	|
|.name	|SHALL exactly	|SHOULD equivalent	|SHOULD equivalent	|SHALL equivalent	|SHOULD equivalent
|.name.family | | | exact | exact |
|.name.given| | | truncate|modify|
|.name.given[0]| | | exact
|.name.given[1]| | |truncate
|.dob	|SHALL exactly	|SHOULD equivalent	|SHOULD equivalent	|SHALL equivalent	|
|.address	SHALL equivalent	| | | |
|.religion | | | | |SHOULD equivalent
|.maritalStatus	|SHOULD equivalent	| | | | |


#### Examples

##### 1: via Actor

<div width="500px">
{% include actor_option1_example.svg %}
</div>

##### 2: via Obligation

<div width="500px">
{% include actor_option2_example.svg width=500px %}
</div>

##### 3: via detailed Obligation

In this example, the bracelet printer should choose any name. This may lead to using the birth name:

<div width="500px">
{% include actor_option2_example2.svg %}
</div>

##### 4: via Obligation with more hierarchies

To select a current name for the Bracelet Printer, an artificial layer with *currentName* has been removed.

<div width="75%">
{% include actor_option2_example3.svg %}
</div>

##### 5:

An artificial level is avoided when a derivative is made as *profile1* and *profile2*. 
In this case, profile 2 prohibits the use of the birth name via the cardinality *0..0*:

<div width="500px">
{% include actor_option2_example4.svg %}
</div>

#### Umsetzung in FHIR

The current solution in FHIR R5 is as follows:

<div width="100%">
{% include actor_fhir_r5_current.svg %}
</div>

This contains the relevant information in Obligation extension .code.

In all subsequent proposals, the bond is distributed among 2 classes, which are then to be implemented together as a resource:

##### Implementation Variant 1

Reference from a profile (require change of profile):

<div width="100%">
{% include actor_fhir_r5_option1.svg %}
</div>

##### Implementation Variant 2

Reference from the obligation (quire a change of the obligation):

<div width="500px">
{% include actor_fhir_r5_option2.svg %}
</div>

##### Implementation Variant 3

separate linking:

<div width="500px">
{% include actor_fhir_r5_option3.svg %}
</div>
