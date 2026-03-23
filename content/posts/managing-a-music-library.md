---
title: "Managing a Music Library"
date: 2011-03-04
slug: "managing-a-music-library"
aliases:
  - /post/3642412054
---

Recently, I've been thinking of the best way to organise my music library.

To summarise, my library is:

- All stored digitally, though in a variety of formats
- Eclectic in taste.
- Contains many tracks which I don't want to hear when on shuffle (e.g. Sound effects, Radio Dramas, Rap).
- From a wide range of sources (CD rips, downloads, own recordings, attempts at my own remixes, sample tracks that come free with media players, stuff that seems to just appear from nowhere…)
- Varying degrees of quality metadata. (From accurate metadata to patchy metadata to just plain incorrect metadata)

## The Semantic Web

My first thought was the semantic web. It's got loads of music metadata. I've read about the BBC aligning their music site to MusicBrainz which sounded great. I came across a site where someone had [linked their music collection to musicbrainz using semantic web tech.](http://www.lespetitescases.net/semweblabs/linkedmymusic/) The instructions for how they'd gone about it seemed simple enough:

> 1. extraction of ID3 metadata from my MP3 collection, transformed into RDF according to [Music Ontology](http://musicontology.com/);
> 2. automated alignment of these data with data from [Music Brainz made available on the Linked Data](http://dbtune.org/musicbrainz/) on [Dbtune.org](http://dbtune.org/) by [Yves Raimond](http://moustaki.org/);
> 3. data linked with Music Brainz, extracted from [Dbpedia](http://dbpedia.org) and [BBC Music](http://www.bbc.co.uk/music).

However, this approach wouldn't work for my collection. It made the assumptions that the collection a) has correct metadata, b) is organised by album, and c) only contains stuff that's on MusicBrainz. (I don't think MusicBrainz has an entry for [my teenage-self's version of Mad World](http://lukeblaney.co.uk/media/Mad%20World.mp3)).

Also, I'm not entirely convinced by MusicBrainz's album-centric approach to organizing tracks. In my mind, Queen's original Bohemian Rhapsody is a single track which features in many different albums. However, according to MusicBrainz, each time it appears on a different album, it is a different track. For me, a track's albums are just an extra bit of metadata, not a defining characteristic.

## Unique Identifiers

Originally, I wanted to use some existing set of ids to identify my tracks (eg MusicBrainz, LastFM or something similar). But the more I thought about it, the more I realised that no self-respecting service is going to include an ID for my attempt to remix a recording of a university lecture on software development techniques. Therefore, I'd need to come up with my own uids (which I could later map to MusicBrainz, LastFM etc).

The simple solution to this is to use each track's file path which is guaranteed to be unique. However, this would make it very difficult to rearrange my music collection without losing metadata.

Then I thought of storing a unique id in each track's ID3 tag. However, the more I looked into it the more unappealing it seemed. There are numerous versions of ID3 and other music formats have their own tags each of which would need to be supported. Also, I don't really want to overwrite existing metadata and as far as I can tell, ID3v1 doesn't support custom fields.

## Acoustic Fingerprinting

Recently I've been reading about [Acoustic Fingerprinting](http://en.wikipedia.org/wiki/Acoustic_fingerprinting). Basically the idea is to turn an audio track into a string which will be the same if two tracks sound identical, otherwise it'll be different. This appeals to me, as it doesn't rely on any metadata which may well be inaccurate and should remain constant if I move/rename the files themselves.

There seems to be many algorithms for doing this and I'm not yet sure which one to use. I don't want to use a proprietary one hosted elsewhere, as then my whole music collection would be reliant on a third party. (or is that second party?) I have come across a few open-source solutions, but most of these seem to be dormant projects so may not work too well.

I guess the only way is to experiment with a few different ones to find out which works best. If anyone has any recommendations, please let me know.
