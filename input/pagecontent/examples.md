<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>

> We need to provide some example definitions for actors and obligations to clarify and explain how to use what is described here.


### Options

We have two options to combine profiles with actors/obligations:

| Number | Definitions | Explanation | 
| --- | --- | --- |
| d1 | profile 0..* <- 1 actor 0..* <-> 0..* obligation | actor is in the middle |
| d2 | profile 0..* <- 1 obligation 1..* <- 1 actor | obligation is in the middle |
| d3 | data requirement <- profile 0..* <- 1 functional requirement 1..* <- 1 actor | obligation surrounding profiles |

### Actor Details

* actor capabilities
* obligation profile

### Basis

We can define actors and obligations either based on FHIR (at least as far as possible), or start from scratch:

| Foundation | based on FHIR | completely from scratch |
| --- | --- | --- |
| Actor | ActorDefinition | Actorxxxx |
| Obligation | Obligation1Definition | Obligation2Definition |

### Pairings as the basis for real scenaries or examples

| Pairing | Combination | Naming convention |
| --- | --- | --- | 
| 1 | one:many | p1 |
| 2 | one:one | p2 |
| 3 | many:one | p3 |

### Example Instance(s)

A set of example instances must be created that illustrate the use of those definitions.
Each instance belongs to one option and one pairing.
Therefore, the following naming convention is used:

> d9p9ex99

<pre>
Where
d9 is the definition model
p9 the pairing combination, and
ex99 the example instance.
</pre> 

