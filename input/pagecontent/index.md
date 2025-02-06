<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>

### Goal

> All product lines have concepts for documenting requirements, at least on an abstract level, without further details.
> Those concepts have different names, and are precoordinated into the different standards in different ways.
> In v2 (rep. v2 profiles) this is named optionality or usage.
> In FHIR the same information is maintained in form of an indication using **must-Support**.
> This guide is intended to analyse the background, and to propose an abstract model to solve
> this problem, that is also capable for all product lines in parallel so that no derivations are necessary.
> 
> The fundamental question is in which way it can be handled?
> The original idea was to instantiate profile hierarchies. But there are two problems:
> a) a hierarchy is difficult to establish from a creation and maintenance perspective because it is tedious.
> b) a hierarchy only allows for adding constraints - they cannot be taken away.
>
> The intend is to find a solution for this dilemma.


### Question in Scope

> Why are we writing this guide?
> (It is written as an IG to test how it could be represented.)

* Where to place/anchor obligations?
  * As extensions?
  * As separate resource?
* Differentiation of obligations
* Target/Goal of obligations
  * Formalize current status
  * Give guidelines for „clean/solid“ requirements
* Codesystems?
  * Simple ones
  * As ontology?

Profiles define requirements on data. They contain a lot of textual requirements in the natural language description of the different elements. 
Support of those is simply marked, but without any further details - unless documented in the descriptions.
The question is whether and how functional requirements may be added.

There are three basic options. Each should still support profiling in the vertical direction:

<div width="500px">
{% include problem.svg %}
</div>

On the one hand, profiles are created as a hierarchy. Derived profiles add more constraints. Ideally, it should be possible to add functional requirements 
on all levels, but not only on leaf elements.

On the other hand, functional requirements should be added in combination with actors. Each actor describes which data element should be supported in which way.
As such it is possible to either attach the requirements behind an actor (option 1) or in the middle (option 2).

Following, the details are examined further.

#### Profiling Hierarchy

Most of the profiles are defined "as-is", i.e. just taking the base standard and attaching requirements to it, thus forming a set of single profiles that 
are independent from each other. (At least, in most IGs they are created that way.)

![Profile Set](profile_set.png){:width="600px"}
<br clear="all"/> 

However, a profile can also be derived from another profile, or by combining requirements from distinct profiles into a new one.
In most cases, a profile may be further constrained into more specific ones which are distinct by its purpose.

A good example would be for sender/receiver: The sender has to support the requirements by all receivers.

![Profile for SEnder/Receiver](profile_interaction.png){:width="600px"}
<br clear="all"/> 

This IG is used to work this out.

#### Different Options

Another aspect is the discussion on where to place requirements/obligations:

**Option 1** attaches the requirements behind an actor, therefore using the actor as a facade and entry point for management.
**Option 2** puts the obligation in the middle, thus allowing an actor to use the obligations as a grouper for the same set of requirements.
**Option 3** separates functional and data requirements.


![Profile Hierarchy with Obligations](hierarchy_with_obligations.png){:width="600px"}
<br clear="all"/> 


### Background

Currently, only **static data profiles** are defined. They describe the high-level requirements using an indication in form of must-Support (FHIR) or optionality (v2/V3).
The details are not exemplified, or extracted into additional explanations using an implementation guide (FHIR).

From a timing perspective, all transactions/interactions can be declared as a creator or consumer, but not both. 
(The client/server perspective does not help here.)
Over time, this may change, i.e. a consumer may become a creator, but ofcourse in another/new transaction.
For each transaction, as is shown in the following drawing, additional specifications can be made:

![Profile View](obligation_purpose.png){:width="600px"}
<br clear="all"/> 

Therefore, additional requirements must be introduced, documented, realized and tested.
On both ends, this set can be differentiated into requirements/expectations into the data, and functions that are to be executed with the data.
Of course, the functions as well as data expectations will vary according to creator or consumer roles: The consumer has to grab the data from somewhere, 
he is expected to support a certain set in a specific way, but may extend it to his needs. The consumer has specific (minimal) expectations for the data,
but is also expected to perform specific functions with the data, like printing or storing.

![Profile Example](obligation_example1.png){:width="600px"}
<br clear="all"/> 

The previous figure gives an example how a complex interaction may look like. 
It demonstrates an actor (1) that send the same message to different recipients. Each of those may have different expectations and requirements on this data.
Also, they want to perform different activities with it.
The same applies for the response, or if some data is forwarded to another actor, and then returning the response.

The different obligations are placed 'on top' of the profiles, in combination with the actor, and the direction of communication.
This is expressed by the yellow boxes.

Further analysis shows that they are related. The following drawing is an extract with focus on relating the corresponding profiles:

![Profile Example (Details)](obligation_example2.png){:width="600px"}
<br clear="all"/> 

**Data profiles** (in grey) have to follow a specialisation hierarchy by adding constraints. For an interaction, sending and receiving profiles have to be compatible 
so that a sender fulfills the requirements of a receiver in addition to the base requirements from the upper level profile.
**Obligation** (in yellow/orange) on the other side, are split into sender (or creator) and receiver (or consumer) requirements.
A sender only have to fulfill (and further constrain) those requirements.
Obligations are also split into:

* requirements on data (minimum/maximum for sender)
* requirements on data (minimum/maximum for receiver)
* (internal) activities (how to deal with the data)
* (response) activities (what to return/forward as a receiver/router)

![Profile Example (Derivation)](obligation_example3.png){:width="600px"}
<br clear="all"/> 

**The problematic aspect is to add further constraints in more derived profiles:** 

#### Effective Direction of Obligations

Obligations cover different aspects as shown by the following figure:

![Effective Direction](obligation_operational_direction.png){:width="600px"}
<br clear="all"/> 

* internal = functional = what should be done internally
  * as sender/creator: where to get the data?
  * as receiver/consumer: where to place the data?
* direct response = what should be done as a direct response to a request/message (interaction)
* indirect response = what should be done as an direct response to the transaction  (workflow)
* forwarding = how to forward the data (if at all)

#### Application vs. Data Exchange

An important for this discussion is what kind of obligations/requirements are to be managed.
That could include behavior for the application itself, without having any direct relation to data exchanges. For example, what an application has to do
in order to register a patient within that application. That would include all requirements for this specific application what is dependent on the purpose and intended
use case.

When reducing it to requirements directly impacting or being impacted from data exchange, that could imply specifications how data has to be entered.

On the other side, those specifications could only refer to requirements directly dealing with data exchange.

### Purpose of this 'IG'

The proposal is documented in form of an **implementation guide**. That should help to understand the proposal better.

This IG proposes additions to FHIR to enhance the use of must-support.
The primary objects are:

* Obligation
  * as instantiation of current extension to examine restrictions
  * as new resource, represented as LM for the moment, to evaulate options
* Codesystems and Value Sets to formalize constraints, obligations and requirements
  * [verbs](CodeSystem-verb.html) (requirement level)
  * [obligations](CodeSystem-obligationAlone.html) (what to do)
  * [data expectation](CodeSystem-dataExpectation.html) (what can happen to data)

There are different ways to represent those.

#### Limitations / Caveat

With this IG, we primarily want to explain the requirements and to re-use as many concepts from FHIR as possible.
But where this is not possible, alternatives are proposed sing **Logical Models** (LMs).

### mustSupport vs. Obligations

An important question is the combination of mustSupport with obligaitons?
Is it possible to combine them, or are they mutually exclusive?
The following introduces some thougths and consequences:

#### mustSupport: 2 or 3 values?

A foundational question is whether **mustSupport** is based on 2 or 3 values?

| | 2 values | 3 values |
| --- | --- | --- |
| true	| support mandatory | support mandatory |
| not set | unknown whether support is necessary | unknown whether support is necessary  |
| false | same as not set | forbidden to support |

As can be seen, the 2-value approach misses an important option for using **negations**, i.e. to express that something is forbidden.

> The notion of explictly forbidding something, esp. with regard of supporting that element, is dangerous, and sometimes counterproductive.
> Alternatively, cardinality should be used to express the **missing presence**, i.e. empty field.

#### Implications between both

Another question is whether mustSupport and obligations can be used together, on top of each other, or mutually eclusive?
The response has consequences on what is allowed in profiling.

1. mutually exclusive:
Obligations are only defined for elements where msutSupport is undefined (2 or O3 values approach).
That prevents from declaring commonalities in the base profile.

2. obligations imply mustSupport in base profiles
Obligations are only attached to elements (in derived profiles) where mustSupport is set in the base profile.
That implies that the base profile is the super profile that aggregates all obligations into it. Also, mustSupport as a constraint cannot be taken away in derived profiles.

#### Relevant Conformance Constructs

In response to the previous question, it is important to note which conformance constructs are affected, respectively relevant for profiling:

| relevant | | not relevant |
| --- | ------- | --- |
| mustSupport | | vocabulary |
| cardinality | | length |
|  | | data types -> via profiles |

Relevant concepts are to be considered following.

### Some Thoughts at the beginning

The following mindmap should examine and introduce the necessary concepts and their relationship.
The intent is to separate them so that they represent atomic concepts.
As a consequence they appear in multiple positions. To aovid duplications, base concepts are introduced on the left,
whereas the usage is repeated on the right.
The right side separates the different types of actors into sender/creator, router/forwarder,a nd receiver/consumer.
This separation also drives source and target as well as the associated activities because a pure sender cannot store data.
To cover that, actor definitions shall combine different obligations for profiles with regard to their role:

<div>
{% include thoughts.svg %}
</div>

The **verb** should be attached to **activity** to denote the level of requirement.

The **data expectation** belongs to router and receiver that have to deal with data. The same is valid for **modification**.

Information maintained as **sinple codes** is indicated as simple text (w/o a box).

### Deriving Constraints

A problem is to derive constraints: Profiles only allow for adding more constraints, they one cannot taken them away anymore.
This way it is problematic to specify obligations on some details (attributes) thereby only partially adding or describing constraints.
As an example: a super/base profile cannot be devided into sender or receiver requirements on disjunct data/attributes.
As a consequence, obligations are declarations in combination with actor definitions on top of annotation profiles. 

### Open Topics

* examples for
  * profiles
  * obligations
  * actors

### Links/References

* Confluence: [Support Handling](https://confluence.hl7.org/display/CONF/Support-Handling)
* Zulip
  * discussion about rendering obligations
  * specifying requirements in IGs
* obligation extension
