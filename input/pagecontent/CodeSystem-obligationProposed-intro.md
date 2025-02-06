<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>


This Codesystem has originally been derived from 3 individual codesystems that were the basis for discussion in Conformance WG:

* verbs, aka of reqquirement level
* obligation, aka of functional requirements, and
* data expectation, aka of data requirements

During the course of discussion Conformance WG members became aware that due to the overarching complex structure of obligations the maintenance
as individual and independent codesystems seems inappropriate. It is also unnecessary complex to instantiate them in form of reasonable combinations
when taking them from different CS. 
Instead, it appears much better to combine them as an ontology in form of a single codesystem
and to introduce the meaning by properties and polyhierarchies. This way, complex obligations can be expressed. 
Consequently, those properties (where indicated) are inherited downwards.

As a result from the discussion, borrowing from the codesystem currently bound to the obligation extension led to an improved and enhanced codesystem.
It has multiple axes to separate concerns. It is designed as follows:

Following a short intro into the different axes. 
The purely definitional ones are marked in red, supporting the foundation for precoordination in yellow. 
The green will contain precoordinated and defined concepts that can be instantiated and used in combination with profiles. 
Due to their ontological definition, their meaning should be clear:

<div>
{% include dimensions.svg %}
</div>

* definition/qualification:
  * Negation: to tag the inverse of a statement or to express the explicit negation
  * Conformance verbs to denote the requirement level
  * Actor, i.e. indirect direction (of communication)
  * Actor Type, i.e transport or data management
  * Functional Type
  * Element Level for application, i.e. at root, on a node, or just at leafs
* for precoordination:
  * Activities, aka of base obligations
    * Functional Requirements, i.e. data management and transport
      * as producer
      * as consumer
	  * (at single point in time one is either producer or consumer)
      * other?
    * Data Managment, aka creation/consumption
    * Data Obligation, aka expectation

Axis to be instantiated:

* combined obligations (shown at the end)

Some remarks:

* Some requirements are only interpretable in combination with minimum cardinality:
  * For example, "SHALL:populate" does not imply that a value is always present. Otherwise we have side-effects in interpreting the concepts.

### Interactions

Following, some interactions should help to understand where specific activities take place so that it becomes easier to align with obligations.
The drawings should be taken as abstract examples and may of course vary to reality.

#### Simple Receiver

In the following, a component - the receiver - is taking the data, parse it, and maintains the data in a central space - the "parsed data".
The consumer actor in return is triggered, takes the data, and starts some kind of processing with it.
It may result in any kind of modification which is shown as simple interactions with the storage (database).
As a response to this internal processing, some data is provided for preparing a response to the originator.
(It should be noted that this drawing abstracts from a transport vs. application acknowledgement.)

<div>
{% include actors_receiver.svg %}
</div>


#### Router/Forwarder

The other drawing examines what happens if data is routed to another party.

<div>
{% include actors_route.svg %}
</div>

