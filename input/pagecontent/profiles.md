<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>

> This page collects different aspects on profiles that are relevant for our discussion:

### Different Types of Profiles

To understand the profile hierarchy better, the types of profiles must be known.
In other words, when creating profiles they can be of different types that are shown following:

<div width="500px">
{% include profile_types.svg %}
</div>

They are distinguished by what can be added to a profile that is derived from the base framework or another profile:

| annotation profile | obligation profile | constrainable profile | imlpementable profile | language profile |
| --- | --- | --- | --- | --- |
| semantic explanations | acitivity | **support** | same as constrainable | tags for specific languages |
| slicing on repetitions | data expectations | (min/max) cardinality constraints | | | 
|  |  | more sub-structures | | | 
|  |  | vocabulary constraints | | | 
|  |  | length constraints | | |

Of course, also combinations are possible.

#### Openness

For a profile it must be clear, whether it is **open** or **closed**, i.e. whether more substructures can be added or not!

#### Adding Constraints

Constraints can be added by tightening:

* declare support
* limit cardinality
* limit vocabulary
* add substructures (for open profiles)

### Using Obligation Extensions

Currently, obligations are managed by additions to profiles.
IG-publisher does that by creating a special type of profile, that only allows for adding obligations.
This is shown in the PatientObligationTest profile.

<div width="500px">
{% include profile.svg %}
</div>

The problem arises from adding constraints to derived profiles: They are not eliminated or withdrawn, they must be kept.

Therefore, the base profile should in principle be a superset of requirements - at least from a sender's perspective.

### Nested Profile Hierarchy

Using extensions would result in a profile hierarchy like the following:

<div width="500px">
{% include profile_example.svg %}
</div>

As shown below, an obligation profile only adds additional information (currently by 
using [extensions](https://build.fhir.org/ig/HL7/fhir-extensions//StructureDefinition-obligation.html) 
with [codes](https://build.fhir.org/ig/HL7/fhir-extensions//CodeSystem-obligation.html) ) that
repeats them (when used on attributes): 

<div width="500px">
{% include obligation_extension.svg %}
</div>

> Missing is additional information about the way data isntances can be modified!

Obligation extensions combine the requirement level (SHALL/SHOULD/MAY) with the activity thus creating precoordinated codes.
Another problem is the addition of:

* v2-re
  * refers to chapter 2, but there are no real obligations defined; one can only derive to populate this field
* ihe-r2
  * there is no appendix Z, only for as FHIR implementation material, that is not valid for HL7 v2 references; as such one can directly use FHIR terms
  * ITI Vol 2x talks about "null" to denote that the data on the receiving side shall be removed; that does not imply the usual null-flavor
  * ITI VOl 2x C.1.1 talks about support, but also allows ignoring on receiver side
* ihe-r+
  * ITI Vol 2x Ap. C: profiled to "R" from "O"
* std
  * aka of default

Missing is also **negations**: One cannot express that "printing is not allowed".
Currently, a few codes exist to represent it, like "no-error" or "no-alter".

Missing functionality:

* deletion of data on receiving side (in v2 expressed with two double-quotes)

Another missing aspect is the addition and handling of data: **data expectations**:

* adding more details/structures (eg. separating a street line into street and house number)
* more data (eg. adding an appartment to an address)
* adding other data 
* sending information about missing data, aka data-absent-reason or null-flavor

Or details about modifying data:

* truncation
* translation
  * equivalents
  * synonyms

Another point woth discussing: Combining obligations across profiles for a specific use case, 
thus combining receiver obligations with sending ones. For example, a recriver has to return the data 
in exactly the same way, the sender has sent it.

### Profile Hierarchy Model using Obligation Extension

> This is exemplified as an example "Patient A".

When using obligaiton extensions, the following hierarchy would be established:

<div width="500px">
{% include example_extension.svg %}
</div>

That documents that we cannot have a natural profile hierarchy that adds constrains to a base profile that include the overall sum of all requirements.

### How to create Profile Hierarchies?

What principles apply to establish a profile hierarchy? 
What is to be considered?

A complete set of different use cases belonging together a comprised of a set of workflows involving actors that are played by different systems.

![Profile View](profile_view.png){:width="600px"}
<br clear="all"/>  

### Obligation Extension

Using an obligation extension as is currently discussed leads to a "derived" profile where only obligations are added.
(An additional specific extensions ensures that no other constraints are added with regard to the parent profile.)

![Obligation Extension](obligation_extension.png){:width="600px"}
<br clear="all"/>  


As can be seen, the obligation is additional data in the profile that points to actors.
Consequently, as mentioned above, the different obligations are repeated therefore blowing up the profile itself.

### Obligation Resource

Another solution is the use of a new resource: Obligation, that is created and maintained separately.

![Obligation Resource](obligation_resource.png){:width="600px"}
<br clear="all"/>  

As can be seen from the workflow and profile view, there is a tight relationship between the actor and associated obligation instances.

### Profile Generation

If constraints cannot be added to a super profile, the profiles for use, e.g. validation, must be generated:

![Obligation Generation](obligation_generated.png){:width="600px"}
<br clear="all"/>  

What is taken into a single profile is indicated by the light-green box.
The **part-of** relationship between actor definitions are used to indicate this aggregation.

#### Integrating Transactions

Working with profiles has to include - from an actor perspective - the sequence in which certain requirements/obligations are to be performed.
Normally, each transaction references a different set of data which is represented as a profiles.
