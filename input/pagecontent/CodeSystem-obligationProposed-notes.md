> Please consider that the hierarchy levels are only introduced for convenience when reading the codesystem.
> It can be used to identify the primary axes.
> In total it is in principle a poly-hierarchy that is established using the parent relationship, thereby introducing multiple
> parents from the different axes, each starting with level 1.

There are several topics open for discussion. 
Those are indicated in the comments.

Any other issues?

### Examples / Explanations / Comments

Some examples may help to understand how this codesystem is to be used.
In general, only values below the "green concept" in the mindmap in the introduction can be instantiated. 
All others are for definitional purposes.

The following table may help to understand some examples and common use cases:

| Code | Explanation |
| --- | --- |
| SHALL:populate | The system SHALL be capable of providing data for the instance and populating this element accordingly. |
| SHOULD:send | In double contrast to the previous code, the system is neither required to do something in general, nor especially to create the instance. It is asked for sending the data instance. It is common or good practice, in other words there is some incidence to implement it, but a vendor can also decide not to do so.|
| .:populate:. | Does not denote that the created artifact has to be sent over the wire. Instead, the creation itself is indicated. |
| .:missing | The system can use information why requested details are missing. This is aka of null-flavor or data-abstent-reason. |

### Combining Elements

Another outstanding question is the combination of elements like "either A or B must ...".
Can this be solved with invariants? Or are other type of constructs necessary?
