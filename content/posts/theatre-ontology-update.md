---
title: "Theatre Ontology Update (Culture Hackday 2011)"
date: 2011-01-29
slug: "theatre-ontology-update-culture-hackday-2011"
aliases:
  - /post/2997802925
---

![Ontology Whiteboard](/images/theatre-ontology-update/whiteboard.png)

As part of culture hackday 2011 a group of us decided to hack the Royal Opera House's archive into RDF to make it more manageable. Obviously, the first thing we needed was an ontology. We went through the archive taking note of what classes and properties we would need, whilst trying to keep it generic enough to not just apply to Opera. Its was great to be able to discuss stuff with people in person, any previous attempts of mine to design an ontology were mainly done alone, or with discussion over the internet. I was also able to talk to a range of different people involved in theatre (both amateur and professional) and see what they would like to see in an ontology.

As a result, I have made a number of changes to the Theatre Ontology:

- Instead of a Show class, the ontology now refers to [FRBR](http://purl.org/vocab/frbr/core#)'s Work class
- A move away from the use of foaf:Project in favour of FRBR terms.
- Deprecating 'PerformableProject' and using owl:unionOf to group classes.
- Letting several properties apply to individual performances as well as whole productions.
- The introduction of some new special subclasses of performances, such as Press Nights and Rehersal Readings
- The introduction of Accessibility Provisions, such as sign language, surtitles and audio descriptions
- The introduction of a Voice class to indicate what sort of voice (soprano, tenor etc) a particular character was scored for.
- A number of new properties to describe things such as which production company put on a production and who sponsored a production or performance.
- A property to indicate that a performance has been recorded for broadcast which links into the [programme ontology](http://purl.org/ontology/po/).

Any properties or classes which have been superseded have been left in the ontology, but marked as 'archaic'.

The latest version of the ontology can be found at [http://purl.org/theatre#](http://purl.org/theatre#). As usual, I'd love to [hear any feedback](http://lukeblaney.co.uk/contact) about what I've done / how I could improve it.
