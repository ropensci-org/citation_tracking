## rOpenSci Citation Tracking

Tracking citations of rOpenSci packages. 

Right now this is done through Google Scholar alerts. The packages tracked are in the file [packages.txt][], and the separate alerts are in [alerts.txt][] (separated in sets of 5 or so to make it easier to sort out which packages may have been cited in a paper), each with the following rules:

- since 2017
- excluding patents
- excluding citations

I get email notifications - disregard false alarms - for real hits, collect the pdf if there is one, and put an entry in our list of citations. Eventually citations end up in our API at <https://roapi.org/>
