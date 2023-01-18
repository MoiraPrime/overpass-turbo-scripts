/* Fair warning, this is a pretty hefty query. You may have to tweak the timeout.
    This query will search for all highways last touched by a user. Feel free to 
    change the areas to the proper scope you need to, and the name to the account
    you want to look for */

[out:json][timeout:100];
// fetch areas to search in
(
	{{geocodeArea:Florida, United States}};
 	{{geocodeArea:Georgia, United States}};
 	{{geocodeArea:Alabama, United States}};
 	{{geocodeArea:Mississippi, United States}};
 	{{geocodeArea:Louisiana, United States}};
 	{{geocodeArea:Arkansas, United States}};
 	{{geocodeArea:Tennessee, United States}};
 	{{geocodeArea:North Carolina, United States}};
 	{{geocodeArea:South Carolina, United States}};
)->.searchArea;
// gather results
(
  way["highway"](user:"NE2")(area.searchArea);
);
// print results
out body;
>;
out skel qt;