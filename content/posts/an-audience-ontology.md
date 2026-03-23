---
title: "An Audience Ontology"
date: 2010-10-12
slug: "an-audience-ontology"
aliases:
  - /post/1294635332
---

There are quite a few existing ontologies which describe things that are done for audiences, for example programmes, music and theatre. However, I was unable to find any ontology to describe the relationship between these things and the audiences themselves. I first thought of this because I wanted a way of recording which episodes of tv/radio shows I had seen/heard. Using this, it would be possible to create a recommendation engine which doesn't recommend stuff you've already seen/heard. Another use for an audience ontology could be to publish audience figures. I asked a question at semantic overflow and got lots of helpful responses.

I wanted to make the ontology as generic as possible; my original use case only covered programmes, but the same audience relationships could be applied to music, theatre and possibly even art. I created an "EntertainmentEvent" class, representing any event meant for an audience. I then declared po:Broadcast and mo:Performance to be subclasses of this. I'm not really sure if declaring someone else's class to be a subclass of mine is allowed/good etiquette (please let me know if there's a more appropriate way to do this). Associated with the EntertainmentEvent class, is the "Audience" class, which is a foaf:Group consisting of audience members. Each Audience class can have "AudienceFigures" classes, which contain the size of the audience and the source of the figure.

This model should work for audience figures, however I saw a problem if it were used for a recommendation engine. It would be possible to infer that if a someone was a member of the audience for a particular broadcast then they had seen/heard that specific episode. However, if a user was only able to remember that they had seen a given episode, but not which broadcast, then there would be no way to record this in the model. To get around this, I created the "consumed" property. This relates a foaf:Agent with an "Entertainment" class. The Entertainment class groups EntertainmentEvents which the audience would think of as repeats of each other. I declared po:Episode, mo:MusicalWork and thea:Production to be subclasses of this. (Again, please correct me if this is bad).

This new model seems a bit hacky as it includes a property which could be inferred from other data in the model. I would welcome any feedback about the model, the naming (Is 'consumed' too generic? Does "Entertainment" include things which aren't entertaining?), declaring other people's classes as subclasses of mine or anything else. I have put up an early draft of the ontology at http://purl.org/audience, please let me know what you think.
