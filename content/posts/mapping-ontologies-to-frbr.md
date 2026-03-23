---
title: "Mapping ontologies to FRBR"
date: 2010-10-17
slug: "mapping-ontologies-to-frbr"
aliases:
  - /post/1332040644
---

In [my last post](/posts/an-audience-ontology/) I mentioned that I was unsure about creating superclasses of other people's existing classes (apparently known as "[ontology hijacking](http://www.semanticoverflow.com/questions/1100/what-is-ontology-hijacking)"). I also wasn't keen on using the label "Entertainment" to describe anything with an audience.

Well, I had a closer look at the [music ontology](http://purl.org/ontology/mo/) and found that a number of its classes are subclasses of [FRBR](http://purl.org/vocab/frbr/core#) classes. I hadn't previously heard of FRBR, but it seems to be what I've been looking for. It describes a number of what it calls "[Endeavours](http://purl.org/vocab/frbr/core#Endeavour)", best summed up by this diagram [from wikipedia](http://en.wikipedia.org/wiki/Functional_Requirements_for_Bibliographic_Records):

![Wikipedia summary of FRBR Group 1](/images/mapping-ontologies-to-frbr/frbr-group1.svg)

It seems to make sense for an audience to be related to each endeavour. Also, the audience of a work could be said to be the union of the audiences of all the work's expressions. (Similarly, an expression's audience could be defined in terms of its manifestations).

In order for this to be useful, other ontologies' classes would need to be subclasses of FRBR classes. Here's my attempt at mapping a few ontologies to FRBR:

![FRBR mapping](/images/mapping-ontologies-to-frbr/frbr-mapping.png)

I'd be grateful for other people's opinions on this.

One thing that is missing from this is events ([po:Broadcast](http://purl.org/ontology/po/Broadcast) and [mo:Performance](http://purl.org/ontology/mo/Performance)) - perhaps these could be said to be [frbr:Items](http://purl.org/vocab/frbr/core#Item)? I'm not really sure what an "item" actually is.

I know this approach isn't anywhere near perfect, but I think it's closer than my previous "Entertainment" and "EntertainmentEvent" classes. Again, any feedback would be appreciated.
