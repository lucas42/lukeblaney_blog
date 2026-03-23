---
title: "Representing Roles"
date: 2011-06-04
slug: "representing-roles"
aliases:
  - /post/6192807169
---

One of the hardest parts of creating the [theatre ontology](http://purl.org/theatre) was deciding how to represent roles. It's arguably the most important part too (a theatre archive which doesn't say who did what is pretty useless).

**The Problem**

Basically, the problem that needed solving is that a Person (represented using [foaf:Agent](http://xmlns.com/foaf/0.1/Agent)) does some stuff in a particular project. For example, *Alice directed Theatre company foo's production of Macbeth*. Here *Alice* is the **Agent**, *Theatre company foo's production of Macbeth* is the **Project** and *directing* is the **stuff they did**.

![Diagram showing Agent, Project, and Stuff They Did](/images/representing-roles/diagram1.png)

**Solution 1**

The first approach that can be taken is nice and simple: each **stuff they did** becomes a predicate linking the subject (**Agent**) and object (**Project**). So our example becomes:

`<http://example.org/alice> ex:director <http://example.org/foomacbeth>.`

![Diagram illustrating Solution 1](/images/representing-roles/diagram2.png)

This is an easy-to-understand approach, that would work well if there were a limited number of **stuff they did**s. However, in real life, there is a vast number of **stuff they did**s and each production is different. If I took this approach, the ontology would be full of predicates for obscure **stuff they did**s and I'd have to update it every time someone came up with a new one.

**Solution 2**

This solution was suggested to me at [Culture Hackday](http://culturehackday.org.uk/). Rather than having lots of unrelated predicates linking **Agent**s to **Project**s, each of these predicates would be a subProperty of a predicate defined in the ontology.

![Diagram showing Solution 2](/images/representing-roles/diagram3.png)

This would mean that I'd only have to include the more common **stuff they did**s in the ontology. If someone else wanted to use some obscure **stuff they did**, then they could write their own ontology which creates a new subProperty for it. So in our example:

`<http://example.org/director> rdfs:subPropertyOf ex:didstuffin.`

`<http://example.org/alice> <http://example.org/director> <http://example.org/foomacbeth>.`

This is certainly a clean and logical approach. However, it does require people to write their own ontology in order for the theatre ontology to be useful. After discussing this option with some people, I decided that that would be too big a barrier.

**Solution 3**

The first two approaches represented **stufftheydid** using predicates. This approach uses a class called **Position**. Obviously linking three classes (**Agent**, **Project** and **Position**) can't be done using a single triple, so I used a fourth class, **Role**, to join them all up. (In fact, I found an existing **[Role](http://vocab.org/participation/schema#Role)** class in the [Participation Schema](http://vocab.org/participation/schema))

![Diagram showing Solution 3](/images/representing-roles/diagram4.png)

Whilst this method is a bit more verbose, it means that no **stufftheydid**s are included in the ontology whilst, at the same time, others aren't required to write their own ontologies.

So, our example becomes:

```
_:role rdf:type ex:Role;
        ex:holder <http://example.org/alice>;
        ex:position <http://example.org/director>;
        ex:project <http://example.org/foomacbeth>.
```

**Conclusions**

In the end, I opted for solution 3 for the reasons mentioned above.

(As usual, any feedback would be much appreciated).
