<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>

> This page discusses different ways of pairing creators and consumers.


### Example Pairings (Workflows)

For further explanations lets discuss some example pairings of creators and consumers.
The actor icon should denote the actors for which obligations are to be defined:

* one:many: broadcast
* one:one: workflow 
* many:one: data collection

#### Pairing 1: Patient Data broadcast

Using the most common data broadcast messaging which is used to realize the ADT workflow is to send messages from a single source to multiple targets.
All those have different interest in the data, and therefore have different requirements concerning the content.
As a result, the source has to combine and fulfill all requirements from all targets:

<div width="500px">
{% include pairing1.svg %}
</div>

#### Pairing 2: Specific Workflow

<div width="500px">
{% include pairing2.svg %}
</div>


#### Pairing 3: Data Collection (General)

In a data collection scenario, a single consumer collects data from multiple sources, thereby providing a maximum of what can be accepted,
whereas each source only has to fulfill the minimum set of requirements:

<div width="500px">
{% include pairing3a.svg %}
</div>

##### Pairing 3b: Registration + Data Submission (Specific)

In a normal registration workflow, or order entry is a 1:1 relationship between sender and recipient.
But for registration processes it is a many:one relationship:

<div width="500px">
{% include pairing3b.svg %}
</div>

### Constraints

What set of constraints are to added for the different pairings?

| Pairing | Creator | Consumer | Comment |
| --- | --- | --- | --- |
| one:many | maxium (=superset) | | creator collects requirements that drives communication |
| one:one | exact| exact | everything that does not match is lost |
| many:one | minimum | maximum | consumer defines the minimum and maximum of what is considered |

### Consequences

What are the take-awqays or Consequences that results from the aforementioned considerations:

* In most use cases only some (few) actors are needed
* each actor will normally have only a few (1-3) obligations (functional requirements + bound/referenced data)
* Data can be referenced for different activities (eg. Store + print) for same actor
  * Higher requirement level wins (SHALL store + MAY print =>  SHALL)
* Abstract actor can involve direction-specific actors
  * Manager => consumer + response provider (with same or different data)

