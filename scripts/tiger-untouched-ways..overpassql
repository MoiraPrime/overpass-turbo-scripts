/* This code will find ways that haven't been touched since the TIGER import, and ways that have highway=residential but no name (a regular issue
    with roads imported through TIGER, these are usually driveways or link roads)
    Be careful with how large of an area you search for. An entire county or a couple counties are fine, but an entire state may bee too much for
    your browser to handle */
    
[out:json][timeout:25];
// fetch areas to search in. Feel free to replace or add with your own, but be aware the size of the data may be quite large.
(
	{{geocodeArea:Stone County, Mississippi}};
	{{geocodeArea:Harrison County, Mississippi}};
 	{{geocodeArea:Hancock County, Mississippi}};
 	{{geocodeArea:Pearl River County, Mississippi}};
 	{{geocodeArea:Jackson County, Mississippi}};
 	{{geocodeArea:George County, Mississippi}};
)->.searchArea;
// gather results
(
  // Ways last edited by DaveHansenTiger, account that was responsible for the TIGER import
  way["highway"="residential"](user:"DaveHansenTiger")(area.searchArea);
  // Ways last edited by bot-mode, account that did TIGER expansion
  way["highway"="residential"](user:"bot-mode")(area.searchArea);
  // ways with highway=residential but no name
  way["highway"="residential"]["name"!~".*"](area.searchArea);
);
// print results
out geom;