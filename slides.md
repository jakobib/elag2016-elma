---
title: Unified access to entities with ELMA and JSKOS
author: Jakob Voß
date: 2016-06-08
place: ELAG "EXIT", Copenhagen
institute: Verbundzentrale des GBV (VZG)
...


* problem

    * Find URIs of entities
      (e.g. Copenhagen)

    * Get labels (and some details) of known entities 

* solution

    * **Entity Lookup Microservice API (ELMA)**
      <https://gbv.github.io/elma/>
    * **JSKOS data format for Knowledge Organization Systems**
      <https://gbv.github.io/jskos/>

# ELMA entity search

* Find URIs of entities
    * <http://example.org/?search=copenhagen>
    * list of labels and URIs for typeahead
    * in OpenSearch Suggestions format

# ELMA entity lookup

* Get labels (and some details) of known entities
    * <http://example.org/?uri=http://www.wikidata.org/entity/Q1748>

```json
[
  {
     "uri": "http://www.wikidata.org/entity/Q1748",
     "prefLabel": {
       "da": "København",
       "en": "Copenhagen",
       "fi": "Kööpenhamina"
     }, 
     ...optional details...
  }
]
```

# JSKOS format for optional details

* SKOS (`prefLabel`, `broader`, `narrower`...)
* common properties from other ontologies\
  (`url`, `next`, `previous`, `startDate`, `endDate`...)
* JSON-LD + optional closed world statements\
  (*has-no-narrower*, *has-some-narrower*)

# Why a specification at all?

* It's so common that everyone implements *in his own ways*
* Easy to build wrappers (at least for entity lookup)
* <https://github.com/gbv/jskos-php-examples>\
  (VIAF, Wikidata, ORCID, GND, Geonames...) 


